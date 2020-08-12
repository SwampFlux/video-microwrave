#ifdef GL_ES
  precision mediump float;
#endif

uniform float u_time;
uniform vec2 u_resolution;
uniform float u_analog0;
uniform float u_analog1;
uniform float u_adc2;
uniform float u_adc2_delta;
uniform float u_analog3;
uniform float u_adc4;
uniform float u_analog5;
uniform float u_adc6;
uniform float u_analog7;
#define PI      3.14
#define TAU     6.28318530717958647692
#define GAMMA   2.2

vec3 toLinear(in vec3 col) {
  // simulates a monitor, converting a color value to light
  return pow(col, vec3(GAMMA));
}

vec3 toGamma(in vec3 light){
  // convert light back into color
  return pow(light, vec3(1.0/(GAMMA)));
}

vec4 Noise (in ivec2 n){
	return vec4(
    vec3(fract(sin(dot(vec2(n.xy), vec2(12.9898, 78.233)))* 43758.5453)),
    1.0
  );
}

void main() {
  vec3 ray;
  ray.xy = 2.0 *
    (gl_FragCoord.xy - u_resolution.xy * 0.5) /
    u_resolution.x;
  ray.z = 10.0 - 10.0 * u_adc6;

  float offset = u_adc2 - 0.5;
  float speed2 = (cos(offset) + 1.0) * 6.0;
  float speed = speed2 + 1.0;
  offset += sin(offset) * 0.96;
  offset += 2.0;

  vec3 col = vec3(0.);

  vec3 stp = ray/max( abs(ray.x), abs(ray.y) );

  vec3 pos = 2. * stp + .5;

  int iterations = int((1.0 - u_adc6) * 40.0);

  for(int i=0; i<10; i++) {
    if(i < iterations){
		float z = Noise(ivec2(pos.xy)).x + u_adc2_delta * 4.0;
    z = fract(z);
    float d = 50.23 * z - pos.z;
    float w = pow(max(0.,1.-8.*length(fract(pos.xy)-0.5)), 2.0);
    vec3 c = max(
        vec3(0), 
        vec3(1.-abs(d+speed2 * .5) / speed, 
        1.-abs(d) / speed,
        1.-abs(d - speed2 * .5) / speed)
    );
    col += 1.5 * (1.-z) * c * w;
    pos += stp;
    }
  }

  gl_FragColor = vec4(toGamma(col),1.);
}

