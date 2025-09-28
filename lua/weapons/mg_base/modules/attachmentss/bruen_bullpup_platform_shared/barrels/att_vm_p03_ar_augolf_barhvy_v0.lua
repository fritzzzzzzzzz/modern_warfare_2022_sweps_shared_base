ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "18'' Bruen Guerilla"
ATTACHMENT.Model = Model("models/zeron/att_vm_p03_ar_augolf_barhvy_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/auggers/icons/icon_attachment_p03_ar_augolf_barhvy_v0.vmt")
ATTACHMENT.ExcludedAttachments = {"att_vm_p03_lm_ahotel_bipod_v0"}
ATTACHMENT.AttachmentBodygroups = {
	["tag_slinghide"] = 1
}

ATTACHMENT.Bodygroups = {
    ["tag_slinghide"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.9
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.9
    weapon.Recoil.Horizontal[1] =  weapon.Recoil.Horizontal[1] * 0.85
    weapon.Recoil.Horizontal[2] =  weapon.Recoil.Horizontal[2] * 0.85
end