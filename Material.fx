#define RimLight_Bone "Rim_Light.pmx"

#define _CharacterId 0

#define _DefaultSkinColor float4(0.9921875f, 0.9609375f, 0.921875f, 1.0f)
#define _Shadow1SkinColor float4(0.890625f, 0.76953125f, 0.796875f, 1.0f)
#define _Shadow2SkinColor float4(0.796875f, 0.59375f, 0.63671875f, 1.0f)

// if you uncomment these they'll override _CharacterId

#define _RimThreshold 0.2
#define _RimCol float3(0.2, 0.2, 0.2) //they get this perstage so i'm told so?

#define _OutlineWidth 0.001f
#define _OutlineL     0.5f


#include <shader.fxsub>