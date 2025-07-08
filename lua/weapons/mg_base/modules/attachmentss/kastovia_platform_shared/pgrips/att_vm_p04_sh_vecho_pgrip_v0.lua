ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "KV Shotgun Grip"
ATTACHMENT.Model = Model("models/zeron/att_vm_p04_sh_vecho_pgrip_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/vepr/icons/icon_attachment_p04_sh_vecho_pgrip_v0.vmt")
--ATTACHMENT.CosmeticChange = true

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
end