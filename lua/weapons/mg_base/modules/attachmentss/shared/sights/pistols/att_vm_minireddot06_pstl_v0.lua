ATTACHMENT.Base = "att_sight_1x"
ATTACHMENT.Name = "SZ Minitac-40"
ATTACHMENT.Model = Model("models/zeron/att_vm_minireddot06_pstl_v0.mdl")
ATTACHMENT.Icon = Material("pwci/mw/attachments/icons/shared/icon_attachment_minireddot06_v0.vmt")
ATTACHMENT.BonemergeToCategory = {"Barrels"}
ATTACHMENT.Reticle = {
    Material = Material("zeron/reticles/reticle_dot_red.vmt"),
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