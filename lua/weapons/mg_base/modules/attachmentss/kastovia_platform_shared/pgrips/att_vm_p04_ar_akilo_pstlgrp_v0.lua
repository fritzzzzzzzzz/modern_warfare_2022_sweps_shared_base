ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "KSTV Standard Issue"
ATTACHMENT.Model = Model("models/easy/mw/attachments/akilo103/att_vm_p04_ar_akilo_pstlgrp_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/vepr/icons/icon_attachment_p04_ar_akilo_pstlgrp_v0.vmt")
--ATTACHMENT.CosmeticChange = true

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    --weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.05
    --weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.05
end
