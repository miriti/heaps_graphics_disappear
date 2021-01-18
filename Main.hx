package;

import hxd.Key;
import hxd.Event;
import hxd.Window;
import h2d.Graphics;
import h2d.Tile;
import h2d.Bitmap;
import h2d.Object;

class Main extends hxd.App {
	override function init() {
		var object = new Object(s2d);

		new Bitmap(Tile.fromColor(0xff0000, 300, 300), object);

		var graphics = new Graphics(object);
		graphics.beginFill(0x00ff00);
		graphics.drawCircle(150, 150, 150);
		graphics.endFill();

		Window.getInstance().addEventTarget((e:Event) -> {
			switch (e.kind) {
				case EKeyDown:
					if (e.keyCode == Key.SPACE) {
						if (object.parent == null)
							s2d.addChild(object);
						else
							s2d.removeChild(object);
					}
				case _:
			}
		});
	}

	static function main() {
		new Main();
	}
}
