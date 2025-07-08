ATTACHMENT.Base = "att_stock"
ATTACHMENT.Model = Model("models/zeron/att_vm_p04_ar_akilo_stocktac02_v0.mdl")
ATTACHMENT.Name = "Markeev R7 Stock"
ATTACHMENT.Icon = Material("zeron/weapons/vepr/icons/icon_attachment_p04_ar_akilo_stocktac02_v0.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.8
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.8
    weapon.Recoil.Shake = weapon.Recoil.Shake * 1.4
end