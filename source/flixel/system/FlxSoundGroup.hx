package flixel.system;

import flixel.group.FlxTypedGroup;

class FlxSoundGroup extends FlxTypedGroup<FlxSound>
{
	public var volume(default, set):Float = 1;

	function set_volume(value:Float):Float
	{
		volume = value;
		for (sound in members)
			if (sound != null)
				sound.volume = value;
		return value;
	}
}
