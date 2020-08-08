// 11

#define PI 3.14

uniform vec2 u_resolution;

float circleSDF(vec2 st) {
  return length(st - .5) * 2.;
}

float rectSDF(vec2 st, vec2 s) {
  st = st* 2.-1.;
  return max( abs(st.x / s.x),
              abs(st.y / s.y) );
}

float crossSDF(vec2 st, float s) {
  vec2 size = vec2(.25, s);
  return min( rectSDF(st, size.xy),
              rectSDF(st, size.yx));
}

float fill(float x, float size) {
  return 1.0 - step(size, x);
}

float stroke(float x, float s, float w) {
  float d = step(s,x+w*.5) -
            step(s,x-w*.5);
  return clamp(d, 0., 1.);
}

void main() {
  vec2 st = gl_FragCoord.xy / u_resolution.xy;

  vec3 color = vec3(0.1);

  //float sdf = .5 + (st.x - st.y) * .5;
  //float sdf_inv = (st.x+st.y) * .5;

  //float offset = cos(st.y * PI) * 0.15;

  //color += fill(circleSDF(st), .65);
  //vec2 offset = vec2(.1,.05);
  //color -= fill(circleSDF(st-offset),.5);
  float rect = rectSDF(st, vec2(1.));
  color += fill(rect, .5);
  float cross = crossSDF(st, 1.);
  color *= step(.5, fract(cross * 4.));
  color *= step(1., cross);
  color += fill(cross, .5);
  color += stroke(rect, .65, .05);
  color += stroke(rect, .75, .025);

  gl_FragColor = vec4(color,1.);
}

