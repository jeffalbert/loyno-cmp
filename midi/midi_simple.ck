// number of the device to open (see: chuck --probe)
0 => int device;
// get command line
if( me.args() ) me.arg(0) => Std.atoi => device;

// the midi event
MidiIn min;
// the message for retrieving data
MidiMsg msg;

// open the device
if( !min.open( device ) ) me.exit();

// print out device that was opened
<<< "MIDI device:", min.num(), " -> ", min.name() >>>;

SinOsc a => Envelope e => dac;

fun void pad1()
{
    // infinite time-loop
    while( true )
    {
        // wait on the event 'min'
        min => now;
        <<< msg.data1, msg.data2, msg.data3 >>>;
        
        // get the message(s)
        while( min.recv(msg) )
        {
            
            if (msg.data1 == 144)
            {
              Std.mtof(msg.data2 + 12) => a.freq;
              e.keyOn();
              <<<"playing">>>;
              
                       
             }
             else if (msg.data1 == 128)
             {
                 e.keyOff();
             }
        }
    }
}

spork ~ pad1();

2::minute => now;
