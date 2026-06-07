ATTACHMENT.Base = "att_sight_1x"
ATTACHMENT.Name = "Corio Enforcer Optic"
ATTACHMENT.Model = Model("models/fritz/weapons/shared/attachments/att_vm_holo01_v0.mdl")
ATTACHMENT.Icon = Material("pwci/mw/attachments/icons/shared/icon_attachment_holo01_v0.vmt")

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