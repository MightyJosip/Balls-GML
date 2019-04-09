globalvar multiplier
globalvar slow
globalvar scr

if (slow = false)
{
    gravity = 0.1
    if (vspeed < 4) vspeed += gravity
}
if (slow = true)
{
    gravity = 0.05
    if (vspeed < 2) vspeed += gravity
    if (vspeed > 2) vspeed = 2
}

if y > 1152
{
    instance_destroy()
    lives -= 1
}

if (click<=0)
{
    instance_destroy()
    score += 10 * multiplier
    scr += 10 * multiplier
}

