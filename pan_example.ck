// 3 Oct 2013 by Jeff Albert
//This is an example for Pan2, which adds stereo spatialization
//-1.0 is all the way left, 0.0 is center, and 1.0 is all the way right
//This file should sweep the sin wave back and forth


SinOsc a => Pan2 p => dac;

float t;

while (true)
{
    Math.sin(t) => p.pan;
    
    <<< Math.sin(t)>>>;
    
    5::ms => now;
        
    .005 + t => t;
    
}