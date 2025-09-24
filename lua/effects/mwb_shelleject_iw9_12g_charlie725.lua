AddCSLuaFile()

EFFECT.Model = Model("models/fritz/effects/shared/shell_spent_12g_LOD0.mdl")
EFFECT.Scale = 1
EFFECT.Force = 90
EFFECT.Offset = Vector()
EFFECT.Sounds = {
    Default = Sound("MW_Casings.shotgun.cement"),
    Water = Sound("MW_Casings.50bmg.water"),
    [MAT_DIRT] = Sound("MW_Casings.shotgun.dirt"),
    [MAT_GLASS] = Sound("MW_Casings.shotgun.glass"),
    [MAT_TILE] = Sound("MW_Casings.shotgun.glass"),
    [MAT_GRASS] = Sound("MW_Casings.shotgun.grass"),
    [MAT_FOLIAGE] = Sound("MW_Casings.shotgun.grass"),
    [MAT_SLOSH] = Sound("MW_Casings.shotgun.mud"), 
    [MAT_FLESH] = Sound("MW_Casings.shotgun.mud"),
    [MAT_BLOODYFLESH] = Sound("MW_Casings.shotgun.mud"),
    [MAT_ALIENFLESH] = Sound("MW_Casings.shotgun.mud"),
    [MAT_EGGSHELL] = Sound("MW_Casings.shotgun.mud"),
    [MAT_METAL] = Sound("MW_Casings.shotgun.metal"),
    [MAT_COMPUTER] = Sound("MW_Casings.shotgun.metal"),
    [MAT_GRATE] = Sound("MW_Casings.shotgun.metal"),
    [MAT_SAND] = Sound("MW_Casings.shotgun.sand"),
    [MAT_SNOW] = Sound("MW_Casings.shotgun.sand"),
    [MAT_VENT] = Sound("MW_Casings.shotgun.metal"),
    [MAT_WOOD] = Sound("MW_Casings.shotgun.wood_hollow")
}

include("mwb_shelleject.lua")     