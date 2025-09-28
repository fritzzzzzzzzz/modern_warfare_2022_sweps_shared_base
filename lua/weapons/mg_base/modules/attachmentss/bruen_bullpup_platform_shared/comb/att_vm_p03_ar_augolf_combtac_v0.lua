ATTACHMENT.Base = "att_vm_p03_ar_augolf_comb_none"
ATTACHMENT.Name = "FTAC C11 Riser"
ATTACHMENT.Model = Model("models/zeron/att_vm_p03_ar_augolf_combtac_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/auggers/icons/icon_attachment_p03_ar_augolf_combtac_v0.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.07
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.07
end