#ifdef GL_ES
  precision mediump float;
#endif

uniform vec2 u_resolution;
//rgb
uniform float u_analog3;
uniform float u_analog4;
uniform float u_analog2;

void main() {
  vec2 st = gl_FragCoord.xy / u_resolution.xy;
  vec3 color = vec3(u_analog3, u_analog4, u_analog2);
  gl_FragColor = vec4(color,1.);
}

