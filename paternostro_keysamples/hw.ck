
// computer keyboard input via terminal
KBHit kb;

// patch
SndBuf b => dac;

// time-loop
while( true )
{
    // wait on event
    kb => now;
    
    "drums.wav" => string filename;
    
    filename => b.read;
    
    Std.mtof((kb.getchar())-100) => b.rate;
    
}
