ATTACHMENT.Base = "att_muzzle"
ATTACHMENT.Name = "XRK Ventor-900"
ATTACHMENT.Model = Model("models/zeron/att_vm_comp_pi03_v0.mdl")
ATTACHMENT.Icon = Material("pwci/mw/attachments/icons/shared/icon_attachment_comp_pi03_v0.vmt")
ATTACHMENT.BonemergeToCategory = {"Barrels"}
ATTACHMENT.AttachmentBodygroups = {
    ["tag_tip"] = 1,
    ["muzzle"] = 1,
    ["tip"] = 1
}
ATTACHMENT.Bodygroups = {
    ["tag_tip"] = 1,
    ["muzzle"] = 1,
    ["tip"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.96
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.96
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.96
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.96
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.96
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.96
end  