//this is  a Logitech dual action  controller
//sample player based on code stolen from the examples
//and David Paternostro's key player

// make HidIn and HidMsg
Hid hi;
HidMsg msg;

// which joystick
0 => int device;
// get from command line
if( me.args() ) me.arg(0) => Std.atoi => device;

// modulator to carrier
// SndBuf l => SndBuf k => SndBuf a => SndBuf s => SndBuf c => Envelope e => dac;

// open joystick 0, exit on fail
if( !hi.openJoystick( device ) ) me.exit();

<<< "joystick '" + hi.name() + "' ready", "" >>>;

// variables
int base;
float a0;
float a1;
float a2;
int count;

// set( base, a0, a1, a2 );

// patch
SndBuf l => dac;
SndBuf k => dac;
SndBuf a => dac;
SndBuf s => dac;
SndBuf c => dac;

//turn looping on
1 => l.loop;

"lup.wav" => string loop1;
"k.wav" => string kick;
"a.wav" => string ah;
"s.wav" => string snare;
"c.wav" => string clap;



// infinite event loop
while( true )
{
    // wait on HidIn as event
    hi => now;

    // messages received
    while( hi.recv( msg ) )
    {
        // joystick axis motion
        if( msg.isAxisMotion() )
        {
            <<< "joystick axis", msg.which, ":", msg.axisPosition >>>;
           msg.axisPosition + 1 => l.rate;
        }
        
        // joystick button down
        else if( msg.isButtonDown() )
        {
           <<< "joystick button", msg.which, "down" >>>;
           
          {
         if(msg.which == 9 )
            loop1 => l.read;
         if(msg.which == 1 )
               kick => k.read;
         if(msg.which == 3 )
               ah => a.read;
         if(msg.which == 2 )
               snare => s.read;
         if(msg.which == 0 )
               clap => c.read;
          }   
            

        }
        
        // joystick button up
        else if( msg.isButtonUp() )
        {
            <<< "joystick button", msg.which, "up" >>>;

        }
        
        // joystick hat/POV switch/d-pad motion
        else if( msg.isHatMotion() )
        {
            <<< "joystick hat", msg.which, ":", msg.idata >>>;
        }
    }
    
}

