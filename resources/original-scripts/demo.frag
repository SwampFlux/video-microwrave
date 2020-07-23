#ifdef GL_ES
precision mediump float;
#endif

uniform float u_1;
uniform float u_2;

void main(void) {
  vec2 green = vec2(0.0,1.0);
  vec2 red = vec2(1.0,0.0);
  gl_FragColor = vec4(mix(red,green,u_1), u_2, 1.0);
}
