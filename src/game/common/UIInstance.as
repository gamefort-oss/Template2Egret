package game.common
{
	import game.core.manager.UIEventsRegisterManager;
	import game.view.map.AlertPage;
	import game.view.map.MapPage;
	import game.view.map.NewMapPage;

	public class UIInstance
	{		
		private var _mapPage:MapPage;
		/**招财符*/
		public function get mapPage():MapPage
		{
			if(_mapPage == null)
			{
				_mapPage = new MapPage();
				//注册事件监听
				UIEventsRegisterManager.registerUI(_mapPage, MapPage);
			}
			return _mapPage;
		}
		
		private var _alertPage:AlertPage;
		/**提示面板*/
		public function get alertPage():AlertPage
		{
			if(_alertPage == null)
			{
				_alertPage = new AlertPage();
				//注册事件监听
				UIEventsRegisterManager.registerUI(_alertPage, AlertPage);
			}
			return _alertPage;
		}
		
		private var _newMapPage:NewMapPage;
		/**地图界面*/
		public function get newMapPage():NewMapPage
		{
			if(_newMapPage == null)
			{
				_newMapPage = new NewMapPage();
				//注册事件监听
				UIEventsRegisterManager.registerUI(_newMapPage, NewMapPage);
			}
			return _newMapPage;
		}
	}
}