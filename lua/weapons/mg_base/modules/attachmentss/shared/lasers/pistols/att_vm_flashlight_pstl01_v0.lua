ATTACHMENT.Base = "att_laser"
ATTACHMENT.Name = "DZM-1000 L"
ATTACHMENT.Model = Model("models/zeron/att_vm_flashlight_pstl01_v0.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/laser/icon_attachment_laser01.vmt")
ATTACHMENT.CustomText = "Flashlight Visible in ADS"
--ATTACHMENT.BonemergeToCategory = {"Barrels"}
ATTACHMENT.Laser = {
    BeamMaterial = Material("mw19_laserbeam.vmt"),
    DotMaterial = Material("sprites/light_glow02_add.vmt"),
    BeamSize = 0,
    BeamWidth = 0,
    DotSize = 0,
    Color = Color(0, 0, 0, 0),
    Attachment = "laser"
}

ATTACHMENT.Flashlight = {
    FlashlightMaterial = Material("effects/flashlight/hard.vmt"),
    Color = Color(255, 255, 255, 255),
    Attachment = "laser"
}
-- local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

-- function ATTACHMENT:DrawFlashlight(weapon, model)
	
	-- if (SERVER) then
            -- local bFlashlightOn = self:GetIsAiming()
            -- self:GetOwner():Flashlight(false)
            -- self:SetFlashlight(bFlashlightOn)
        -- end
	
    -- if (IsValid(GetViewEntity())) then
        -- if (CurTime() < GetViewEntity():GetNWFloat("MW19_EMPEffect", CurTime())) then
            -- self:RemoveFlashlightStuffFromModel(model)
            -- return
        -- end
    -- end

    -- if (self.Flashlight == nil) then
        -- return
    -- end
    
    -- if (!weapon:GetIsAiming() || weapon:GetIsHolstering()) then
        -- self:RemoveFlashlightStuffFromModel(model)
        -- return
    -- end

    -- local attId = model:LookupAttachment(self.Flashlight.Attachment)
    -- local att = model:GetAttachment(attId)

    -- if (!IsValid(model.mw_flashlightParticle)) then
        -- model.mw_flashlightParticle = CreateParticleSystem(model, "flashlight_mw19", PATTACH_POINT_FOLLOW, attId)
        -- model.mw_flashlightParticle:StartEmission()
    -- end

    -- local particle = model.mw_flashlightParticle
    -- particle:SetShouldDraw(false)
    -- particle:SetControlPoint(1, att.Pos)
    -- particle:SetControlPointOrientation(1, att.Ang:Forward(), att.Ang:Right(), att.Ang:Up())
    -- particle:Render()

    -- if (model == self.m_TpModel) then
        -- return
    -- end

    -- if (!IsValid(model.mw_flashlightProjTexture)) then
        -- model.mw_flashlightProjTexture = ProjectedTexture()
    -- end

    -- local proj = model.mw_flashlightProjTexture
    -- proj:SetPos(att.Pos + att.Ang:Forward() * -3)
    -- proj:SetAngles(att.Ang)
    -- proj:SetFOV(33)
    -- proj:SetTexture(self.Flashlight.FlashlightMaterial:GetTexture("$basetexture"))
    -- proj:Update()
-- end

-- function ATTACHMENT:Stats(weapon)
    -- BaseClass.Stats(self, weapon)
	-- weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.12
    -- weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.12
    -- weapon.Cone.Ads = weapon.Cone.Ads * 0.9
-- end 

-- function ATTACHMENT:PostProcess(weapon)
    -- BaseClass.PostProcess(self, weapon)
	-- weapon.LaserAimPos = nil
-- end