ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "Brace LS"
ATTACHMENT.Model = Model("models/zeron/att_vm_p04_sh_vecho_gripsnp_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/vepr/icons/icon_attachment_p04_sh_vecho_gripsnp_v0.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.78
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.78
    weapon.Recoil.Shake = weapon.Recoil.Shake * 0.7
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.90
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.90
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.95
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.95
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)

end