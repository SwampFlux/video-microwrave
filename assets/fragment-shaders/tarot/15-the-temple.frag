// 15

#define PI 3.14

uniform vec2 u_resolution;

float flip(float v, float pct) {
  return mix(v, 1.-v, pct);
}

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

//14
float vesicaSDF(vec2 st, float w) {
  vec2 offset = vec2(w * .5, 0.);
  return max(circleSDF(st-offset),
             circleSDF(st+offset));
}

//15
#define triSlope (PI / 4.0)
float triSDF(vec2 st) {
  st = (st * 2. - 1.) * 2.;
  return max(abs(st.x) * triSlope + st.y * 0.5, -st.y * 0.5);
}

void main() {
  vec2 st = gl_FragCoord.xy / u_resolution.xy;

  vec3 color = vec3(0.1);

  //float sdf = .5 + (st.x - st.y) * .5;
  //float sdf_inv = (st.x+st.y) * .5;

  //float offset = cos(st.y * PI) * 0.15;

  //color += fill(circleSDF(st), .65);
  vec2 offset = vec2(.1,.0);
  //color -= fill(circleSDF(st-offset),.5);
  //float left = circleSDF(st+offset);
  //float right= circleSDF(st-offset);
  //float rect = rectSDF(st, vec2(.5,1.));
  //float diag = (st.x+st.y) * .5;
  st.y = 1. - st.y;
  //color += flip(
  //  fill(sdf,.5),
  //  step(diag,.5));
  vec2 ts = vec2(st.x,.82-st.y);
  color += fill(triSDF(st),.7);
  color -= fill(triSDF(ts),.36);
  gl_FragColor = vec4(color,1.);
}

