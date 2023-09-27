//includes
#include <header/textures.fxh>

//shit
float4x4 mmd_world : WORLD;
float4x4 mmd_view  : VIEW;
float4x4 mmd_wvp   : WORLDVIEWPROJECTION;
float4x4 mmd_p : PROJECTION;
float4x4 mmd_vp : VIEWPROJECTION;

bool use_subtexture; // for scaling the uv

//useful for scaling edgelines based on camera distance
float4x4 model_world : CONTROLOBJECT < string name = "(self)"; >;
float3 mmd_cameraPosition : POSITION < string Object = "Camera"; >;

//mmd RGB lighting intake
float4 egColor;

//mmd light source
float3 light_d : DIRECTION < string Object = "Light"; >;
