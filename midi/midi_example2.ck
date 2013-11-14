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

SndBuf a => dac;
SndBuf b => dac;

"4.wav" => a.read;
"drums.wav" => b.read;

0 => a.rate;
0 => b.rate;

1 => a.loop;
1 => b.loop;


fun void sound1()
{
// infinite time-loop
while( true )
{
    // wait on the event 'min'
    min => now;

    // get the message(s)
    while( min.recv(msg) )
    {

    while (msg.data1 == 144 && msg.data2 == 36)
        {
        1 => a.rate;
        -1 => b.rate;
        10::samp => now;
    }
    
}
}
}

fun void sound2()
{
    // infinite time-loop
    while( true )
    {
        // wait on the event 'min'
        min => now;
        
        // get the message(s)
        while( min.recv(msg) )
        {

        if (msg.data2 == 37)
        {
            1 => b.rate;
            b.length() => now;
            0 => b.rate;
        }
    }
    }
}

fun void sound3()
{
    // infinite time-loop
    while( true )
    {
        // wait on the event 'min'
        min => now;
        
        // get the message(s)
        while( min.recv(msg) )
        {
            
           if (msg.data1 ==128 && msg.data2 == 36)
    {
        0 => a.rate;
        0 => b.rate;
    }
            }
    }
}

fun void sound4()
{
    // infinite time-loop
    while( true )
    {
        // wait on the event 'min'
        min => now;
        
        // get the message(s)
        while( min.recv(msg) )
        {
            
            if (msg.data2 == 39)
            {
                -1 => b.rate;
                b.length() => now;
                0 => b.rate;
            }
        }
    }
}

spork ~ sound1();
spork ~ sound2();
spork ~ sound3();
spork ~ sound4();

1:: hour => now;
