/// scrCompCreateWurst()
/// Creates a new wurst object for the competitive eater

var wurstObjectType = choose(objCompBratwurst);

var itsTheWurst = instance_create_layer(irandom_range(80, 120), room_height/2 + irandom_range(-20, 20), "Instances", wurstObjectType);

return itsTheWurst;