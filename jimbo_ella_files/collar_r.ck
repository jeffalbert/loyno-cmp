//collar jingle sound for fixed media piece

//create signal path

SndBuf buf;

"collar_jingle.wav" => buf.read;


 buf => Envelope e => dac.right;

buf => Delay d => Gain g => d => dac.left;

.75 => g.gain;

75::ms => d.delay;

e.keyOn();



5::second => now;

e.keyOff();

1::samp => now;
