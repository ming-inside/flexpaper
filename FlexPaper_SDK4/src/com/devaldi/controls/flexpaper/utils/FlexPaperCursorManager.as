/* 
Copyright 2009 Erik Engström

This file is part of FlexPaper.

FlexPaper is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, version 3 of the License.

FlexPaper is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with FlexPaper.  If not, see <http://www.gnu.org/licenses/>.	
*/


package com.devaldi.controls.flexpaper.utils
{
	import com.devaldi.controls.flexpaper.resources.MenuIcons;
	
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.ui.Mouse;
	import flash.ui.MouseCursor;
	import flash.ui.MouseCursorData;
	
	public class FlexPaperCursorManager {
		public static const AUTO:String					= MouseCursor.AUTO;
		public static const GRAB:String 				= "handGrab";
		public static const GRABBING:String 			= "handGrabbing";				
		public static const TEXT_SELECT_CURSOR:String   = "textSelectCursor";
		
		public function CursorManager() {
			
		}
		
		public static function init():void {
			initCursors();
		}
		
		private static function initCursors():void {
			var vector:Vector.<int> = new Vector.<int>();

			var c1:Vector.<BitmapData> = new Vector.<BitmapData>(1,true);
			c1[0] = new MenuIcons.GRAB().bitmapData;
			var mcd1:MouseCursorData = new MouseCursorData();
			mcd1.hotSpot = new Point(0,0);
			mcd1.data = c1;
			Mouse.registerCursor(GRAB, mcd1);
			
			var c2:Vector.<BitmapData> = new Vector.<BitmapData>(1,true);
			c2[0] = new MenuIcons.GRABBING().bitmapData;
			var mcd2:MouseCursorData = new MouseCursorData();
			mcd2.hotSpot = new Point(0,0);
			mcd2.data = c2;
			Mouse.registerCursor(GRABBING, mcd2);
			
			var c3:Vector.<BitmapData> = new Vector.<BitmapData>(1,true);
			c3[0] = new MenuIcons.TEXT_SELECT_CURSOR().bitmapData;
			var mcd3:MouseCursorData = new MouseCursorData();
			mcd3.hotSpot = new Point(0,0);
			mcd3.data = c3;
			Mouse.registerCursor(TEXT_SELECT_CURSOR, mcd3);
		}
	}
}