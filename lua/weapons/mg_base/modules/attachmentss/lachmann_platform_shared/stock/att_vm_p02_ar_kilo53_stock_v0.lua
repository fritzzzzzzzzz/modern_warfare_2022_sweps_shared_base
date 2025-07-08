ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "Meer Recoil-56 Factory Stock"
ATTACHMENT.Model = Model("models/zeron/att_vm_p02_ar_kilo53_stock_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/lachmann/icons/icon_attachment_p02_ar_kilo53_stock_v0.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.05
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.05 
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.95
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.95 
end