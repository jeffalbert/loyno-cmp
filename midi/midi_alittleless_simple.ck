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
              if(msg.data2 ==35)
              {
                  1 => a.rate;
              <<<"playing">>>;
              }
              else if(msg.data2 ==36)
              {
                  1 => b.rate;
                  <<<"playing">>>;
              }
              
                       
             }
             else if (msg.data1 == 128)
             {
                 if(msg.data2 ==35)
                 {
                     0 => a.rate;
                     <<<"not playing">>>;
                 }
                 else if(msg.data2 ==36)
                 {
                     0 => b.rate;
                     <<<"not playing">>>;
                 }
             }
        }
    }
}

spork ~ pad1();

2::minute => now;
