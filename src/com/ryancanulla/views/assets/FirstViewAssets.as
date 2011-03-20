package com.ryancanulla.views.assets
{
	import flash.display.Bitmap;	
	import org.osmf.logging.Log;

	public class FirstViewAssets
	{
		[Embed(source="/../assets/logo.gif")]
		private var LogoClass:Class;
		public var logo:Bitmap = new LogoClass;
		
		public function FirstViewAssets() {}
	}
}