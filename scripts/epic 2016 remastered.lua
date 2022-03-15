--// remastered a old script i never released, hope u enjoy :)
--// epic 2016 remastered
if not game:IsLoaded() then
	game.Loaded:Wait()
end
wait()

local executor = syn and "Synapse X" or KRNL_LOADED and "Krnl" or getexecutorname and getexecutorname() == "ScriptWare" or is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or secure_load and "Sentinel" or SONA_LOADED and "Sona" or "Unknown Exploit"

--// instances
local cc = Instance.new("ColorCorrectionEffect")
local lighting = game:GetService("Lighting")

--// hd killer
local ihateu = {"DepthOfFieldEffect", "SunRaysEffect", "BloomEffect", "BlurEffect", "ColorCorrectionEffect", "Atmosphere"}
for i, v in pairs(lighting:GetChildren()) do
    for index, value in ipairs(ihateu) do
    	if v:IsA(value) then
    	   v:Destroy() 
    	end
    end
end

--// setup
cc.Parent = game.Lighting
cc.Saturation = -0.1
cc.Contrast = -0.1
lighting.GlobalShadows = false

if not executor == "ScriptWare" then
	setscriptable(lighting, "Technology", true) lighting.Technology = Enum.Technology.Compatibility
end

settings().Rendering.QualityLevel = 7

--// load old gui
loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/lua-projects/main/small%20projects/project%3A2016/2016raw.lua',true))()
