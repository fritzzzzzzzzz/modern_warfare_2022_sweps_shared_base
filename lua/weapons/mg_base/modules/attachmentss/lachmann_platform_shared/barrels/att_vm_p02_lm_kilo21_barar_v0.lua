ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Lachmann Nova Barrel"
ATTACHMENT.Model = Model("models/zeron/att_vm_p02_lm_kilo21_barar_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/lachmann/icons/icon_attachment_p02_ar_kilo53_barlong_v0.vmt")
-- ATTACHMENT.Bodygroups ={
    -- ["tag_grip_show"] = 1
-- }

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.95
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.95
    weapon.Cone.Hip = weapon.Cone.Hip * 1.2
    weapon.Cone.MinDecreaseEveryShot = weapon.Cone.MinDecreaseEveryShot * 1.1
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.08
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.08
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.11
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.11
end