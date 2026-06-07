ATTACHMENT.Base = "att_vm_reflex02_v0"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_reflex_west04.mdl")
ATTACHMENT.Icon = Material("pwci/mw/attachments/icons/shared/icon_attachment_reflex02_tall_v0.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:OverrideMaterial(path, mat)
    return path, "att_reflex02_v0_"..mat
end