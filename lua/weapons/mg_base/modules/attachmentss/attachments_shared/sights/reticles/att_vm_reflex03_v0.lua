ATTACHMENT.Base = "att_sight_1x"
ATTACHMENT.Name = "DF105 Reflex Sight"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_reflex_east_lod0.mdl")
ATTACHMENT.Icon = Material("pwci/mw/attachments/icons/shared/icon_attachment_reflex03_v0.vmt")

ATTACHMENT.Reticle = {
    Material = Material("viper/shared/reticles/kobra_reticle.vmt"),
    Size = 240,
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