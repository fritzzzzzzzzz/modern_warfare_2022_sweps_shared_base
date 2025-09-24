ATTACHMENT.Base = "att_perk_ricochet"
ATTACHMENT.Name = "Shrapnel"
ATTACHMENT.Icon = Material("easy/mw/attachments/icons/shared/iw9_icon_perk_shrapnel.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

end