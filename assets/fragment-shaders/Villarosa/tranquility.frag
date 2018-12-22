#ifdef GL_ES
precision mediump float;
#endif

#define PI              3.141592
#define TAU             2.0 * PI
#define ITERATIONS      3

uniform vec2 u_resolution;
//uniform float u_time;
uniform float u_analog0;
uniform float u_analog1;
uniform float u_analog2;
uniform float u_analog3;
//uniform float u_analog4;
//uniform float u_analog5;
//uniform float u_analog6;
//uniform float u_analog7;

vec3 palette(in float t, in vec3 a, in vec3 b, in vec3 c, in vec3 d) {
  return a + b * cos(TAU * (c * t + d));
}

mat2 rot (float a) {
  float c = cos(a);
  float s = sin(a);
  return mat2(c,s,
             -s,c);
}

vec2 moda (vec2 p, float per) {
  float a = atan(p.y, p.x);
  float l = length(p);
  a = mod(a - per / 2.0, per) - per / 2.0;
  return vec2(cos(a), sin(a)) * l;
}

float SDF(in vec3 p) {
  p.xz *= rot(u_analog2 * 187.8);
  p.yz *= rot(u_analog1 * 478.2);
  p.xz = moda(p.xz, TAU /  12.0);
  
  return p.x;
}

void main() {
  vec2 uv = gl_FragCoord.xy / u_resolution;
  vec3 p = vec3(0.01, 3, -8);
  vec3 dir = normalize( vec3(uv * 2.0, 1) );
  float shad = 1.0;
  for(int i=0; i<ITERATIONS; i++) {
    float d = SDF(p);
    if( d < 0.01) {
      shad = float(i) / 60.0;
      break;
    }
    p += d * dir * 0.5;
  }

  vec3 color = palette(
    p.z,
    vec3(0.5),
    vec3(0.5),
    vec3(0.2),
    vec3(0, 0.3, 0.5)
  );
  gl_FragColor = vec4(color, 1);
}
