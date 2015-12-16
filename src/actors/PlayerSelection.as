package actors 
{
	import flash.display.MovieClip;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Danilo
	 */
	public class PlayerSelection extends MovieClip
	{
		//private var _playerArt:MovieClip = new PlayerArt();
		
		public function PlayerSelection() 
		{
			addChild(new PlayerArt);
		}
		
	}

}