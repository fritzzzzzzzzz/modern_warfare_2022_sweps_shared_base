ATTACHMENT.Base = "att_stock"
ATTACHMENT.Model = Model("models/zeron/att_vm_p04_ar_akilo74_stock_v0.mdl")
ATTACHMENT.Name = "K-Bloc Stock"
ATTACHMENT.Icon = Material("zeron/weapons/vepr/icons/icon_attachment_p04_ar_akilo74_stock_v0.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.2
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.2
end