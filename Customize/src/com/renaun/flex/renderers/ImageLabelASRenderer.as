package com.renaun.flex.renderers
{
import spark.components.Image;
import spark.components.Label;
import spark.components.supportClasses.ItemRenderer;
import spark.layouts.HorizontalLayout;

public class ImageLabelASRenderer extends ItemRenderer
{
	public function ImageLabelASRenderer()
	{
		super();
	}
	
	public var image:Image;
	
	/**
	 *  Using Label component here is not as optimal as using
	 *  StyleableTextField.
	 */
	public var labelComp:Label;
	
	/**
	 *  @private
	 */
	override protected function createChildren():void
	{
		super.createChildren();
		
		autoDrawBackground = false;
		layout = new HorizontalLayout();
		
		if (!image)
		{
			image = new Image();
			addElement(image);
		}
		if (!labelComp)
		{
			labelComp = new Label();
			addElement(labelComp);
		}
	}
	
	override public function set data(value:Object):void
	{
		super.data = value;
		
		if (data)
		{
			image.source = data.image;
			
			labelComp.text = data.label + " - " + data.image;
		}
	}
}
}