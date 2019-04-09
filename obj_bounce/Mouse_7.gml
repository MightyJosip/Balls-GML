globalvar hit
globalvar bounce
globalvar bounce_level
with(obj_controller_normal) 
{
    hit = true;    
}
if (hit)
{
    bounce = true
    with (obj_controller_normal)
    {
        alarm[3] = 300 + 300 * bounce_level
    }
    instance_destroy()
}

