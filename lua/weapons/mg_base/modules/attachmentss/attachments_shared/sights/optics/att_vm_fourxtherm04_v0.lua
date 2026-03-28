ATTACHMENT.Base = "att_optic_4x"
ATTACHMENT.Name = "Teplo-OP3 Scope"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_thermal_east.mdl")
ATTACHMENT.Icon = Material("pwci/mw/attachments/icons/shared/icon_attachment_fourxtherm04_v0.vmt")

ATTACHMENT.Bodygroups ={
    ["tag_sight"] = 2,
    ["tag_rail"] = 1,
    ["sight"] = 2
}
ATTACHMENT.AttachmentBodygroups ={
    ["tag_sight"] = 2,
    ["tag_rail"] = 1,
    ["sight"] = 2
}
ATTACHMENT.Optic = {
    HideModel = Model("models/viper/mw/attachments/attachment_vm_thermal_east_hide.mdl"),
    LensHideMaterial = Material("viper/MW/attachments/attachment_vm_thermal_east_lens.vmt"),
    LensBodygroup = "lens",
    FOV = 7, 
    ParallaxSize = 300, --a value of zero means 1:1 size with the end of the optic
    Thermal = true
}
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_thermal_default2.vmt"),
    Size = 750,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:OverrideMaterial(path, mat)
    return path, "att_fourxtherm04_v0_"..mat
end


