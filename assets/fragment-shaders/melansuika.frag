// based on the photo Jess took in salt lake city

#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform float u_time;

uniform float cv1;
uniform float cvTime3;
uniform float cvTime5;
uniform float cv7;

//float sizeLoop = 0.5 * sin(cv1) + 0.5;

float edge = (2.0 * cv1 + 10.0 ) / u_resolution.x;

float circle (in vec2 _st, in float _radius) {
  vec2 dist = _st - vec2(0.5);
  return 1.0 - smoothstep(_radius - edge,
                          _radius + edge,
                          dot(dist, dist) * 4.0);
}

float stroke(float x, float s, float w){
  float d = smoothstep(s-edge, s+edge, x+w * 0.5) -
            smoothstep(s-edge, s+edge, x-w * 0.5);
  return clamp(d, 0.0, 1.0);
}

void main() {
  vec2 st = gl_FragCoord.xy / u_resolution;

//  vec3 color = vec3(0.);
  st += vec2(fract(cvTime3 * 10.), fract(cvTime5 * 10.));
  st *= cv1 * 200.0 + 2.;
  st = fract(st); // wrap around

//  color += stroke(t.x, cv3, cv5);
  vec3 color = vec3( circle(st, cv7) );

/*
  float breaker = cv3;
  vec2 gridSize = vec2(1.5 + 0.01 * cvTime1);

  vec3 color = vec3(0.0);
  float x = smoothstep(breaker - 0.01, breaker + 0.01,
      mod(screenSpace.x * gridSize.x, 1.0));
  float y = smoothstep(breaker - 0.01, breaker + 0.01,
      mod(screenSpace.y * gridSize.y, 1.0));
  color += x * y;
*/

  gl_FragColor = vec4(color,1.0);
}

