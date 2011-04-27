package skins
{
import spark.components.Image;
import spark.components.ViewNavigatorApplication;
import spark.primitives.BitmapImage;
import spark.skins.mobile.ViewNavigatorSkin;

public class CustomViewApp extends ViewNavigatorSkin
{
	public function CustomViewApp()
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
		}
	}
}
}