package
{
	import com.ryancanulla.views.FirstView;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	public class Main extends Sprite
	{
		public function Main()
		{
			super();
			
			// support autoOrients
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			var view:FirstView = new FirstView();
			view.setSize(stage.fullScreenWidth, stage.fullScreenHeight);
			addChild(view);
		}
	}
}