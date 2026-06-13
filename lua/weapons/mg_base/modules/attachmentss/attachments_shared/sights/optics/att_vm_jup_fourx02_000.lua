ATTACHMENT.Base = "att_optic_4x"
ATTACHMENT.Name = "TX4 Havoc"
ATTACHMENT.Model = Model("models/fritz/weapons/shared/attachments/vm_jup_fourx02_000.mdl")
ATTACHMENT.Icon = Material("pwci/mw/attachments/icons/shared/icon_jup_fourx02_000.vmt")

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
    HideModel = Model("models/fritz/weapons/shared/attachments/vm_jup_fourx02_000_hide.mdl"),
    LensBodygroup = "lens",
    FOV = 7, 
    ParallaxSize = 700, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_acog_default2"),
    Size = 800,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}
