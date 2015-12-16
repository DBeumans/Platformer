package actors 
{
	
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	/**
	 * ...
	 * @author Danilo
	 */
	public class Player extends PlayerSelection
	{

		private var keyLeft:Boolean = false;
		private var keyRight:Boolean = false;
		
		private var zwaartekracht:int = 0;
		private var floor:int = 720;
		
		public function Player() 
		{
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			addEventListener(Event.ENTER_FRAME, update);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
			
		}
		private function update(e:Event):void
		{

			if (keyLeft)
			{
				this.x -= 10;
			}
			if (keyRight)
			{
				this.x += 10;
			}
				
			
			gravHandler();
		}
		private function onKeyDown(e:KeyboardEvent):void
		{
			
			
			
			if (e.keyCode == Keyboard.A)
			{
				keyLeft = true;
			}
			if ( e.keyCode == Keyboard.D)
			{
				keyRight = true;
			}
			if (e.keyCode == Keyboard.W && this.y +this.height/2 == floor)
			{
				
				zwaartekracht = -20;
			}
		}
		
		private function onKeyUp(e:KeyboardEvent):void
		{
			
			if (e.keyCode == Keyboard.A)
			{
				keyLeft = false;
			}
			if ( e.keyCode == Keyboard.D)
			{
				keyRight = false;
			}
		}
		private function gravHandler():void
		{
			this.y += zwaartekracht;
			if (this.y+this.height /2 <floor)
			{
				zwaartekracht ++;
			}
			else
			{
				zwaartekracht = 0;
				this.y = floor - this.height /2;
			}
			if (this.x - this.width / 2 < 0)
			{
				this.x = this.width / 2 ;
			}
			if ( this.x + this.width / 2 > 1280)
			{
				this.x = 1280 - this.width / 2;
			}
		}
		
	}

}