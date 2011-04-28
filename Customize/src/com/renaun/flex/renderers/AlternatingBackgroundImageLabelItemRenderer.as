package com.renaun.flex.renderers
{
import flash.display.DisplayObject;
import flash.utils.describeType;

import mx.core.BitmapAsset;
import mx.graphics.BitmapFillMode;
import mx.graphics.BitmapScaleMode;

import spark.components.Image;
import spark.components.LabelItemRenderer;
import spark.core.ContentCache;
import spark.core.DisplayObjectSharingMode;
import spark.core.IGraphicElement;
import spark.core.IGraphicElementContainer;
import spark.core.ISharedDisplayObject;
import spark.primitives.BitmapImage;

[Style(name="alternatingItemImage1", type="Class", format="Class", inherit="no", theme="spark, mobile")]
[Style(name="alternatingItemImage2", type="Class", format="Class", inherit="no", theme="spark, mobile")]
[Style(name="downImage", type="Class", format="Class", inherit="no", theme="spark, mobile")]

[Style(name="selectionImage", type="Class", format="Class", inherit="yes")]


public class AlternatingBackgroundImageLabelItemRenderer extends LabelItemRenderer 
{
	public function AlternatingBackgroundImageLabelItemRenderer()
	{
		super();
	}
	
	/**
	 */
	protected var backgroundImage:Image;
	
	private var imageCache:ContentCache;
	
	/**
	*  @private
	*/
	override protected function createChildren():void
	{
		
		if (imageCache == null) {
			imageCache = new ContentCache();
			imageCache.enableCaching = true;
			imageCache.maxCacheEntries = 20;
		}
		
		if (!backgroundImage)
		{
			backgroundImage = new Image();
			backgroundImage.contentLoader = imageCache; // TODO not sure if this is caching correctly and probably not globally
			backgroundImage.fillMode = BitmapFillMode.SCALE;
			backgroundImage.scaleMode = BitmapScaleMode.STRETCH;
			addChild(backgroundImage);
		}
		
		super.createChildren();
	}
	
	override protected function drawBackground(unscaledWidth:Number, 
									  unscaledHeight:Number):void
	{
		// figure out backgroundColor
		
		var imageClass:Class;
		
		if (down)
		{
			imageClass = getStyle("downImage");
		}
		else if (selected)
		{
			imageClass = getStyle("selectionImage");
		}
		else
		{
			imageClass = getStyle("alternatingItemImage"+((itemIndex%2)+1));			
		}
		if (imageClass)
		{
			backgroundImage.source = imageClass;
			setElementSize(backgroundImage, unscaledWidth, unscaledHeight);
		}
		
	}
	
}
}