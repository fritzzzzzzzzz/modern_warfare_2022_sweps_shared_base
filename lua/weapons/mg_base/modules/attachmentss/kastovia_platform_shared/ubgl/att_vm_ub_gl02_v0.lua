ATTACHMENT.Base = "att_underbarrel_gl"
ATTACHMENT.Name = "KL40-M2"
ATTACHMENT.Model = Model("models/easy/mw/attachments/ubgl/att_vm_ub_gl02_v0.mdl")
ATTACHMENT.Icon = Material("easy/mw/attachments/icons/shared/icon_attachment_ub_gl02_v0.vmt")

ATTACHMENT.ExcludedCategories = {"Grips"}
ATTACHMENT.Bodygroups ={
    ["tag_grip_hide"] = 1
}
ATTACHMENT.AttachmentBodygroups ={
    ["tag_grip_hide"] = 1
}

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
	weapon.PrintName = weapon.PrintName.. " KL40-M2"
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetGripPoseParameter("grip_ubgl_offset")
end

