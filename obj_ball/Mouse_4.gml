globalvar hit
globalvar multiplier
globalvar scr
globalvar slow
globalvar double
globalvar bounce

with(obj_controller_normal) 
{
    hit = true;    
}

if (hit) and vspeed > 0
{
    if (slow = false)
    {
        if (double = false) and (bounce = false)
        {
            vspeed = -12
            score += 1 * multiplier
            scr += 1 * multiplier
            click -= 1
        }
        if (double = true)
        {
            if (click > 1)
            {
                vspeed = -12
                score += 2 * multiplier
                scr += 2 * multiplier
                click -= 2
            }
            else
            {
                vspeed = -12
                score += 1 * multiplier
                scr += 1 * multiplier
                click -= 1
            }
        }
        
        if (bounce = true)
        {
            vspeed = -16
            score += 1 * multiplier
            scr += 1 * multiplier
            click -= 1
        }
    }
    if (slow = true)
    {
        vspeed = -6
        score += 1 * multiplier
        scr += 1 * multiplier
        click -= 1
    }
}

