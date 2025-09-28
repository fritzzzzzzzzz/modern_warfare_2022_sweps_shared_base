ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "TV Ballast Stock"
ATTACHMENT.Model = Model("models/zeron/att_vm_p05_dm_scromeo_stocklgt_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/taq/icons/icon_attachment_p05_dm_scromeo_stocklgt_v0.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.9
end