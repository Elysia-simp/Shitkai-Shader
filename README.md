# Why?

For v1 all repositories were not that accurate

for v3... Nobody else had done it


# Usage

Place _H texture in SPH in your model

Place _S texture in TOON in your model

(v1 only) if your model's head has an accessory texture causing it to display wrong set that mesh to subtexture

(v3 only) Place SDF texture somewhere in "Textures/Face" folder and set your face mesh to subtexture (incase context clues failed you, set everything else to any other sph type)

For v1 rimlight you NEED to load the rimlight specified in your material file. Otherwise it won't load (it looks weird when defaulted to mmd light dir)

For v3 this is not an issue and can use mmd light_dir normally

# Credits

Me (Chi/Chips/Chizukimo) for decompiling and adapting for MMD.

[Yukikami](https://twitter.com/Yukikami_Kris) for supplying/telling me how to get some very needed shader stuff.

[Manashiku](https://github.com/Manashiku) for letting me yell in her dms and for her face shadow code.

[ElChicoEevee](https://twitter.com/ElChicoEevee) for testing out the shader.

Craft-egg for their mess of a code base (lets just say even the compiler/decompiler was confused)
