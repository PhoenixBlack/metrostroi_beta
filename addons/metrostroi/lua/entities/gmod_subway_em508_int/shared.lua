ENT.Type            = "anim"
ENT.Base            = "gmod_subway_base"

ENT.PrintName       = "Em-508"
ENT.Author          = "Aleksandr Kravchenko"
ENT.Contact         = "oldy702@gmail.com"
ENT.Purpose         = "Free fun for others"
ENT.Instructions    = "See instructions on our videochannel on Youtube"
ENT.Category		= "Metrostroi (trains)"

ENT.Spawnable       = true
ENT.AdminSpawnable  = true


--------------------------------------------------------------------------------
-- Default initializer only loads up DURA
--------------------------------------------------------------------------------
function ENT:InitializeSounds()
	self.BaseClass.InitializeSounds(self)
	
end

function ENT:PassengerCapacity()
	return 300
end

function ENT:GetStandingArea()
	return Vector(-450,-30,-45),Vector(380,30,-45)
end



function ENT:InitializeSystems()
	-- Электросистема 81-508
	self:LoadSystem("Electric","81_701_Electric")

	-- Токоприёмник
	self:LoadSystem("TR","TR_3B")
	-- Электротяговые двигатели
	self:LoadSystem("Engines","DK_117DM")

	-- Резисторы для реостата/пусковых сопротивлений
	self:LoadSystem("KF_47A","KF_47A")
	-- Резисторы для ослабления возбуждения
	self:LoadSystem("KF_50A")
	-- Ящик с предохранителями
	self:LoadSystem("YAP_57")

	-- Резисторы для цепей управления
	--self:LoadSystem("YAS_44V")
	-- Реостатный контроллер для управления пусковыми сопротивления
	self:LoadSystem("RheostatController","EKG_17B")
	-- Групповой переключатель положений
	self:LoadSystem("PositionSwitch","EKG_18B")
	-- Кулачковый контроллер
	self:LoadSystem("KV","KV_70")
	-- Контроллер резервного управления
	self:LoadSystem("KRU")


	-- Ящики с реле и контакторами
	self:LoadSystem("LK_755A")
	self:LoadSystem("YAR_13A")
	self:LoadSystem("YAR_27")
	self:LoadSystem("YAK_36")
	self:LoadSystem("YAK_37E")
	self:LoadSystem("YAS_44V")
	self:LoadSystem("YARD_2")
	self:LoadSystem("PR_14X_Panels")

	-- Пневмосистема 81-710
	self:LoadSystem("Pneumatic","81_717_Pneumatic")
	self.Pneumatic.ValveType = 1
	-- Панель управления Е
	self:LoadSystem("Panel","81_508_Panel")
	-- Everything else
	self:LoadSystem("Battery")
	self:LoadSystem("PowerSupply","DIP_01K")
	self:LoadSystem("DURA")
	self:LoadSystem("ALS_ARS","NoARS")
	self:LoadSystem("Horn")
	self:LoadSystem("Announcer")
	--self:LoadSystem("ASNP")

	--self:LoadSystem("RRI")
	--self:LoadSystem("UPO")
	--self:LoadSystem("Autodrive")
	--self:LoadSystem("KSAUP")
	--self:LoadSystem("ADoorDisable","Relay")

	--self:LoadSystem("Custom1","Relay","Switch")
	--self:LoadSystem("Custom2","Relay","Switch")
	--self:LoadSystem("Custom3","Relay","Switch")
	self:LoadSystem("CustomC","Relay","Switch")
	--self:LoadSystem("CustomD","Relay","Switch")
	--self:LoadSystem("CustomE","Relay","Switch")
	--self:LoadSystem("CustomF","Relay","Switch")
	--self:LoadSystem("CustomG","Relay","Switch")


end
