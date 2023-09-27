#define merge_strings(a,b) a##b 


texture diffuseTexture : MATERIALTEXTURE <>;
sampler diffuseSampler = sampler_state{texture = < diffuseTexture >; ADDRESSU = WRAP; ADDRESSV = WRAP;};

texture HTexTexture : MATERIALSPHEREMAP<>;
sampler HTexSampler = sampler_state{texture = < HTexTexture >; ADDRESSU = CLAMP; ADDRESSV = CLAMP;};

texture ShadowTexture : MATERIALTOONTEXTURE<>;
sampler ShadowSampler = sampler_state{texture = < ShadowTexture >; ADDRESSU = CLAMP; ADDRESSV = CLAMP;};