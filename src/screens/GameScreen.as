package screens 
{
	import flash.display.MovieClip;
	import flash.events.Event;
	
	import actors.Player;
	/**
	 * ...
	 * @author Danilo
	 */
	public class GameScreen extends MovieClip
	{
		private var _player:Player;
		
		public function GameScreen() 
		{
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			_player = new Player();
			
			_player.x = 50;
			_player.y = 50;
			addChild(_player);
		}
		
	}

}