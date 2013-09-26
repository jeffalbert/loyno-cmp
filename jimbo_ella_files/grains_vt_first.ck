/*  This is assignment 1  - MUS 7745 - 20 Jan 09 - by Jeff Albert
The assignment is to build a 5 oscillator additive synthesis instrument and play 10 notes with it.  The result is this sort of organ sound playing a sort of chromatic scale. */

//create 5 oscillators, and add a little chorus
SqrOsc s1 => Chorus c => Pan2 p => dac;
SawOsc s2 => c;
SinOsc s3 => c;
SawOsc s4 => c;
SqrOsc s5 => c;

//set chorus depth
.3 => c.modDepth;

//set gain for each oscillator
.0 => float g;
g => s1.gain;
g => s2.gain;
g => s3.gain;
g => s4.gain;
g => s5.gain;

//declare array that will be overtones
float ins[5];

//declare array that will be melody
[ 39, 48, 41, 44, 45, 52, 49 ] @=> int tune[ ];

//set up variable to call from melody array
//0 => int i;

//set up loop
for ( 0 => int note; note <200 ; note++ )
{	
	//random note from tune
	
	Std.rand2( 0, 6 ) => int i;
	
    Std.mtof ( tune [i] + 24 ) => ins[0];
	
	//set overtone ratios
	ins[0]*Std.rand2( 10, 20 ) => ins[1];
	ins[0]*Std.rand2( 10, 20 ) => ins[2];
	ins[0]*Std.rand2( 10, 20 ) => ins[3];
	ins[0]*Std.rand2( 10, 20 ) => ins[4];
	
	//assign frequencies to oscillators
	ins[0] => s1.freq;
	ins[1] => s2.freq;
	ins[2] => s3.freq;
	ins[3] => s4.freq;
	ins[4] => s5.freq;
    
    //randomize pan
    Std.rand2f(-1.0, 1.0) => p.pan;
    
    g + .00025 => g;
    g => s1.gain;
    g => s2.gain;
    g => s3.gain;
    g => s4.gain;
    g => s5.gain;


//start time
Std.rand2( 35,200 )::ms => now;

i++;

}

