VAR HDD_SIZE = 1024
VAR USAGE = 512
VAR INFLUX = 0
VAR INCOME = 300
VAR EXPENSE = 100
VAR DIFF_MIN = 128
VAR DIFF_MAX = 256


-> newday
=== newday
...
~ INCOME -= EXPENSE
It's a new day. Time to get on the {~computer|magic box|work machine|money maker}.
This {~stupid|moronic|idiotic|antiquated|piece of junk} device only has {HDD_SIZE} storage units. I'm using {USAGE} units right now.
~ INFLUX = RANDOM(DIFF_MIN, DIFF_MAX)
{ 
  - INFLUX > HDD_SIZE - USAGE:
    Oh, this is bad. There's not enough space on my computer for all incoming work. 
    ~ INFLUX = HDD_SIZE - USAGE
    { INFLUX mod 2 != 0:
        ~INFLUX += 1
    }
    So only {INFLUX} units have come in. I've lost some potential work.
  - else:
    { INFLUX mod 2 != 0:
        ~INFLUX += 1
    }
    And today {INFLUX} units of spam and documents has landed on my lap.
}
~ USAGE += INFLUX
{~Shit|Farkin' Icehole|Blistering Bloody Barnacles|Sassin' frassin' Rick Dastardly|Kuso wa naka..|Roger me|Slag..slug..yuck|Blooting havens|Poozer|What the taff|Cas Nerada|Googlesnot|Fekt this|Unalive me|Rumble in the Bronx|Jank|Inkle mine hard|Bust appendix|Ugh...Mangal in the Jungle|A licky boom boom dem|This sucks|Fork me hub|Frekt|Frogs|Pantat}.
No use complaining. Time to get to work.
-> work

=== work
-> emails


=== emails
Okay. {~Take it from the top|First up|Starting with..}. Emails.
+ [Read]
    ~ INCOME += 50
    {~My poor brain.|We were meant for more than this.|Sigh...|My soul.|Money get (but at what cost).|I'd rather be doom scrolling...|What the hell am I doing with my life?|I think I just made 50 bucks!|Sob.|Sniff.|My heart.|Mama...|Sadness descends.|Why sorrow tomorrow when you can gray today?}
+ [Delete]
    ~ USAGE -= INFLUX / 2
    Deleted! {~Easy peasy|Fork yeah|Fistbump|Whiskey|Space get|That's the way to do it|Mission Accomplished|Damn Straight}!!
- Okay. Emails done! Next up...documents.
-> documents

=== documents
+ [Process and Earn Money]
    ~ INCOME += 100
    {~Hard work pays off, I think.|This can be fun sometimes.|It's called labor for a reason.|I'm really making an effort here.|Harder, better, faster, stronger.}
+ [Compress New Documents]
    ~ INCOME += 50
    ~ USAGE -= INT(INFLUX / 4)
    Compression takes time but saves some space.
    Looks like I'm only using {USAGE} units now.
+ [Delete New Documents]
    ~ USAGE -= INT(INFLUX / 2)
    Done and done!!
- Okay. Finished.
-> mopup

=== mopup
I still have some time left. 
+ [{~Practice typing|Pretend to work|Write some logs}]
    ~INCOME += 20
+ [{~Compress Data|Delete Residual Data}]
    ~USAGE -= INT(RANDOM(USAGE/4, USAGE/2))
- Okay. I'm done for the day!
I now {~have|got} {INCOME} bucks {~to my name|in my pocket}. Tomorrow, they'll {~yank|jack|take|yoink|snag|swipe} {EXPENSE} of it for {~room and board|rent}.
My computer is using {USAGE} of its {HDD_SIZE} storage units.
Time to go home.
{~Good night|Oyasuminasleep well|Bonne Nuit|Lucky Nocturne|End of Day}.
-> newday
-> DONE



