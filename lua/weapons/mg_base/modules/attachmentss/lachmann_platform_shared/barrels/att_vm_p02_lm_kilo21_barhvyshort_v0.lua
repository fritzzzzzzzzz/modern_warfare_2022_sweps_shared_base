ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "10.6'' Lachstrike Barrel"
ATTACHMENT.Model = Model("models/zeron/att_vm_p02_lm_kilo21_barhvyshort_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/lachmann/icons/icon_attachment_p02_lm_kilo21_barhvyshort_v0.vmt")
-- ATTACHMENT.Bodygroups ={
    -- ["tag_grip_show"] = 1
-- }

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.85
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.85
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.1
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.1
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
end