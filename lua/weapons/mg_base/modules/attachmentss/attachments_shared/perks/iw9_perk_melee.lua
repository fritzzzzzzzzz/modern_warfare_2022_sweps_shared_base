ATTACHMENT.Base = "att_perk"
ATTACHMENT.Icon = Material("easy/mw/attachments/icons/shared/icon_perk_strong_arm_patch.vmt")
ATTACHMENT.Name = "Strong Arm"

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Melee.Fps = weapon.Animations.Melee.Fps * 1.3
    weapon.Animations.Melee_Hit.Fps = weapon.Animations.Melee_Hit.Fps * 1.2
    weapon.Animations.Melee_Hit.Damage = weapon.Animations.Melee_Hit.Damage * 1.5
end