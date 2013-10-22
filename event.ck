// the event
KBHit kb;

//instrument

Rhodey a => dac;

// time-loop
while( true )
{
    // wait on kbhit event
    kb => now;
    
    Std.mtof((kb.getchar())-24) => a.freq;
    a.noteOn(.8);

    // potentially more than 1 key at a time
    while( kb.more() )
    {
        // print key value
        <<< "ascii: ", kb.getchar() >>>;
    }
    
}

