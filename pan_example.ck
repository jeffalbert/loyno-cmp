SinOsc a => Pan2 p => dac;

float t;

while (true)
{
    Math.sin(t) => p.pan;
    
    <<< Math.sin(t)>>>;
    
    5::ms => now;
        
    .005 + t => t;
    
}