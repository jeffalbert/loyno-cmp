// signal chain: sound buffer to gain to dac
SndBuf buffer => Gain g => dac;

// load sound buffer
"4.wav" => string filename;

filename => buffer.read;

// play sound

1.0 => buffer.rate;

//buffer.samples() => buffer.pos;

//1 => buffer.loop;

//advance time

buffer.length() => now;

//1::hour => now;
