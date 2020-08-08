#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform float u_time;
uniform float u_analog0;
uniform float u_analog1;
uniform float u_analog2;
uniform float u_analog3;
//uniform float u_analog4;
//uniform float u_analog5;
//uniform float u_analog6;
//uniform float u_analog7;

#define PI              3.141592
#define TAU             2.0 * PI
#define MAX_ITER        2

// palettes from https://www.shadertoy.com/view/XtGGzG
vec3 magma_quintic( float x ) {
  x = clamp( x, 0.0, 1.0);
  vec4 x1 = vec4( 1.0, x, x * x, x * x * x ); // 1 x x2 x3
  vec4 x2 = x1 * x1.w * x; // x4 x5 x6 x7
  return vec3(
    dot( x1.xyzw, vec4( -0.023226960, +1.087154378, -0.109964741, +6.333665763 ) ) + dot( x2.xy, vec2( -11.640596589, +5.337625354 ) ),
    dot( x1.xyzw, vec4( +0.010680993, +0.176613780, +1.638227448, -6.743522237 ) ) + dot( x2.xy, vec2( +11.426396979, -5.523236379 ) ),
    dot( x1.xyzw, vec4( -0.008260782, +2.244286052, +3.005587601, -24.279769818 ) ) + dot( x2.xy, vec2( +32.484310068, -12.688259703 ) ) );
}

vec3 palette( float t ){
  vec3 a = vec3(-0.023, 1.087,-0.109);
  vec3 b = vec3( 0.011, 0.177, 1.638);
  vec3 c = vec3( 0.008, 2.244, 3.005);
  vec3 d = vec3( 6.333,-7.642,-2.479);
  return a + b * cos(TAU * (c * t + d));
}

vec3 plasma_quintic( float x ) {
  x = clamp( x, 0.0, 1.0);
  vec4 x1 = vec4( 1.0, x, x * x, x * x * x ); // 1 x x2 x3
  vec4 x2 = x1 * x1.w * x; // x4 x5 x6 x7
  return vec3(
    dot( x1.xyzw, vec4( +0.063861086, +1.992659096, -1.023901152, -0.490832805 ) ) + dot( x2.xy, vec2( +1.308442123, -0.914547012 ) ),
    dot( x1.xyzw, vec4( +0.049718590, -0.791144343, +2.892305078, +0.811726816 ) ) + dot( x2.xy, vec2( -4.686502417, +2.717794514 ) ),
    dot( x1.xyzw, vec4( +0.513275779, +1.580255060, -5.164414457, +4.559573646 ) ) + dot( x2.xy, vec2( -1.916810682, +0.570638854 ) ) );
}

mat3 rotationMatrix(vec3 axis, float angle) {
    float s = sin(angle);
    float c = cos(angle);
    float oc = 1.0 - c;

    return mat3(oc * axis.x * axis.x + c,           oc * axis.x * axis.y - axis.z * s,  oc * axis.z * axis.x + axis.y * s,
                oc * axis.x * axis.y + axis.z * s,  oc * axis.y * axis.y + c,           oc * axis.y * axis.z - axis.x * s,
                oc * axis.z * axis.x - axis.y * s,  oc * axis.y * axis.z + axis.x * s,  oc * axis.z * axis.z + c);
}

float udBox( vec3 p, vec3 b ) {
  return length(max(abs(p)-b,0.0));
}

float sdBox( vec3 p, vec3 b ) {
  vec3 d = abs(p) - b;
  return min(max(d.x,max(d.y,d.z)),0.0) + length(max(d,0.0));
}

mat3 ir;

float DE(vec3 p) {
  vec3 p_o = p;
  float d = 1e10;
  float s = 1.;
  vec2 cvxy = vec2(u_analog0, u_analog1);
  vec3 t = vec3(0.1 + 0.2 * cvxy/u_resolution.xy, 0.1 + 0.1 * sin(u_time/200.));
  vec3 dim = vec3(0.01, 0.9, 0.02);
  for(int i = 0; i < 10; i++) {
    p -= t*s;
    p = (ir * (p-t / s));
    d = min(d, sdBox(p * s, dim / s) / s) ;
    p = abs(p);
    float circleSize = 0.03 * (sin(u_time + length(p_o) * 5.) ) + 0.01;
    d = min(d, length(p - t) - circleSize / s);
    s *= s;
  }
  return d;
}

void main() {
  vec2 uv = gl_FragCoord.xy / u_resolution.xy;
  uv -= 0.5;
  float aspect = u_resolution.x / u_resolution.y;
  uv.x *= aspect;

  vec3 cam = vec3(0, 0, -3);
  vec3 ray = normalize( vec3(uv, 1.0) );

  vec3 color = vec3(0.1, 0.1, 0.1);
  vec3 p;
  float depth = 0.1;
  bool hit = false;
  float iter = 0.0;

  float fog = 0.0;
  vec3 sun = normalize( vec3(1,1,1) );

  ir = rotationMatrix(normalize(vec3(sin(u_time/50.0),sin(u_time/100.0),sin(u_time/150.0))), 1.5 + u_time/30.0);

  mat3 mv = rotationMatrix(vec3(0,1,0), u_time/10.0);

  cam = mv * cam;
  ray = mv * ray;

  float t_min = 0.4;
  float t_max = 5.0;

  float omega = 2.0;
  float stepLength = 0.0;
  float t = t_min;
  float candidate_error = 100.0;
  float candidate_t = t_min;
  float previousRadius = 0.0;

  float pixelRadius = 0.001;

  // naive raymarching on right half of the screen for comparison
/*
  if (uv.x > 0.0)
    omega = 1.;
*/

  for(int i=0; i < MAX_ITER; i++) {
    p = t * ray + cam;
    float signedRadius = DE(p);
    float radius = abs(signedRadius);

    bool sorFail = omega > 1.0 && (radius + previousRadius) < stepLength;

    if (sorFail) {
      stepLength -= omega * stepLength;
      omega = 1.0;
    } else {
      stepLength = signedRadius * omega;
    }
    previousRadius = radius;

    float error = radius / t;
    if (!sorFail && error < candidate_error) {
      candidate_t = t;
      candidate_error = error;
    }

    t += stepLength;
    iter ++;

    if (!sorFail && error < pixelRadius || t > t_max) {
      break;
      hit = true;
    }
  }

  float fakeAO = 1.0 - iter / float(MAX_ITER);

  color = vec3(palette(fakeAO));

  vec2 uv_n = gl_FragCoord.xy / u_resolution.xy;

  // display color spectrum
/*  
  if (uv_n.y < 0.05) {
    color = palette(uv_n.x);
  }
  */

  gl_FragColor = vec4(color ,1.0);
}




