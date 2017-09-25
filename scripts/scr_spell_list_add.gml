/// @arg number
/// @arg name 
/// @arg icon
/// @arg object
/// @arg cost
/// @arg cooldown
/// @arg damage
/// @arg effect1
/// @arg effect2
/// @arg effect3
/// @arg target_type
/// @arg range

// used to add a spell with each argument filled to the global spell list

var attributes = ds_list_create();
ds_list_add(attributes, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11);
var attributes_length = ds_list_size(attributes);

for (var i = 0; i < attributes_length; i++) { 
    ds_grid_add(global.spell,i,argument0,ds_list_find_value(attributes,i));
}
