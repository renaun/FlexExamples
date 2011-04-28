package com.renaun.flex.skins
{
import mx.graphics.BitmapFillMode;
import mx.graphics.BitmapScaleMode;

import spark.components.Image;
import spark.components.ViewNavigatorApplication;
import spark.primitives.BitmapImage;
import spark.skins.mobile.ViewNavigatorSkin;

public class BackgroundImageViewNavigatorSkin extends ViewNavigatorSkin
{
	public function BackgroundImageViewNavigatorSkin()
	{
		super();
	}
	
	
	
	/**
	 *  @copy spark.components.ViewNavigator#actionBar
	 */ 
	public var backgroundImage:Image;
	
	/**
	 *  @private
	 */
	override protected function createChildren():void
	{
		try
		{
			if (hostComponent.parent["hostComponent"]["backgroundImage"])
			{
				var v:ViewNavigatorApplication = hostComponent.parent["hostComponent"] as ViewNavigatorApplication;
				backgroundImage = v["backgroundImage"];
				backgroundImage.scaleMode = BitmapScaleMode.STRETCH;
				addChild(backgroundImage);
			}
		} catch (error:Error) {
			
		}
		super.createChildren();
		//contentGroup.setStyle("contentBackgroundColor", 0xff0000);
	}
	
	override protected function layoutContents(unscaledWidth:Number, unscaledHeight:Number):void
	{
		super.layoutContents(unscaledWidth, unscaledHeight);
		
		
		if (backgroundImage)
		{			
			var actionBarHeight:Number = 0;
			actionBarHeight = actionBar.getLayoutBoundsHeight();
			backgroundImage.setLayoutBoundsSize(unscaledWidth, unscaledHeight);
			//backgroundImage.setLayoutBoundsPosition(0, actionBarHeight);
			//setElementSize(backgroundImage, unscaledWidth, unscaledHeight + actionBarHeight-5);
			//setElementPosition(backgroundImage, 0, 0);
		}
	}
}
}