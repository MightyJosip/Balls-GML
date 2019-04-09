globalvar hit
globalvar double
globalvar double_level
with(obj_controller_normal) 
{
    hit = true;    
}
if (hit)
{
    double = true
    with (obj_controller_normal)
    {
        alarm[3] = 300 + 300 * double_level
    }
    instance_destroy()
}

