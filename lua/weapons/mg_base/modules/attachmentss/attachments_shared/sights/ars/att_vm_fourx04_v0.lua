ATTACHMENT.Base = "att_optic_4x"
ATTACHMENT.Name = "FORGE TAC Delta 4"
ATTACHMENT.Model = Model("models/easy/mw/attachments/optics/att_vm_fourx04_v0.mdl")
ATTACHMENT.Icon = Material("pwci/mw/attachments/icons/shared/icon_attachment_fourx04_v0.vmt")
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
    LensHideMaterial = Material("pwci/mw/attachments/ads_scope_lens_iw9.vmt"),
    HideModel = Model("models/easy/mw/attachments/optics/att_vm_fourx04_v0_hide.mdl"),
    LensBodygroup = "lens",
    FOV = 3, 
    ParallaxSize = 700, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_sniper_new.vmt"),
    Size = 5000,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle"
}

hook.Add("PreRegisterSWEP", "forgetacdelta", function(SWEP, ClassName)
	if SWEP.Customization and type(SWEP.Customization) == "table" then
		for _, tbl in ipairs(SWEP.Customization) do
			for _, att in ipairs(tbl) do
				if att == "att_vm_4x_west01_tall" then
					table.insert(tbl, "att_vm_fourx04_v0")
					break
				end
			end
		end
	end
end)