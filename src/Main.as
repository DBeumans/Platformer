package
{
	import flash.display.MovieClip;
	import flash.events.Event;
	
	//import hier onderelkaar elke class van de folder "screens".
	import screens.MainMenu;
	/**
	 * ...
	 * @author Danilo
	 */
	public class Main extends MovieClip 
	{
		
		private var _MainMenu:MainMenu;
		
		public function Main() 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			buildMainMenuScreen();
		}
		
		private function buildMainMenuScreen():void
		{
			_MainMenu = new MainMenu();
			addChild(_MainMenu);
		}
	}
	
}