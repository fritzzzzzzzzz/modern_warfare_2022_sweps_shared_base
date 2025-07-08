ATTACHMENT.Base = "att_perk_soh"
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Reload = weapon.Animations.Reload_Fast
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Fast                             
    weapon.Animations.Reload_Xmag = weapon.Animations.Reload_Fast_Xmag
    weapon.Animations.Reload_Empty_Xmag = weapon.Animations.Reload_Empty_Fast_Xmag
    weapon.Animations.Reload_Xmaglrg = weapon.Animations.Reload_Fast_Xmaglrg
    weapon.Animations.Reload_Empty_Xmaglrg = weapon.Animations.Reload_Empty_Fast_Xmaglrg
    weapon.Animations.Reload_Smag = weapon.Animations.Reload_Fast_Smag
    weapon.Animations.Reload_Empty_Smag = weapon.Animations.Reload_Empty_Fast_Smag
    weapon.Animations.Reload_Ahotel = weapon.Animations.Reload_Fast_Ahotel
    weapon.Animations.Reload_Empty_Ahotel = weapon.Animations.Reload_Empty_Fast_Ahotel       
    weapon.Animations.Reload_Ahotel_Xmaglrg = weapon.Animations.Reload_Fast_Ahotel_Xmaglrg
    weapon.Animations.Reload_Empty_Ahotel_Xmaglrg = weapon.Animations.Reload_Empty_Fast_Ahotel_Xmaglrg       
	--ubglreload
    weapon.Animations.Underbarrel_Reload = weapon.Animations.Underbarrel_Reload_Fast
end