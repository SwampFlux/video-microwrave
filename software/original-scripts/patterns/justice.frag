#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform float u_time;
uniform float u_1;

void main() {
  vec3 color = vec3(0.);
  vec2 st = gl_FragCoord.xy / u_resolution;
//  float boundary = sin(u_1/1000000.0) * .5 + .5;
//  color+= step(boundary, st.x);
  color += step(u_1, st.x);
  gl_FragColor = vec4(color, 1.);
}
