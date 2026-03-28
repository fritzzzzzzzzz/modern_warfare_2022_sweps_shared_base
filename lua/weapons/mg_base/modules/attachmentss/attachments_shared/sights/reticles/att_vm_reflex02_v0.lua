ATTACHMENT.Base = "att_optic_1point5x"
ATTACHMENT.Name = "Aim Op-V4"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_reflex_west02_lod0.mdl")
ATTACHMENT.Icon = Material("pwci/mw/attachments/icons/shared/icon_attachment_reflex02_v0.vmt")

ATTACHMENT.Bodygroups ={
    ["tag_sight"] = 1,
    ["tag_rail"] = 1,
    ["sight"] = 1
}
ATTACHMENT.AttachmentBodygroups ={
    ["tag_sight"] = 1,
    ["tag_rail"] = 1,
    ["sight"] = 1
}

ATTACHMENT.Optic = {
    LensHideMaterial = Material("viper/MW/attachments/attachment_vm_reflex_west02_lens.vmt"),
    HideModel = Model("models/viper/mw/attachments/attachment_vm_reflex_west02_hide.mdl"), 
    LensBodygroup = "lens",
    FOV = 7, 
    ParallaxSize = 600, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_reflex_default2.vmt"),
    Size = 500,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:OverrideMaterial(path, mat)
    return path, "att_reflex02_v0_"..mat
end
