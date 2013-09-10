/* This is a file written by Jeff Albert, on 9 Sept 2013, to test
the Wurley STK Instrument. It is simply a simple way to plug in
new parameters, and hear the changes. */

Wurley w => dac;

22 => w.lfoSpeed; //modulation speed in Hz
1.0 => w.lfoDepth; //mod depth between 0.0 - 1.0

500::ms => dur beat;

0 => int i;

[ 60, 62, 64, 65, 67, 69, 71, 72] @=> int notes[];

[ 2, 1, 1, 1, 1, 1, 1, 2] @=> int rhythm[];

while ( i < notes.cap() )
{
    Std.mtof(notes[i]) => w.freq;
    
    w.noteOn(.8);
    
    (rhythm[i]::beat - 30::ms) => now;
    
    w.noteOff(.8);
    
    30::ms => now;
    
    i++;
    
}