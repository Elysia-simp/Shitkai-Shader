#include<Shared/Colors.hlsl>


float face_shading(in float2 uv)
{
    light_d = mul(light_d, (float3x3)light_bone);
    // sample textures for both directions
    float shadow_right = tex2Dlod(faceShadowSampler, float4(uv, 0.0f, 0.0f));
    float shadow_left  = tex2Dlod(faceShadowSampler, float4(1.0f - uv.x, uv.y, 0.0f, 0.0f));


    // get bone forward and right rotations 
    float3 head_right  = head_bone._11_12_13;
    float3 head_foward = head_bone._31_32_33;

    

    //=============================================
    // calculate dot products
    // only use the x and z axis since y is useless and messes things up
    float rdotl = dot((head_right.xz),  normalize(-light_d.xz));
    float fdotl = dot((head_foward.xz),          (-light_d.xz));

    // calculate light angle
    float angle = ( acos(rdotl) / 3.14159f ) * 2.0f;
    // initialize shadow
    float shadow = 1.0f; // if u dont do this, the if statement breaks shadow


    if(rdotl > 0.0f )
    {
        angle = 1.0f - angle;
        shadow = shadow_right;
    }  
    else
    {
        angle = angle - 1.0f;
        shadow = shadow_left;
    }


    // float shadow_step = step(angle, shadow) ;
    float shadow_step = smoothstep(angle - (0.001f), angle + (0.001f), shadow);
    float facing_step = step(fdotl, 0.0f);

    shadow_step = shadow_step * facing_step;
    //=============================================


    return shadow_step;
}


float Shitkai_Shadow(float ndotl, float Z){

    float u_xlat16_26 = Z * 2.0 + -1.0;
    ndotl = ndotl * 0.5 + 0.5;
    ndotl = u_xlat16_26 + ndotl;

    ndotl = saturate(ndotl);

    // bool u_xlatb17 = ndotl>=_SekaiShadowThreshold;

    ndotl = step(ndotl, _SekaiShadowThreshold);

    return ndotl;
}


float3 Shitkai_Coloring(float3 u_xlat1, float u_xlati9, float htex, float3 diffuse){
    float3 DefaultSkinColor = skinColorTable[u_xlati9];
    #ifdef _DefaultSkinColor
    DefaultSkinColor = _DefaultSkinColor;
    #endif

    float3 Shadow1SkinColor = skinShadow1Table[u_xlati9];
    #ifdef Shadow1SkinColor
    Shadow1SkinColor = _Shadow1SkinColor;
    #endif

    float3 Shadow2SkinColor = skinShadow2Table[u_xlati9];
    #ifdef Shadow1SkinColor
    Shadow2SkinColor = _Shadow1SkinColor;
    #endif

    float3 u_xlat16_6;
    float3 u_xlat4 = _SekaiShadowColor.xyz * Shadow1SkinColor.xyz;
    float3 u_xlat5 = _SekaiShadowColor.xyz * Shadow1SkinColor.xyz;
    float u_xlat16_26 = u_xlat1.x + u_xlat1.x;
    u_xlat16_6.x = u_xlat1.x * 2.0 + -1.0;

    u_xlat16_6.x = clamp(u_xlat16_6.x, 0.0, 1.0);

    float3 shadow4 = (-Shadow1SkinColor.xyz) * _SekaiShadowColor.xyz + DefaultSkinColor.xyz;
    u_xlat16_6.xyz = u_xlat16_6.xxx * shadow4.xyz + u_xlat4.xyz;
    u_xlat16_26 = u_xlat16_26;

    u_xlat16_26 = clamp(u_xlat16_26, 0.0, 1.0);

    u_xlat16_6.xyz = (-Shadow1SkinColor.xyz) * _SekaiShadowColor.xyz + u_xlat16_6.xyz;
    u_xlat16_6.xyz = float3(u_xlat16_26.xxx) * u_xlat16_6.xyz + u_xlat5.xyz;

    bool u_xlatb1 = htex.x>=0.5;

    u_xlat16_26 = (u_xlatb1) ? 1.0 : 0.0;
    u_xlat16_6.xyz = (-diffuse.xyz) + u_xlat16_6.xyz;
    u_xlat16_6.xyz = float3(u_xlat16_26.xxx) * u_xlat16_6.xyz + diffuse.xyz;
    u_xlat16_6 = lerp(u_xlat1, u_xlat16_6, u_xlatb1);

    return u_xlat16_6;
}

