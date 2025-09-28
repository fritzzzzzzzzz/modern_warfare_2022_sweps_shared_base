ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Romeo FT 16'' Barrel"
ATTACHMENT.Model = Model("models/zeron/att_vm_p02_lm_kilo21_barhvylong_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/lachmann/icons/icon_attachment_p02_lm_kilo21_barhvylong_v0.vmt")
-- ATTACHMENT.Bodygroups ={
    -- ["tag_grip_show"] = 1
-- }

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.15
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.15
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.86
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.86
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.8
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.8
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
end 