globalvar minute
globalvar second

if (scr div 1000) >= 1
{
    ini_open("Save.sav")
    var gold = ini_read_real("Profile", "Gold", 0)
    ini_write_real("Profile", "Gold", gold+1)
    ini_close()
    scr -= 1000
}

if lives < 0
{
    if (scr_load()<score)
    {
        scr_save()
        ini_open("Save.sav")
        ini_write_real("Profile", "MinuteHigh", minute)
        ini_write_real("Profile", "SecondHigh", second)
        ini_close()
    } 
       
    ini_open("Save.sav")
    preminute = ini_read_real("Profile", "MinuteAll", 0)
    presecond = ini_read_real("Profile", "SecondAll", 0)
    if (presecond + second > 59)
    {
        preminute += 1
        allsecond = presecond + second - 60
    }
    if (presecond + second < 60) allsecond = presecond + second
    allminute = minute + preminute
    ini_write_real("Profile", "MinuteAll", allminute)
    ini_write_real("Profile", "SecondAll", allsecond)
    
    prescore = ini_read_real("Profile", "ScoreAll", 0)
    ini_write_real("Profile", "ScoreAll", prescore + score)
    ini_close()
    
    game_restart()
}


