globalvar hit
with(obj_controller_menu) 
{
    hit = true;    
}
if (hit)
{
    ini_open("Save.sav")
    gold1 = ini_read_real("Profile", "Gold", 0)
    tennis = ini_read_real("Profile", "Tennis", 0)
    if gold1 >= tennis_cost && (tennis = 0)
    {
        ini_write_real("Profile", "Tennis", 1)
        ini_write_real("Profile", "Gold", gold1 - tennis_cost)
    }
    ini_close()
}

