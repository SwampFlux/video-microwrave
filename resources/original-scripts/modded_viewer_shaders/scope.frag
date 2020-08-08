#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform float u_time;
uniform float u_analog0;
uniform float u_analog1;

void main() {
  vec2 st = gl_FragCoord.xy / u_resolution;
  vec3 color = vec3(0.);
  float timer = mod(u_time / 10.0, 1.0);
  color += vec3(step(1.0 - u_analog0, 1.0 - st.x), step(0.5 - u_analog1, 0.5 - st.y), timer);
  gl_FragColor = vec4(color, 1.);
}
