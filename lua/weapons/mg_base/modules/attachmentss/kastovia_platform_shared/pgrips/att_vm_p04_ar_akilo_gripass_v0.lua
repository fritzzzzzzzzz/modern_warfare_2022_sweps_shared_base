ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "DEMO-X2 Grip"
ATTACHMENT.Model = Model("models/zeron/att_vm_p04_ar_akilo_gripass_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/vepr/icons/icon_attachment_p04_ar_akilo_gripass_v0.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
    weapon.Recoil.Shake = weapon.Recoil.Shake * 1.4
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)

end