ATTACHMENT.Base = "att_optic_10x"
ATTACHMENT.Name = "Daunt-C80"
ATTACHMENT.Model = Model("models/fritz/weapons/shared/attachments/att_vm_p14_sh_charlie725_scope_v0_lod0.mdl")
ATTACHMENT.Icon = Material("pwci/mw/attachments/icons/shared/icon_attachment_p14_sh_charlie725_scope_v0.vmt")
ATTACHMENT.Bodygroups = {
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
        LensHideMaterial = Material("viper/mw/weapons/charlie725/weapon_vm_sh_charlie725_huntingscope_lens.vmt"),
        HideModel = Model("models/viper/mw/attachments/charlie725/attachment_vm_sh_charlie725_scope_hide.mdl"),
        LensBodygroup = "lens",
        FOV = 7, 
        ParallaxSize = 750, --a value of zero means 1:1 size with the end of the optic
        Thermal = false
}
ATTACHMENT.Reticle = {
        Material = Material("viper/mw/reticles/reticle_sniper_new.vmt"),
        Size = 2000,
        Color = Color(255, 255, 255, 255),
        Attachment = "reticle"
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

--hook.Add("PreRegisterSWEP", "daunt-c80", function(SWEP, ClassName)
--	if SWEP.Customization and type(SWEP.Customization) == "table" then
--		for _, tbl in ipairs(SWEP.Customization) do
--			for _, att in ipairs(tbl) do
--				if att == "att_vm_scope_vz" then
--					table.insert(tbl, "att_vm_p14_sh_charlie725_scope")
--					break
--				end
--			end
--		end
--	end
--end)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Zoom.ViewModelFovMultiplier = weapon.Zoom.ViewModelFovMultiplier * 0.9
    weapon.Animations.Reload = weapon.Animations.reload_scope
    weapon.Animations.Reload_Empty = weapon.Animations.reload_empty_scope
	weapon.ViewModelOffsets.Aim.Angles = weapon.ViewModelOffsets.Aim.Angles + Angle(0, 0, 0)
	weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.04)

end