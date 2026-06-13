ATTACHMENT.Base = "att_optic_10x"
ATTACHMENT.Name = "DXS Coriolis V4 9.4X"
ATTACHMENT.Model = Model("models/zeron/att_vm_scope_dm01_v0.mdl")
ATTACHMENT.Icon = Material("pwci/mw/attachments/icons/shared/icon_attachment_scope_dm01_v0.vmt")
ATTACHMENT.Bodygroups ={
    ["tag_sight"] = 2,
    ["tag_rail"] = 1,
    ["tag_top_rail"] = 1,
    ["sight"] = 2
}
ATTACHMENT.AttachmentBodygroups ={
    ["tag_sight"] = 2,
    ["tag_rail"] = 1,
    ["sight"] = 2
}
ATTACHMENT.Optic = {
    LensHideMaterial = Material("viper/MW/attachments/attachment_vm_4x_west_lens.vmt"),
    HideModel = Model("models/zeron/att_vm_scope_dm01_v0_hide.mdl"),
    LensBodygroup = "lens",
    FOV = 3, 
    ParallaxSize = 600, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}
ATTACHMENT.Reticle = {
    Material = Material("zeron/reticles/signalreticle.vmt"),
    Size = 2000,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle",
	Offset = Vector(0, 0, 0)
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.99
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.99
    weapon.Zoom.ViewModelFovMultiplier = weapon.Zoom.ViewModelFovMultiplier * 0.88
	weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(0, 0, 0)
	weapon.ViewModelOffsets.Aim.Angles = weapon.ViewModelOffsets.Aim.Angles + Angle(0.0, 0.0, 0)
end

--hook.Add("PreRegisterSWEP", "add_att_vm_scope_dm01_v0", function(SWEP, ClassName)
--	if SWEP.Customization and type(SWEP.Customization) == "table" then
--		for _, tbl in ipairs(SWEP.Customization) do
--			for _, att in ipairs(tbl) do
--				if att == "att_vm_scope_mike14" then
--					table.insert(tbl, "att_vm_scope_dm01_v0")
--
--					break
--				end
--			end
--		end
--	end
--end)