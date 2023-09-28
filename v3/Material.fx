#define RimLight_Bone "Rim_Light.pmx"


// #define additive_alpha

// #define force_front_light // ONLY FOR FACE


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


#define _SpecularPower 22.0f // not a lot of models use it?
#define _SekaiCharacterSpecularColor float4(0.0f, 0.0f, 1.0f, 0.0f)


#define _SekaiRimLightShadowSharpness 0.51f
#include <shader.fxsub>////