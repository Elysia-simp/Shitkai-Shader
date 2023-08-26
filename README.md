# Why?

The only repositories I found were inaccurate or did not use features correctly as the original shader does

and was typically bloated with other useless features, kept mines straight to the point with simple QOL changes


# Usage

Place _H texture in SPH in your model

Place _S texture in TOON in your model

if your model's head has an accessory texture causing it to display wrong set that mesh to use_subtexture

anything else will work normally for anything that doesn't need it

For rimlight you NEED to load the rimlight specified in your material file. Otherwise it won't load (it looks weird when defaulted to mmd light dir)

# Credits

Me (Chi/Chips/Chizukimo) for decompiling and adapting for MMD.

Yukikami for supplying some needed stuff.

[Manashiku](https://github.com/Manashiku?tab=repositories) for letting me yell in her dms 

Craft-egg for their mess of a code base (lets just say even the compiler/decompiler was confused)