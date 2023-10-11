# Why?

For v1 all repositories were not that accurate

for v3... Nobody else had done it

# Prerequisites 

(V3 only) Use [Manashiku's MMDGenshin_Helper_V2](https://github.com/Manashiku/MMDGenshin/releases) to generate some needed light IK bones for the face.

# In regards to custom models

This script is intended for models that are ripped from the game, so my support/help is very limited on this matter.

# Contact

Please make all bug reports in issues or in my DMS via CBTDWG on discord

All inquires can also be made via my Discord (No middleman please)

# Rules

1. Do not claim this shader as yours, Credit me as Chi, Chips, Chizukimo
2. Do not make NSFW content with this shader (that's just disgusting)
3. You may release modified material.fx files with your models but if you didn't modify the base shader(s) you may not release that with your models.
4. Do not use this shader for profit. (This is not limited to events that provide monitary gains)
5. You are free to edit this shader at your discretion, All previous rules applies.

# Usage

Place _H texture in SPH in your model

Place _S texture in TOON in your model

(v1 only) if your model's head has an accessory texture causing it to display wrong set that mesh to subtexture

(v3 only) Place SDF texture somewhere in "Textures/Face" folder and apply it to the material, if for some reason (Craft-egg moment) your lightmap is not proper, use sub_tex on the material as a failsafe

For v1 rimlight you NEED to load the rimlight specified in your material file. Otherwise it won't load (it looks weird when defaulted to mmd light dir)

For v3 this is not an issue and can use mmd light_dir normally if you so choose

# Stencil Mask

v1 does it automatically

but since v3 requires a post shader in order for it to mask properly I cannot release this at this time, look into alternatives that allows for proper masking (AlphaEye will not work properly)


# Credits

Me (Chi/Chips/Chizukimo) for decompiling and adapting for MMD.

[Yukikami](https://twitter.com/Yukikami_Kris) for supplying/telling me how to get some very needed shader stuff.

[Manashiku](https://github.com/Manashiku) for letting me yell in her dms and for her face shadow code.

[ElChicoEevee](https://twitter.com/ElChicoEevee) for testing out the shader.

Craft-egg for their mess of a code base (lets just say even the compiler/decompiler was confused)
