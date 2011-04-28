package com.renaun.flex.renderers
{
import spark.components.LabelItemRenderer;

public class LabelWithNoBackgroundItemRenderer extends LabelItemRenderer
{
	public function LabelWithNoBackgroundItemRenderer()
	{
		super();
	}
	
	/**
	 *  Basically remove all the auto draw background code.
	 */
	override protected function drawBackground(unscaledWidth:Number, 
												unscaledHeight:Number):void
	{
		
	}
}
}