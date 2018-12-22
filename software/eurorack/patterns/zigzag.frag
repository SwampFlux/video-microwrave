#ifdef GL_ES
precision mediump float;
#endif

uniform float u_1;
uniform float u_2;

vec2 mirrorTile(vec2 _st, float _zoom){
  
}

void main(){
  vec3 color = vec3(u_1, 1.0, 0.0);

  gl_FragColor = vec4(color, 1.0);
}
