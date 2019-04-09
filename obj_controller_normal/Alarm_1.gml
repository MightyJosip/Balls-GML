var len = ds_list_size(available_balls)
var number = irandom(len-1)
var image = ds_list_find_value(available_balls, number)

with (instance_create(random_range(128, 472), -128, obj_ball))
{
    image_index = image
}

alarm[1] = 240

