ATTACHMENT.Base = "att_sight_1x"
ATTACHMENT.Name = "SZ Lonewolf Optic"
ATTACHMENT.Model = Model("models/fritz/weapons/shared/attachments/att_vm_holo02.mdl")
ATTACHMENT.Icon = Material("pwci/mw/attachments/icons/shared/icon_attachment_holo02_v0.vmt")

ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_holo_default.vmt"),
    Size = 800,
    Color = Color(255, 255, 255, 200),
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