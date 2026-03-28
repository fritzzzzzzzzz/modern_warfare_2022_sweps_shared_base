ATTACHMENT.Base = "att_optic_1point5x"
ATTACHMENT.Name = "Kazan-Holo"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_holo_east.mdl")
ATTACHMENT.Icon = Material("pwci/mw/attachments/icons/shared/icon_attachment_holo03_v0.vmt")
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
    LensHideMaterial = Material("viper/MW/attachments/attachment_vm_holo_east_lens.vmt"),
    HideModel = Model("models/viper/mw/attachments/attachment_vm_holo_east_hide.mdl"),
    LensBodygroup = "lens", 
    ParallaxSize = 650, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_holo_default2.vmt"),
    Size = 400,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}

--local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
--
--function ATTACHMENT:OverrideMaterial(path, mat)
 --   return path, "att_holo03_v0_"..mat
--end
