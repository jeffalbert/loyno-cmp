//This is a multidimensional array example
//J. Albert 17 Sept 2013

[ [60.,1.,.8], [62.,.5,.8], [0.,1.,0.], [60.,1.,.4], [60.,1.,.5], [62.,.5,.6], [60.,1.,.7], [62.,.5,.8] ] @=> float song[][];

500::ms => dur beat;

Wurley a => dac;

0 => int i;

while ( i < song.cap() )
{
    Std.mtof( song[i][0] ) => a.freq;
    
    <<< song[i][0], "freq" >>>;
    
    song[i][2] => a.gain;
    
    <<< song[i][2], "gain" >>>;
    
    a.noteOn(.6);
    
    song[i][1]::beat => now;
    
    <<< song[i][1], "beat" >>>;
    
    a.noteOff(.5);
    
    i++;
}