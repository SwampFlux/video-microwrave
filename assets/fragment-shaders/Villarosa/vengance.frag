#ifdef GL_ES
precision mediump float;
#endif

//#define ITERATIONS 5

//uniform sampler2D u_backbuffer;
uniform vec2 u_resolution;
//uniform vec2 u_mouse;
uniform float u_time;

uniform float u_analog0;
//uniform float u_analog1;
//uniform float u_analog2;

//float diffU = 0.25;
//float diffV = 0.05;
//float f = 0.1;
//float k = 0.063;

/*
float random (in float x) {
    return fract(sin(x)*43758.5453123);
}

float random (vec2 st) {
    return fract(sin(dot(st.xy, vec2(12.9898,78.233)))*43758.5453123);
}

void main(void) {
    // use screenspace
    vec2 st   = gl_FragCoord.st/u_resolution;
    vec2 pixel = 1./u_resolution;

    // blob around mouse
    vec2 xy = vec2(u_analog0, u_mouse.x);
    vec2 blob = st - xy * pixel * u_analog1;
    float mouseMask = step(1.0-pixel.x,1.0-dot(blob,blob));

    // add mouse to backbuffer
    vec4 colorA = vec4(0.3,0.5,0.1,1.0);
    vec4 colorB = vec4(max(texture2D(u_backbuffer, st + pixel/2.0).rgb - 0.01,0.0), 1.0);
    vec4 fragment = mix(colorB,colorA,mouseMask);

    gl_FragColor = vec4(colorA);
}
*/

// Code by Flopine
// Thanks to wsmind and leon for teaching me :)


#define PI 3.141592
#define TAU 2.*PI

mat2 rot (float a)
{
    float c = cos(a);
    float s = sin(a);
    return mat2(c,s,-s,c);
}


vec2 moda (vec2 p, float per)
{
    float a = atan(p.y,p.x);
    float l = length(p);
    a = mod(a-per/2.,per)-per/2.;
    return vec2 (cos(a),sin(a))*l;
}

// iq's palette http://www.iquilezles.org/www/articles/palettes/palettes.htm
vec3 palette( in float t, in vec3 a, in vec3 b, in vec3 c, in vec3 d )
{
    return a + b*cos(TAU*(c*t+d));
}


float sphe (vec3 p, float r)
{
    return length(p)-r;
}

float box (vec3 p, vec3 c)
{
    return length(max(abs(p)-c,0.));
}

float prim (vec3 p)
{
    float b = box(p, vec3(1.));
    float s = sphe(p,1.3);
    return max(-s, b);
}

float row (vec3 p, float per)
{
  p.y = mod(p.y-per/2., per)-per/2.;
    return prim(p);
}

float squid (vec3 p)
{
    p.xz *= rot(PI/2.);
    p.yz = moda(p.yz, TAU/5.);
    p.z += sin(p.y+u_time*2.);
    return row(p,1.5);
}

float SDF(vec3 p)
{
    p.xz *= rot(u_time*.8);
    p.yz *= rot(u_time*0.2);
    p.xz = moda(p.xz, TAU/12.);
    return squid(p);
}



void main(void)
{
  // Normalized pixel coordinates (from 0 to 1)
  vec2 uv = 2.*(gl_FragCoord.st/u_resolution.xy)-1.;
  uv.x *= u_resolution.x/u_resolution.y;

  vec3 p = vec3 (0.01,3.,-8.);
  vec3 dir = normalize(vec3(uv*2.,1.));

  float shad = 1.;

    for (int i=0;i<60;i++)
    {
        float d = SDF(p);
        if (d<0.001)
        {
            shad = float(i)/60.;
            break;
        }
        p += d*dir*0.5;
    }
    
    vec3 pal = palette(p.z,
                vec3(0.5),
                      vec3(0.5),
                      vec3(.2),
                      vec3(0.,0.3,0.5)
                      );
    // Time varying pixel color
    vec3 col = vec3(1.-shad)*pal;

    // Output to screen
    gl_FragColor = vec4(pow(col, vec3(0.45)),1.0);
    //gl_FragColor = vec4(1,0,0,1);
}
