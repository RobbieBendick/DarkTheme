local reskin = {
    PlayerFrameTexture, TargetFrameTextureFrameTexture,
    MinimapBorder, TargetFrameToTTextureFrameTexture,
    MainMenuBarRightEndCap, MainMenuBarLeftEndCap,
    MainMenuBarTexture0, MainMenuBarTexture1,
    PetFrameTexture, MiniMapTrackingBorder,
    MiniMapMailBorder,
    MainMenuBarTexture2, MainMenuBarTexture3,
    MainMenuMaxLevelBar0, MainMenuMaxLevelBar1,
    MainMenuMaxLevelBar2, MainMenuMaxLevelBar3,
    FocusFrameTextureFrameTexture, FocusFrameToTTextureFrameTexture,
    MainMenuXPBarTextureLeftCap, MainMenuXPBarTextureRightCap,
    ReputationWatchBarTexture0, ReputationWatchBarTexture1,
    ReputationWatchBarTexture2, ReputationWatchBarTexture3,
    ReputationXPBarTexture0, ReputationXPBarTexture1,
    ReputationXPBarTexture2, ReputationXPBarTexture3,
    MainMenuXPBarTextureMid,
}

local red, green, blue = 0.1, 0.1, 0.1

--change color of everything listed in reskin table
for i = 1, #reskin do
    reskin[i]:SetVertexColor(red, green, blue)
end

--hide a bunch of clutter stuff on minimap
local hide = {
    MinimapZoneTextButton, MinimapBorderTop,
    MinimapToggleButton, MiniMapWorldMapButton,
    GameTimeFrame
}
for i = 1, #hide do
    hide[i]:Hide()
end

--move minimap up a bit to adjust for border remove, and make minimap a bit smaller
MinimapCluster:ClearAllPoints()
MinimapCluster:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -5, 5)
MinimapCluster:SetScale(0.9)
MinimapZoomOut:SetParent(MinimapZoomIn)
MinimapCluster:SetHeight(225)
MinimapBorder:ClearAllPoints()
MinimapBorder:SetPoint("TOP", 0, 18)
MinimapBorder:SetSize(192, 192)
MinimapZoomIn:ClearAllPoints()
MinimapZoomIn:SetPoint("CENTER", 70, -13)
MinimapZoomOut:ClearAllPoints()
MinimapZoomOut:SetPoint("CENTER", -20, -20)
