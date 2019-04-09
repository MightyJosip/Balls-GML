rand = irandom_range(1, 3)
if (rand = 1)
{
    instance_create(random_range(48, 536), -48, obj_slow)
}
if (rand = 2)
{
    instance_create(random_range(48, 536), -48, obj_double)
}
if (rand = 3)
{
    instance_create(random_range(48, 536), -48, obj_bounce)
}
alarm[2] = 3600 - (300 * (spawn_rate_level - 1))

