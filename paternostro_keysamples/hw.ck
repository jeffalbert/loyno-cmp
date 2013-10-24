
// computer keyboard input via terminal
KBHit kb;

// patch
SndBuf b => dac;

//turn looping on
1 => b.loop;

// time-loop
while( true )
{
    // wait on event
    kb => now;
    
    "drums.wav" => string filename;
    
    filename => b.read;
    
    ((kb.getchar())-100) => b.rate;
    
    <<< b.rate() >>>;
    
}
