#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform float u_time;
uniform float cv1_raw;
uniform float cv2_raw;
uniform float cv3_raw;
uniform float cv4_raw;
uniform float cv5_raw;
uniform float cv6_raw;
uniform float cv7_raw;
uniform float cv8_raw;

void main() {
  vec2 st = gl_FragCoord.xy / u_resolution;

  int col = int(st.x * 9.0);

  float value_uni = mod(u_time / 10.0, 1.0);

  if(col == 0) { value = cv1; }
  if(col == 1) { value = cv2; }
  if(col == 2) { value = cv3; }
  if(col == 3) { value = cv4; }
  if(col == 4) { value = cv5; }
  if(col == 5) { value = cv6; }
  if(col == 6) { value = cv7; }
  if(col == 7) { value = cv8; }

  float color = step(0.5 - value, 0.5 - st.y);
  gl_FragColor = vec4(color, color, color, 1.);
}
