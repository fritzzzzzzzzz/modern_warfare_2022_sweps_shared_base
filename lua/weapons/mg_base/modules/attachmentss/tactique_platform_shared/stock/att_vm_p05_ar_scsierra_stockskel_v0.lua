ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "Tactique CQC Stock"
ATTACHMENT.Model = Model("models/zeron/att_vm_p05_ar_scsierra_stockskel_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/taq/icons/icon_attachment_p05_ar_scsierra_stockskel_v0.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.3
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.3
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.3
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.3
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.4
    --weapon.PrintName = weapon.PrintName.. " Testa"
end