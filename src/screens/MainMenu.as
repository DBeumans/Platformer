package screens
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author Danilo
	 */
	public class MainMenu extends MovieClip
	{
		// een variable dat ik kan aanroepen om in dit geval Testart positie te geven en of op beeld te zetten, zie regel 24 - 26.
		private var test:MovieClip = new TestArt();
		private var test2:MovieClip = new TestArt();
		
		public static const START_GAME:String = "start game";
		
		public function MainMenu()
		{
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event):void
		{
			test.x = 400;
			test.y = 100;
			addChild(test);
			
			test2.x = 800;
			test2.y = 100;
			addChild(test2);
			
			test.addEventListener(MouseEvent.CLICK, onClick);
			test2.addEventListener(MouseEvent.CLICK, onClick);
		}
		
		private function onClick(e:MouseEvent):void
		{
			if ( e.currentTarget == test)
			{
				test.removeEventListener(MouseEvent.CLICK, onClick);
				test2.removeEventListener(MouseEvent.CLICK, onClick);
				trace("Test is clickked");
				dispatchEvent(new Event(START_GAME));
			}
			if ( e.currentTarget == test2)
			{
				test.removeEventListener(MouseEvent.CLICK, onClick);
				test2.removeEventListener(MouseEvent.CLICK, onClick);
				trace("Test2 is clicked");
			}
		}
	}
	
}