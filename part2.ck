SqrOsc b => Envelope e => dac;

0.5 => b.gain;

250::ms => dur beat;

0 => int i;

[ 60, 60, 67, 67, 69, 69, 67, 65, 65, 64, 64, 62, 62, 60] @=> int notes[];

[ 1, 1, 1, 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, 4] @=> int rhythm[];

while ( i < notes.cap() )
{
    Std.mtof(notes[i]) => b.freq;
    
    e.keyOn();
    
    (rhythm[i]::beat - 30::ms) => now;
    
    e.keyOff();
    
    30::ms => now;
    
    i++;
    
}