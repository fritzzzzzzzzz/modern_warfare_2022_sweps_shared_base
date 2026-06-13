ATTACHMENT.Base = "att_optic"
ATTACHMENT.Name = "SZ SRO-7"
ATTACHMENT.Model = Model("models/fritz/weapons/shared/attachments/att_vm_reflex07_v0.mdl")
ATTACHMENT.Icon = Material("pwci/mw/attachments/icons/shared/icon_attachment_reflex07_v0.vmt")

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
ATTACHMENT.Optic = {
    LensHideMaterial = Material("pwci/mw/attachments/ads_scope_lens_iw9.vmt"),
    HideModel = Model("models/fritz/weapons/shared/attachments/att_vm_reflex07_v0_hide.mdl"),
    LensBodygroup = "lens",
    FOV = 7, 
    ParallaxSize = 900, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_acog_default2"),
    Size = 900,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.97
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.97
    weapon.Zoom.ViewModelFovMultiplier = weapon.Zoom.ViewModelFovMultiplier * 0.7
    weapon.Zoom.FovMultiplier = 0.7
end