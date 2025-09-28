ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "Bruen Q900 Grip"
ATTACHMENT.Model = Model("models/zeron/att_vm_p03_ar_augolf_gripstdy_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/auggers/icons/icon_attachment_p03_ar_augolf_gripstdy_v0.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.85
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.85
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.9
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.9
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.8
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.8
end