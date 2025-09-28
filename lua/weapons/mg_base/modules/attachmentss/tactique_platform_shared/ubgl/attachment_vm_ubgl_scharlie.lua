ATTACHMENT.Base = "att_underbarrel_gl"
ATTACHMENT.Name = "Hellscream 40mm"
ATTACHMENT.Model = Model("models/zeron/att_vm_p05_ar_scharlie_ubgl_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/taq/icons/icon_attachment_p05_ar_scharlie_ubgl_v0.vmt")

ATTACHMENT.Bodygroups = {
    ["tag_grip_hide"] = 1
}
--ATTACHMENT.ExcludedAttachments = {"vm_jup_jp19_ar_acharlie_mag_60_556n_000", "vm_jup_jp19_ar_acharlie_mag_100_556n_000", "att_vm_p04_ar_archarlie_amp_lmg", "vm_jup_jp19_br_acharlie450_drum_30_450b_000", "vm_jup_jp19_br_acharlie450_drum_50_450b_000", "vm_jup_jp19_ar_acharlie_mag_60_circle_556n_000"}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    --this tells code to translate normal anims (left) to the underbarrel ones (right)
    --if no animation is found then the underbarrel is toggled
    weapon.Secondary.TranslateAnimations = {
        ["Holster"] = "Underbarrel_Holster",
        ["Draw"] = "Underbarrel_Draw",
        ["Melee"] = "Underbarrel_Melee",
        ["Melee_Hit"] = "Underbarrel_Melee_Hit",
        ["Inspect"] = "Underbarrel_Inspect",
        ["Inspect_Empty"] = "Underbarrel_Inspect",
        ["Underbarrel_Fire"] = "Underbarrel_Fire"
    }
	--mag
    weapon.Animations.Reload = weapon.Animations.Reload_Ubgl
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Ubgl
    weapon.Animations.Reload_Fast = weapon.Animations.Reload_Fast_Ubgl
    weapon.Animations.Reload_Empty_Fast = weapon.Animations.Reload_Empty_Fast_Ubgl
    weapon.Animations.Inspect = weapon.Animations.Inspect_Ubgl
    weapon.Animations.Inspect_Empty = weapon.Animations.Inspect_Empty_Ubgl
	--xmag
    weapon.Animations.Reload_Xmag = weapon.Animations.Reload_Xmag_Ubgl
    weapon.Animations.Reload_Empty_Xmag = weapon.Animations.Reload_Empty_Xmag_Ubgl
    weapon.Animations.Reload_Fast_Xmag = weapon.Animations.Reload_Fast_Xmag_Ubgl
    weapon.Animations.Reload_Empty_Fast_Xmag = weapon.Animations.Reload_Empty_Fast_Xmag_Ubgl
    weapon.Animations.Inspect_Xmag = weapon.Animations.Inspect_Xmag_Ubgl
    weapon.Animations.Inspect_Empty_Xmag = weapon.Animations.Inspect_Empty_Xmag_Ubgl
	--xmaglrg
    weapon.Animations.Reload_Xmaglrg = weapon.Animations.Reload_Xmaglrg_Ubgl
    weapon.Animations.Reload_Empty_Xmaglrg = weapon.Animations.Reload_Empty_Xmaglrg_Ubgl
    weapon.Animations.Reload_Fast_Xmaglrg = weapon.Animations.Reload_Fast_Xmaglrg_Ubgl
    weapon.Animations.Reload_Empty_Fast_Xmaglrg = weapon.Animations.Reload_Empty_Fast_Xmaglrg_Ubgl
    weapon.Animations.Inspect_Xmaglrg = weapon.Animations.Inspect_Xmaglrg_Ubgl
    weapon.Animations.Inspect_Empty_Xmaglrg = weapon.Animations.Inspect_Empty_Xmaglrg_Ubgl
	
    weapon.PrintName = weapon.PrintName.. " Hellscream 40mm"
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetGripPoseParameter("grip_ubgl_offset")
end

