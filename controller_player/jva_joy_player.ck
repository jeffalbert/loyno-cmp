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

// open joystick 0, exit on fail
if( !hi.openJoystick( device ) ) me.exit();

<<< "joystick '" + hi.name() + "' ready", "" >>>;

// patch
SndBuf b => LPF l => dac;

 b => Gain g => dac;

100 => int paul;

//turn looping on
1 => b.loop;

"drums.wav" => string filename;
    
    filename => b.read;
    
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
                
                if ( msg.which > 1)
                {
                msg.axisPosition * 10 => b.rate;
                }
                else if ( msg.which < 2)
                {
                    (msg.axisPosition * msg.axisPosition * 20000) + paul => l.freq;
                }
            }
            
            // joystick button down
            else if( msg.isButtonDown() )
            {
                <<< "joystick button", msg.which, "down" >>>;
                
                1 => l.gain;
                
                0 => g.gain;
               
            }
            
            // joystick button up
            else if( msg.isButtonUp() )
            {
                <<< "joystick button", msg.which, "up" >>>;
               
               0 => l.gain;
               
               1 => g.gain;
               
            }
            
            // joystick hat/POV switch/d-pad motion
            else if( msg.isHatMotion() )
            {
                <<< "joystick hat", msg.which, ":", msg.idata >>>;
            }
        }
    }


