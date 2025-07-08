ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "Cursed"
ATTACHMENT.Model = Model("models/zeron/att_vm_p04_ar_akilo_griptac_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/vepr/icons/icon_attachment_p04_ar_akilo_griptac_v0.vmt")

ATTACHMENT.UIColor = CUSTOMIZATION_COLOR_RARE

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.2
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.2
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.86
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.86
end

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:OverrideMaterial(path, mat)
    return path, "v10_"..mat
end

--lets you change weapon textures
function ATTACHMENT:OverrideWeaponMaterial(path, mat)
    return path, "v10_"..mat
end

