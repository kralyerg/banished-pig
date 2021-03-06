// layout of the entity
ComponentDescription resource
{
	// how often to update
	UpdatePriority _updatePriority = Fifth;
	
	// declare types that will be used
	Description _descriptions
	[
		"value",

		"model",
		"character",
		"animal",
		"select",
		"livestock",
	]
}

ValueDescription value
{
	SpriteSheet _spriteSheet = "UI/PigSpriteSheet.rsc";
	String _spriteName = "PigSmall";
	StringTable _stringTable = "UI/PigStringTable.rsc";
	String _stringName = "Pig";
		
	// how much the item is worth, +- some tolerance
	int _baseValue = 600;

	// how much is sold in a single sale
	int _stackCount = 8;
	int _minStackCount = 6;
}

CharacterDescription character
{
	float _headingOffset = 90.0;
	float _turnFilter = 0.95;
}

SelectDescription select
{
	SpriteSheet _spriteSheet = "UI/PigSpriteSheet.rsc";
	String _spriteName = "Pig";
	StringTable _stringTable = "UI/PigStringTable.rsc";
	String _stringName = "Pig";
	SelectGroup _group = Livestock;
}

AnimalDescription animal
{
	ComponentDescription _rawMaterial 
	[	
		"Template/RawMaterialPork.rsc"
	]
	
	int _roamSize = 5;
	int _requiredArea = 16;
	
	float _maxAge = 6.0;
	float _maxAgeTolerance = 1.0;
	float _ageForOffspring = 0.8;
	float _offspringTerm = 0.6;
	float _offsprintTermTolerance = 0.20;
}

ModelDescription model
{
	MeshGroup _meshes
	[
		{ 
			AnimationGroup _animations = "Models\Animals\Sheep\SheepAnims.rsc";
			GraphicsMesh _mesh 
			[ 
				"Models\Animals\Sheep\SheepMesh.rsc" 
			] 
		}
	]

	int _displayIndex = 0;
	int _subIndex = 0;	
	bool _randomIndex = false;
}

LivestockDescription livestock 
{ 
//	ComponentDescription _additionalRawMaterial = "Template\RawMaterialEgg.rsc";
//	float _additionalCreateInMonths = 1.0;
}
