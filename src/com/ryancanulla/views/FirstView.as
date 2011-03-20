package com.ryancanulla.views
{
	import com.ryancanulla.views.assets.FirstViewAssets;
	
	import flash.display.Bitmap;
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLRequest;
	
	import org.osmf.logging.Log;

	public class FirstView extends ViewBase
	{
		private var background:Sprite;
		private var viewAssets:FirstViewAssets;
		private var logo:Bitmap;
		private var isReady:Boolean;
		
		public function FirstView() {
			super();
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event):void {
			removeEventListener(Event.ADDED_TO_STAGE, init);
			viewAssets = new FirstViewAssets();
			createChildren();
		}
		
		private function createChildren():void {			
			background = new Sprite();
			background.graphics.beginFill(0xff3300);
			background.graphics.drawRect(0, 0, width, height);
			background.graphics.endFill();
			addChild(background);
			
			logo = viewAssets.logo;
			addChild(logo);
			
			isReady = true;
			updateLayout();
		}
		
		private function updateProperties():void {
			// update properties here (usually data changing from the model)
		}
		
		private function updateLayout():void {
			if(isReady) {
				logo.x = width / 2 - (logo.width / 2);
				logo.y = this.height / 2 - logo.height / 2;	
				
				background.graphics.beginFill(0x333333);
				background.graphics.drawRect(0, 0, width, height);
				background.graphics.endFill();
			}	
		}
		
		override protected function sizeUpdated():void {
			updateLayout();
		}
	}
}