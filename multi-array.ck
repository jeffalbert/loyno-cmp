//This is a multidimensional array example
//J. Albert 17 Sept 2013

[ [60.,1.,.8], [62.,.5,.8], [0.,1.,0.], [60.,1.,.8] ] @=> float song[][];

500::ms => dur beat;

Wurley a => dac;

0 => int i;

while ( i < 4 )
{
    Std.mtof( song[i][0] ) => a.freq;
    
    <<< song[i][0], "freq" >>>;
    
    song[i][2] => a.gain;
    
    <<< song[i][2], "gain" >>>;
    
    a.noteOn(.3);
    
    song[i][1]::beat => now;
    
    <<< song[i][1], "beat" >>>;
    
    a.noteOff(0);
    
    i++;
}