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

ini_open("Save.sav")
var prehighscore = ini_read_real("Profile", "HighscoreFrenzy", 0)
ini_close()

if lives < 0
{
    if (prehighscore<score)
    {
        ini_open("Save.sav")
        var highscore = score
        ini_write_real("Profile", "HighscoreFrenzy", highscore)
        ini_write_real("Profile", "MinuteHighFrenzy", minute)
        ini_write_real("Profile", "SecondHighFrenzy", second)
        ini_close()
    } 
       
    ini_open("Save.sav")
    preminute = ini_read_real("Profile", "MinuteAllFrenzy", 0)
    presecond = ini_read_real("Profile", "SecondAllFrenzy", 0)
    if (presecond + second > 59)
    {
        preminute += 1
        allsecond = presecond + second - 60
    }
    if (presecond + second < 60) allsecond = presecond + second
    allminute = minute + preminute
    ini_write_real("Profile", "MinuteAllFrenzy", allminute)
    ini_write_real("Profile", "SecondAllFrenzy", allsecond)
    
    prescore = ini_read_real("Profile", "ScoreAllFrenzy", 0)
    ini_write_real("Profile", "ScoreAllFrenzy", prescore + score)
    ini_close()
    
    game_restart()
}


