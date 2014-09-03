PackageFile Pig
{
	String _name = "Pig";
	String _author = "kralyerg";
	String _description = "This mod adds a pig that can be bought at the trading post and raised in pastures.";
	String _icon = "icon.png";
	int _userVersion = 1;

	// all files in resource directory
	String _includeList
	[
		"*"	
	]
	
	// exclude package files, mod files, file used for building packages
	String _excludeList
	[
		"Package_*.crs"
		"*.pkg"
		"*.pkm"
	]
}
