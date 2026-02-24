ATTACHMENT.Base = "att_perk_headshot"
ATTACHMENT.Icon = Material("pwci/mw/attachments/icons/shared/icon_attachment_ammo_556n_hp.vmt")
--change if needed

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end