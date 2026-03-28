ATTACHMENT.Base = "att_vm_reflex02_v0"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_reflex_west04.mdl")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:OverrideMaterial(path, mat)
    return path, "att_reflex02_v0_"..mat
end