ATTACHMENT.Base = "att_optic_4x"
ATTACHMENT.Name = "Cronen Zero-P Optic"
ATTACHMENT.Model = Model("models/fritz/weapons/shared/attachments/att_vm_fourx05_v0.mdl")
ATTACHMENT.Icon = Material("pwci/mw/attachments/icons/shared/icon_attachment_fourx05_v0.vmt")

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
    LensHideMaterial = Material("pwci/mw/attachments/ads_scope_lens_iw9.vmt"),
    HideModel = Model("models/fritz/weapons/shared/attachments/att_vm_fourx05_v0_lens_hide.mdl"),
    LensBodygroup = "lens",
    FOV = 7, 
    ParallaxSize = 700, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_vzscope_default"),
    Size = 800,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
