#define RimLight_Bone "Rim_Light.pmx"


// #define additive_alpha

#define Eyelight_Speed 15
#define Eyelight_Range 0.008

// #define use_distortion

#define _DistortionFPS 12 

#define distortion1 "eye_distortion.png"


#define _DistortionTexTilingX 1.0f
#define _DistortionTexTilingY 1.0

#define _DistortionScrollSpeed 0.1f

#define _DistortionScrollX 1.78f
#define _DistortionScrollY 1.07f

#define _DistortionIntensity 0.65f
#define _DistortionIntensityX 0.2f
#define _DistortionIntensityY 0.307f

#define _DistortionOffsetX 0.57f
#define _DistortionOffsetY 0.57f

#define force_front_light // Only affects facemap lighting


#define _OutlineWidth 0.001f
#define _OutlineL 0.5
#define _OutlineOffset 0 

#define _SekaiShadowThreshold 0.5f

#define facemap "an/faceSdf.png"

#define _CharacterId 8

#define _SekaiShadowColor float4(1.0f, 1.0f, 1.0f, 1.0f)

#define _SekaiCharacterAmbientLightColor float4(1.0, 1.0, 1.0, 1.0) // one of the many things needed that do nothing lol


#define _SekaiRimLightColor float4(0.0, 0.0, 0.0, 1.0)
#define _SekaiShadowRimLightColor float4(0.5, 0.5, 0.5, 1.0)
#define _SekaiRimLightFactor float4(200.0, 0.0, 1000.0, 0.015)
#define _RimThreshold 0.5f
#define _SekaiRimLightShadowSharpness 0.51f

#define _SpecularPower 22.0f // not a lot of models use it?
#define _SekaiCharacterSpecularColor float4(1.0f, 1.0f, 1.0f, 0.0f)

#include <shader.fxsub>