//This is the intro/outro low bowl melody


	BandedWG i => JCRev r => Pan2 p => Gain g => dac;

	.25 => g.gain;
    .2 => r.mix;
    .5 => i.gain;
	1 => i.preset;


        Std.mtof ( 49 ) => i.freq;
        -1.0 => p.pan;
		i.noteOn ( 20.0 );
		1::second => now;
		
		Std.mtof ( 52 ) => i.freq;
        1.0 => p.pan;
		i.noteOn ( 20.0 );
		1::second => now;
		
		Std.mtof ( 45 ) => i.freq;
        0.0 => p.pan;
        i.noteOn ( 20.0 );
		2::second => now;
		
		
		Std.mtof ( 44 ) => i.freq;
        -1.0 => p.pan;
        i.noteOn ( 20.0 );
		1::second => now;
		
		Std.mtof ( 41 ) => i.freq;
        0.0 => p.pan;
        i.noteOn ( 20.0 );
		1::second => now;
		
		Std.mtof ( 48 ) => i.freq;
        1.0 => p.pan;
        i.noteOn ( 20.0 );
		1::second => now;
        
        Std.mtof ( 39 ) => i.freq;
        0.0 => p.pan;
		i.noteOn ( 20.0 );
		10::second => now;
		