//This is a multidimensional array example
//J. Albert 17 Sept 2013

[ [60.,1.,.8], [62.,.5,.8], [0.,1.,0.], [60.1,1.,.4], 
[60.3,1.,.5], [60.5,.5,.6], [60.7,1.,.7], [60.9,.5,.8] ] @=> float song[][];

500::ms => dur beat;

Wurley a => dac;

0 => int i;

float g;
       
while ( i < song.cap() )
{
    Std.mtof( song[i][0] ) => a.freq;
    
    //<<< song[i][0], "freq" >>>;
    
    song[i][2] => a.gain;
    
    //Math.random2f(0.0, 1.0) => g => a.gain;
    
    <<< g >>>;
    
    a.noteOn(.6);
    
    song[i][1]::beat => now;
    
    //<<< song[i][1], "beat" >>>;
    
    a.noteOff(.5);
    
    i++;
}