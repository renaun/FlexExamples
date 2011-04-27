package view.renderers
{
import spark.components.LabelItemRenderer;

public class NoBackground extends LabelItemRenderer
{
	public function NoBackground()
	{
		super();
	}
	
	override protected function drawBackground(unscaledWidth:Number, 
												unscaledHeight:Number):void
	{
		
	}
}
}