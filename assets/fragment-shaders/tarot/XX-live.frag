uniform vec2 u_resolution;

#define PI 3.14

float stroke(float x, float s, float w) {
  float d = step(s, x+w * .5) -
            step(s, x-w * .5);
  return clamp(d, 0., 1.);
}

void main() {
  vec2 st = gl_FragCoord.xy / u_resolution.xy;

  vec3 color = stroke(0.5, 0.1, 0.1);
//  color += step(0.6, (st.x + st.y) * st.x);

  gl_FragColor = vec4(color,1.);
}

