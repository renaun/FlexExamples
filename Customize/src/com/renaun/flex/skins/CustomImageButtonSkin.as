package com.renaun.flex.skins
{
import spark.skins.mobile.ButtonSkin;
import spark.skins.mobile160.assets.MyButton_down;

public class CustomImageButtonSkin extends ButtonSkin
{
	public function CustomImageButtonSkin()
	{
		super();
		
		// default DPI_160
		upBorderSkin = upImage;//spark.skins.mobile160.assets.MyButton_down;
		downBorderSkin = downImage;//spark.skins.mobile160.assets.MyButton_down;
	}
	
	[Embed(source="assets/pic0.png")]
	private var upImage:Class;
	
	[Embed(source="assets/pic1.png")]
	private var downImage:Class;
}
}