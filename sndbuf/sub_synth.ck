// subtractive synth in class assignment
// Jeff Albert 26 Sept 2013

Noise n => ResonZ f => Envelope e => Gain g => dac;

[ 60, 62, 64, 65, 67, 69, 71, 72] @=> int note[];

1000.0 => f.Q;

20.0 => g.gain;

0 => int i;

while ( i < note.cap() )
{
    Std.mtof( note[i]  ) => f.freq;
    
    e.keyOn();
    
    250::ms => now;
    
    e.keyOff();
    
    50::ms => now;
    
    i++;
    
}