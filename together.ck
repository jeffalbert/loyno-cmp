fun void part1()
{

SinOsc a => Envelope e => dac;

250::ms => dur beat;

0 => int i;

[ 60, 60, 67, 67, 69, 69, 67, 65, 65, 64, 64, 62, 62, 60] @=> int notes[];

[ 1, 1, 1, 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, 4] @=> int rhythm[];

while ( i < notes.cap() )
{
    Std.mtof(notes[i]) => a.freq;
    
    e.keyOn();
    
    (rhythm[i]::beat - 30::ms) => now;
    
    e.keyOff();
    
    30::ms => now;
    
    i++;
    
}
}

fun void part2()
{

SqrOsc b => Envelope e2 => dac;

0.5 => b.gain;

250::ms => dur beat;

0 => int i2;

[ 60, 60, 67, 67, 69, 69, 67, 65, 65, 64, 64, 62, 62, 60] @=> int notes2[];

[ 1, 1, 1, 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, 4] @=> int rhythm2[];

while ( i2 < notes2.cap() )
{
    Std.mtof(notes2[i2]) => b.freq;
    
    e2.keyOn();
    
    (rhythm2[i2]::beat - 30::ms) => now;
    
    e2.keyOff();
    
    30::ms => now;
    
    i2++;
    
}
}

spork ~ part1();

1000::ms => now;

spork ~ part2();

1000::ms => now;

spork ~ part1();

4::minute => now;