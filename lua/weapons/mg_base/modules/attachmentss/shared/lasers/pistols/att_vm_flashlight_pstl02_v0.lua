ATTACHMENT.Base = "att_laser"
ATTACHMENT.Name = "FTAC Vortex 200"
ATTACHMENT.Model = Model("models/zeron/att_vm_flashlight_pstl02_v0.mdl")
ATTACHMENT.Icon = Material("pwci/mw/attachments/icons/shared/icon_attachment_flashlight_pstl02_v0.vmt")
ATTACHMENT.Laser = {
    BeamMaterial = Material("mw19_laserbeam.vmt"),
    DotMaterial = Material("sprites/light_glow02_add.vmt"),
    BeamSize = 0,
    BeamWidth = 0,
    DotSize = 0,
    Color = Color(0, 0, 0, 0),
    Attachment = "laser"
}

ATTACHMENT.Flashlight = {
    FlashlightMaterial = Material("effects/flashlight/hard.vmt"),
    Color = Color(255, 255, 255, 255),
    Attachment = "laser"
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

    weapon.Cone.Hip =  weapon.Cone.Hip * 0.85
    weapon.Cone.Ads =  weapon.Cone.Ads * 0.85
    weapon.Cone.Increase =  weapon.Cone.Increase * 0.85
end  