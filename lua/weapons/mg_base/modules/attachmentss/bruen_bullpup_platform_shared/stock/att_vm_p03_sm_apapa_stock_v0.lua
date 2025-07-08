ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "Bruen MX9 Stock"
ATTACHMENT.Model = Model("models/zeron/att_vm_p03_sm_apapa_stock_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/auggers/icons/icon_attachment_p03_sm_apapa_stock_v0.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.19
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.19 
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.12
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.12
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.75
end