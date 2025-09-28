ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "Default Grip"
ATTACHMENT.Model = Model("models/zeron/att_vm_p02_lm_kilo21_gripaim_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/lachmann/icons/icon_attachment_p02_lm_kilo21_pstlgrp_v0.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)

end