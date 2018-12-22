
#ifdef GL_ES
precision mediump float;
#endif

#define TAU 6.2

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;
uniform float u_delta;
//uniform float u_analog0;
uniform float u_analog1;
uniform float u_analog2;
uniform float u_analog3;
uniform float u_analog4;
uniform float u_analog5;
uniform float u_analog6;
uniform float u_analog7;
uniform sampler2D u_backbuffer;

vec3 palette( float t ){
  vec3 a = vec3(1.037,0.121,0.071);
  vec3 b = vec3(1.240,1.638,0.243);
  vec3 c = vec3(0.088,0.091,0.095);
  vec3 d = vec3(0.600,0.117,0.532);
  return a + b * cos(TAU * (c * t + d));
}

void main() {
    vec2 st = gl_FragCoord.xy / u_resolution.xy;
    vec2 pixel = u_analog1 / u_resolution;
    vec2 blob = st - vec2(u_analog3, u_analog4);
    float mask = step(u_analog2, 0.504 + pixel.x*sin(u_time*3.368) - dot(blob, blob));

    vec2 wobble = vec2(u_analog6, u_analog7) * pixel * 2.0 - pixel;
    vec4 colorA = texture2D(u_backbuffer, st + pixel / 2.0 + wobble);
    float colorTime = u_analog5 * 40.0;
    vec4 colorB = vec4( palette(colorTime) * 3.0, 1);

    gl_FragColor = mix(colorA, colorB, mask);
}
