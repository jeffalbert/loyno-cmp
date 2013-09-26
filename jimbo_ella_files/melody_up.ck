//This is the intro/outro low bowl melody


	BandedWG i => JCRev r => ResonZ f => Pan2 p => Gain g => dac;

	.25 => g.gain;
    .2 => r.mix;
    .5 => i.gain;
	1 => i.preset;
    220 => f.freq;
    3 => f.Q;


        Std.mtof ( 39 + 12 ) => i.freq;
        -1.0 => p.pan;
		i.noteOn ( 20.0 );
		1::second => now;
		
		Std.mtof ( 48 + 12 ) => i.freq;
        1.0 => p.pan;
		i.noteOn ( 20.0 );
		1::second => now;
		
		Std.mtof ( 41 + 12 ) => i.freq;
        0.0 => p.pan;
        i.noteOn ( 20.0 );
		2::second => now;
		
		
		Std.mtof ( 44 + 12 ) => i.freq;
        -1.0 => p.pan;
        i.noteOn ( 20.0 );
		1::second => now;
		
		Std.mtof ( 45 + 12 ) => i.freq;
        0.0 => p.pan;
        i.noteOn ( 20.0 );
		1::second => now;
		
		Std.mtof ( 52 + 12 ) => i.freq;
        1.0 => p.pan;
        i.noteOn ( 20.0 );
		1::second => now;
        
        Std.mtof ( 49 + 12 ) => i.freq;
        0.0 => p.pan;
		i.noteOn ( 20.0 );
		10::second => now;
		