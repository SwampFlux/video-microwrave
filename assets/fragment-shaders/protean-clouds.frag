/* rewrite of prootean clouds by @stormoid
   https://shadertoy.com/view/3l23Rh
   License: Creative Commons NonCommercial ShareAlike 3.0
*/

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

float getsat(vec3 c)
{
    float mi = min(min(c.x, c.y), c.z);
    float ma = max(max(c.x, c.y), c.z);
    return (ma - mi)/(ma+ 1e-7);
}

vec3 iLerp(in vec3 a, in vec3 b, in float x)
{
    vec3 ic = mix(a, b, x) + vec3(1e-6,0.,0.);
    float sd = abs(getsat(ic) - mix(getsat(a), getsat(b), x));
    vec3 dir = normalize(vec3(2.*ic.x - ic.y - ic.z, 2.*ic.y - ic.x - ic.z, 2.*ic.z - ic.y - ic.x));
    float lgt = dot(vec3(1.0), ic);
    float ff = dot(dir, normalize(ic));
    ic += 1.5*dir*sd*ff*lgt;
    return clamp(ic,0.,1.);
}

void main() {
  vec2 space_pos = gl_FragCoord.xy / u_resolution.xy; //q
  vec2 space_posNeg = (gl_FragCoord.xy - 0.5 * u_resolution.xy) / u_resolution.y; //p
  vec2 mouse_posNeg = (u_mouse.y - 0.5 * u_resolution.xy) / u_resolution.y; //bsMo
  
  vec3 color = vec3(space_pos, 0.25); //temporary

  color = iLerp(color.bgr, color.rgb, clamp(1.,.05,1.));

  // grading
  color = pow(color, vec3(.55,0.65,0.6)) * vec3(1.,.97,.9);

  // vignette
  color *= pow(16.0 * space_pos.x * space_pos.y * (1.0 - space_pos.x) * (1.0 - space_pos.y), 0.12) * 0.7 + 0.3;

  gl_FragColor = vec4(color,1.0);
}

