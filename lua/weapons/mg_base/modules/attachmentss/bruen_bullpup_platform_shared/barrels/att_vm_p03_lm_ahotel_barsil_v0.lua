ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Bruen Turaco 686mm"
ATTACHMENT.Model = Model("models/zeron/att_vm_p03_lm_ahotel_barsil_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/auggers/icons/icon_attachment_p03_lm_ahotel_barsil_v0.vmt")
ATTACHMENT.ExcludedAttachments = {"att_vm_p03_lm_ahotel_bipod_v0"}
ATTACHMENT.ExcludedCategories = {"Muzzle Devices"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Cone.Hip =  weapon.Cone.Hip * 0.95
    weapon.Cone.Ads =  weapon.Cone.Ads * 0.95
    weapon.Cone.Increase =  weapon.Cone.Increase * 0.85
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.05
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.04
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.04
    weapon:doSuppressorStats()
    weapon.ParticleEffects.MuzzleFlash = "mw_fas2_muzzleflash_suppressed"
end