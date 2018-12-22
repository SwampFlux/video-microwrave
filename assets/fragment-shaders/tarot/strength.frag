#ifdef GL_ES
  precision mediump float;
#endif

uniform vec2 u_resolution;
//uniform float u_analog1;
//uniform float u_analog2;
//uniform float u_analog3;
//uniform float u_analog4;
//uniform float u_analog5;
//rgb
//uniform float u_analog6;
//uniform float u_analog7;
#define PI 3.14

void main() {
  vec2 st = gl_FragCoord.xy / u_resolution.xy;
  vec3 color = vec3(u_analog6, u_analog7, 0.2);
    color += step(u_analog2 + cos(st.y * PI * u_analog4 * u_analog1 * 100.0 + u_analog5 * 20.) * .25, st.x);
  gl_FragColor = vec4(color,1.);
}

