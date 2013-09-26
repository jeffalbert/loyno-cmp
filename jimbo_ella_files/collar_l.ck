//collar jingle sound for fixed media piece

//create signal path

SndBuf buf => Envelope e => dac.left;

buf => Delay d => Gain g => d => dac.right;

.75 => g.gain;

75::ms => d.delay;

e.keyOn();

"collar_jingle.wav" => buf.read;

5::second => now;

e.keyOff();

1::samp => now;
