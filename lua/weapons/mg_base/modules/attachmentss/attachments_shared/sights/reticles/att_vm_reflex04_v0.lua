ATTACHMENT.Base = "att_sight_1x"
ATTACHMENT.Name = "Monocle CT90"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_reflex_east02_lod0.mdl")
ATTACHMENT.Icon = Material("pwci/mw/attachments/icons/shared/icon_attachment_reflex04_v0.vmt")

ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_reflex_default3"),
    Size = 800,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
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