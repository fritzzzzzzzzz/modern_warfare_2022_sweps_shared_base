ATTACHMENT.Base = "att_stock"
ATTACHMENT.Model = Model("models/zeron/att_vm_p04_sh_vecho_stock_v0.mdl")
ATTACHMENT.Name = "Broadside FCT"
ATTACHMENT.Icon = Material("zeron/weapons/vepr/icons/icon_attachment_p04_sh_vecho_stock_v0.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.82
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.82
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.08
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.08
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.9
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.9
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.9
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.9
end
