ATTACHMENT.Base = "att_vm_p03_ar_augolf_comb_none"
ATTACHMENT.Name = "Schlager TTF3 Riser"
ATTACHMENT.Model = Model("models/zeron/att_vm_p03_ar_augolf_combammo_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/auggers/icons/icon_attachment_p03_ar_augolf_combammo_v0.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.9
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.9
end