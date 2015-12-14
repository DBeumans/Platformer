package actors 
{
	import flash.events.Event;
	import utils.Controller;
	/**
	 * ...
	 * @author Danilo
	 */
	public class PlayerSelection 
	{
		private var _controller:Controller;
		
		public function PlayerSelection() 
		{
			addEventListener(Event.ADDED_TO_STAGE, init);
			
			_controller = new Controller();
		}
		
		private function init(e:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			addEventListener(Event.ENTER_FRAME, update);
			
		}
		private function update(e:Event):void
		{
			if (_controller.up)
			{
				
			}
		}
		
	}

}