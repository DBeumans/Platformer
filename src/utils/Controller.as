package utils 
{
	import flash.display.Stage;
	import flash.events.EventDispatcher;
	import flash.ui.Keyboard;
	import flash.events.KeyboardEvent;
	/**
	 * ...
	 * @author Danilo
	 */

	public class Controller extends EventDispatcher
	{
		private var _up:Boolean;
		private var _down:Boolean;
		private var _fire:Boolean;
		private var _left:Boolean;
		private var _right:Boolean;
		private var _upKeyCode:int;
		private var _downKeyCode:int;
		private var _fireKeyCode:int;
		private var _leftKeyCode:int;
		private var _rightKeyCode:int;
		
		
		public function Controller(stage:Stage, up:int = Keyboard.W, down:int = Keyboard.S, fire:int = Keyboard.SPACE, left:int = Keyboard.A, right:int = Keyboard.D) 
		{
			_upKeyCode = up;
			_downKeyCode = down;
			_fireKeyCode = fire;
			_leftKeyCode = left;
			_rightKeyCode = right;
			stage.addEventListener(KeyboardEvent.KEY_DOWN, onDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, onUp);
			
		}
		public function get up():Boolean
		{
			return _up;			
		}
		public function get down():Boolean
		{
			return _down;			
		}
		public function get fire():Boolean
		{
			return _fire;			
		}
		public function get left():Boolean
		{
			return _left;			
		}public function get right():Boolean
		{
			return _right;			
		}
		private function onUp(e:KeyboardEvent):void 
		{
			switch(e.keyCode)
			{
				case _upKeyCode:
					_up = false;
					break;
				case _downKeyCode:
					_down = false;
					break;
				case _fireKeyCode:
					_fire = false;
					break;
				case _leftKeyCode:
					_left = false;
					break;
				case _rightKeyCode:
					_right = false;
					break;
				
				default:
						
				
			}
		}		
		private function onDown(e:KeyboardEvent):void 
		{			
			switch(e.keyCode)
			{
				case _upKeyCode:
					_up = true;
					break;
				case _downKeyCode:
					_down = true;
					break;
				case _fireKeyCode:
					_fire = true;
					break;
				case _leftKeyCode:
					_left = true;
					break;
				case _rightKeyCode:
					_right = true;
					break;
				default:
				
				
			}
		}
		
	}

}