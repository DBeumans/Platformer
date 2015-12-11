package screens
{
	import flash.display.MovieClip;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Danilo
	 */
	public class MainMenu extends MovieClip
	{
		
		private var test:MovieClip = new TestArt();
		
		public function MainMenu()
		{
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event):void
		{
			test.x = 400;
			test.y = 100;
			addChild(test);
		}
	}
	
}