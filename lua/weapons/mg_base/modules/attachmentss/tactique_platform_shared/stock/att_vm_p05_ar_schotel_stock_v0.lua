ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "TacVerte Core Stock"
ATTACHMENT.Model = Model("models/zeron/att_vm_p05_ar_schotel_stock_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/taq/icons/icon_attachment_p05_ar_schotel_stock_v0.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

end