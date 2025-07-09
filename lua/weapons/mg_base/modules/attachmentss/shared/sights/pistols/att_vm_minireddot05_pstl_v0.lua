ATTACHMENT.Base = "att_sight_1x"
ATTACHMENT.Name = "SZ Sigma-IV Optic"
ATTACHMENT.Model = Model("models/zeron/att_vm_minireddot05_pstl_v0.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/reticles/icon_attachment_minireddot.vmt")
ATTACHMENT.BonemergeToCategory = {"Barrels"}
ATTACHMENT.Reticle = {
    Material = Material("zeron/reticles/reticle_dot_yellow.vmt"),
    Size = 230,
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