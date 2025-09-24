ATTACHMENT.Base = "att_perk_fmj"
ATTACHMENT.Name = "FMJ"
ATTACHMENT.Icon = Material("easy/mw/attachments/icons/shared/jup_hud_icon_perks_fmj_legacy.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end