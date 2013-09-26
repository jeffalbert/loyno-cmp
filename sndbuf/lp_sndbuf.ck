// our patch
SndBuf buffer => LPF lpf => dac;

"4.wav" => buffer.read;

1.0 => buffer.rate;

1 => buffer.loop;

// infinite time-loop
float t;
while( true )
{
    // sweep the cutoff
    Math.sin(t) * 110 => Std.fabs => Std.mtof => lpf.freq;
    // increment t
    .005 +=> t;
    // advance time
    5::ms => now;
}
