ATTACHMENT.Base = "att_laser"
ATTACHMENT.Name = "XTEN Sidearm-L400"
ATTACHMENT.Model = Model("models/zeron/att_vm_laser_pstl05_v0.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/laser/icon_attachment_laser02.vmt")
ATTACHMENT.Laser = {
    BeamMaterial = Material("mw19_laserbeam.vmt"),
    DotMaterial = Material("sprites/light_glow02_add.vmt"),
    BeamSize = 15,
    BeamWidth = 1,
    DotSize = 5,
    Color = Color(255, 0, 0, 255),
    Attachment = "laser"
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)