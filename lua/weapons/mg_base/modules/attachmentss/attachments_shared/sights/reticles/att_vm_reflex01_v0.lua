ATTACHMENT.Base = "att_sight_1x"
ATTACHMENT.Name = "XRK On-Point Optic"
ATTACHMENT.Model = Model("models/fritz/weapons/shared/attachments/att_vm_reflex01_v0.mdl")
ATTACHMENT.Icon = Material("pwci/mw/attachments/icons/shared/icon_attachment_reflex01_v0.vmt")

ATTACHMENT.Reticle = {
    Material = Material("viper/shared/reticles/aimpoint_reticle.vmt"),
    Size = 125,
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