/** Set viewport setting for modeling 
 *	
 */
macroscript	scene_light_modeling
category:	"_MainUI-Ligtning"
buttontext:	"Light modeling"
toolTip:	"Scene light setup - Modeling"
--icon:	"#(path, index)"
(
	/** http://help.autodesk.com/view/3DSMAX/2015/ENU/?guid=__files_GUID_34892DB6_E840_4F52_9175_30332799B7B1_htm
	 */
	lightTintColor	= color 140 140 140
	ambientColor	= color 50	50	50
	
	settings	= NitrousGraphicsManager.GetActiveViewportSetting()
	
	settings.ShowHighlightEnabled	= false	-- show highlights
	settings.VisualStyleMode	= #Shaded	-- shaded render
	settings.UseEnvironmentBackgroundColorEnabled	= false	-- allow background color
	settings.AmbientOcclusionEnabled	= false	-- ambient occlusion
	settings.ShadowsEnabled	= false	-- shadows

	redrawViews()
)

/** Set viewport rendering similar to Samodsoft`s Unity engine setup
 *	
 */
macroscript	scene_light_unity
category:	"_MainUI-Ligtning"
buttontext:	"Light Unity"
toolTip:	"Scene light setup - Unity"
--icon:	"#(path, index)"
(
	lightTintColor	= color 255 255 249
	ambientColor	= color 0	40	60
	--backgroundColor	= color 136	173	201 -- light blue
	--backgroundColor	= color 45 54 56
	backgroundColor	= color 50 55 56

	settings	= NitrousGraphicsManager.GetActiveViewportSetting()
	
	settings.ShowHighlightEnabled	= true
	settings.VisualStyleMode	= #Facets
	settings.UseEnvironmentBackgroundColorEnabled	= true
	--settings.UseEnvironmentBackgroundColorEnabled	= false
	settings.DefaultLightMode 	= #OneLight
	
	settings.ShadowsEnabled	= true
	settings.ShadowIntensity	= 0.9	-- shadows intensity
	
	settings.AmbientOcclusionEnabled	= true
	settings.AmbientOcclusionIntensity  	= 1.0
	settings.AmbientOcclusionRadius 	= 150.0
	
	redrawViews()
)

	
