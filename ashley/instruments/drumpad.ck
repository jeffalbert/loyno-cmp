Hid hi;
HidMsg msg;

// which keyboard
0 => int device;
// get from command line
if( me.args() ) me.arg(0) => Std.atoi => device;

// open keyboard (get device number from command line)
if( !hi.openKeyboard( device ) ) me.exit();
<<< "keyboard '" + hi.name() + "' ready", "" >>>;
SndBuf q => dac;
SndBuf w => dac;
SndBuf e => dac;
SndBuf r => dac;
SndBuf t => dac;

SndBuf y => dac;
SndBuf u => dac;
SndBuf i => dac;
SndBuf o => dac;
SndBuf p => dac;

SndBuf a => dac;
SndBuf s => dac;
SndBuf d => dac;
SndBuf f => dac;
SndBuf g => dac;

SndBuf h => dac;
SndBuf j => dac;
SndBuf k => dac;
SndBuf l => dac;
SndBuf semi => dac;

SndBuf z => dac;
SndBuf x => dac;
SndBuf c => dac;
SndBuf v => dac;
SndBuf b => dac;

SndBuf n => dac;
SndBuf m => dac;
SndBuf less => dac;
SndBuf great => dac;
SndBuf ques => dac;

"snare1.wav" => q.read;
"snare2.wav" => w.read;
"snare3.wav" => e.read;
"snare4.wav" => r.read;
"snare5.wav" => t.read;

"tom1.wav" => y.read;
"tom2.wav" => u.read;
"tom3.wav" => i.read;
"tom4.wav" => o.read;
"tom5.wav" => p.read;

"kick1.wav" => a.read;
"kick2.wav" => s.read;
"kick3.wav" => d.read;
"kick4.wav" => f.read;
"kick5.wav" => g.read;

"hihat1.wav" => h.read;
"hihat2.wav" => j.read;
"hihat3.wav" => k.read;
"hihat4.wav" => l.read;
"hihat5.wav" => semi.read;

"scratch.wav" => z.read;
"gunshot.wav" => x.read;
"siren.wav" => c.read;
"bongo.wav" => v.read;
"snaps.wav" => b.read;

"shaker.wav" => n.read;
"clap.wav" => m.read;
"cowbell.wav" => less.read;
"pop.wav" => great.read;
"crash.wav" => ques.read;

0 => q.rate;
0 => w.rate;
0 => e.rate;
0 => r.rate;
0 => t.rate;

0 => y.rate;
0 => u.rate;
0 => i.rate;
0 => o.rate;
0 => p.rate;

0 => a.rate;
0 => s.rate;
0 => d.rate;
0 => f.rate;
0 => g.rate;

0 => h.rate;
0 => j.rate;
0 => k.rate;
0 => l.rate;
0 => semi.rate;

0 => z.rate;
0 => x.rate;
0 => c.rate;
0 => v.rate;
0 => b.rate;

0 => n.rate;
0 => m.rate;
0 => less.rate;
0 => great.rate;
0 => ques.rate;

1 => q.loop;
1 => w.loop;
1 => e.loop;
1 => r.loop;
1 => t.loop;

1 => y.loop;
1 => u.loop;
1 => i.loop;
1 => o.loop;
1 => p.loop;

1 => a.loop;
1 => s.loop;
1 => d.loop;
1 => f.loop;
1 => g.loop;

1 => h.loop;
1 => j.loop;
1 => k.loop;
1 => l.loop;
1 => semi.loop;

1 => z.loop;
1 => x.loop;
1 => c.loop;
1 => v.loop;
1 => b.loop;

1 => n.loop;
1 => m.loop;
1 => less.loop;
1 => great.loop;
1 => ques.loop;

fun void soundq()
{
    while( true )
    {
        // wait on the event 'min'
        hi => now;
        while (hi.recv(msg) )
            // get the message(s)
            if (msg.ascii ==81)
            {
                1 => q.rate;
                q.length() => now;
                0 => q.rate;
            }
        }
    }
    
    
    fun void soundw()
    {
        while( true )
        {
            // wait on the event 'min'
            hi => now;
            while (hi.recv(msg) )
                // get the message(s)
                if (msg.ascii ==87)
                {
                    1 => w.rate;
                    w.length() => now;
                    0 => w.rate;
                }
            }
        }
        
        
        fun void sounde()
        {
            while( true )
            {
                // wait on the event 'min'
                hi => now;
                while (hi.recv(msg) )
                    // get the message(s)
                    if (msg.ascii ==69)
                    {
                        1 => e.rate;
                        e.length() => now;
                        0 => e.rate;
                    }
                }
            }
            
            fun void soundr()
            {
                while( true )
                {
                    // wait on the event 'min'
                    hi => now;
                    while (hi.recv(msg) )
                        
                        // get the message(s)
                        if (msg.ascii ==82)
                        {
                            1 => r.rate;
                            r.length() => now;
                            0 => r.rate;
                        }
                    }
                }
                
                fun void soundt()
                {
                    while( true )
                    {
                        // wait on the event 'min'
                        hi => now;
                        while (hi.recv(msg) )
                            
                            // get the message(s)
                            if (msg.ascii ==84)
                            {
                                1 => t.rate;
                                t.length() => now;
                                0 => t.rate;
                            }
                        }
                    }
                    fun void soundy()
                    {
                        while( true )
                        {
                            // wait on the event 'min'
                            hi => now;
                            while (hi.recv(msg) )
                                // get the message(s)
                                if (msg.ascii ==89)
                                {
                                    1 => y.rate;
                                    y.length() => now;
                                    0 => y.rate;
                                }
                            }
                        }
                        
                        
                        fun void soundu()
                        {
                            while( true )
                            {
                                // wait on the event 'min'
                                hi => now;
                                while (hi.recv(msg) )
                                    // get the message(s)
                                    if (msg.ascii ==85)
                                    {
                                        1 => u.rate;
                                        u.length() => now;
                                        0 => u.rate;
                                    }
                                }
                            }
                            
                            
                            fun void soundi()
                            {
                                while( true )
                                {
                                    // wait on the event 'min'
                                    hi => now;
                                    while (hi.recv(msg) )
                                        // get the message(s)
                                        if (msg.ascii ==73)
                                        {
                                            1 => i.rate;
                                            i.length() => now;
                                            0 => i.rate;
                                        }
                                    }
                                }
                                
                                fun void soundo()
                                {
                                    while( true )
                                    {
                                        // wait on the event 'min'
                                        hi => now;
                                        while (hi.recv(msg) )
                                            
                                            // get the message(s)
                                            if (msg.ascii ==79)
                                            {
                                                1 => o.rate;
                                                o.length() => now;
                                                0 => o.rate;
                                            }
                                        }
                                    }
                                    
                                    fun void soundp()
                                    {
                                        while( true )
                                        {
                                            // wait on the event 'min'
                                            hi => now;
                                            while (hi.recv(msg) )
                                                
                                                // get the message(s)
                                                if (msg.ascii ==80)
                                                {
                                                    1 => p.rate;
                                                    p.length() => now;
                                                    0 => p.rate;
                                                }
                                            }
                                        }


fun void sounda()
{
    while( true )
    {
        // wait on the event 'min'
        hi => now;
        while (hi.recv(msg) )
          
            // get the message(s)
            if (msg.ascii== 65)
            {
                1 => a.rate;
                a.length() => now;
                0 => a.rate;
        }
    }
    }


fun void sounds()
{
    while( true )
    {
        // wait on the event 'min'
        hi => now;
        while (hi.recv(msg) )
            
            // get the message(s)
            if (msg.ascii== 83)
            {
                1 => s.rate;
                s.length() => now;
                0 => s.rate;
            }
        }
    }

fun void soundd()
{
    while( true )
    {
        // wait on the event 'min'
        hi => now;
        while (hi.recv(msg) )
            // get the message(s)
            if (msg.ascii ==68)
            {
                1 => d.rate;
                d.length() => now;
                0 => d.rate;
            }
        }
    }
    
fun void soundf()
{
    while( true )
    {
            // wait on the event 'min'
        hi => now;
        while (hi.recv(msg) )
                
                // get the message(s)
             if (msg.ascii ==70)
             {
                1 => f.rate;
                f.length() => now;
                0 => f.rate;
                }
            }
        }
        
fun void soundg()
{
   while( true )
   {
                // wait on the event 'min'
         hi => now;
         while (hi.recv(msg) )
                    
                    // get the message(s)
             if (msg.ascii ==71)
             {
                 1 => g.rate;
                 g.length() => now;
                 0 => g.rate;
            }
        }
    }
    
    fun void soundh()
    {
        while( true )
        {
            // wait on the event 'min'
            hi => now;
            while (hi.recv(msg) )
                
                // get the message(s)
                if (msg.ascii== 72)
                {
                    1 => h.rate;
                    h.length() => now;
                    0 => h.rate;
                }
            }
        }
        
        
        fun void soundj()
        {
            while( true )
            {
                // wait on the event 'min'
                hi => now;
                while (hi.recv(msg) )
                    
                    // get the message(s)
                    if (msg.ascii== 74)
                    {
                        1 => j.rate;
                        j.length() => now;
                        0 => j.rate;
                    }
                }
            }
            
            fun void soundk()
            {
                while( true )
                {
                    // wait on the event 'min'
                    hi => now;
                    while (hi.recv(msg) )
                        // get the message(s)
                        if (msg.ascii ==75)
                        {
                            1 => k.rate;
                            k.length() => now;
                            0 => k.rate;
                        }
                    }
                }
                
                fun void soundl()
                {
                    while( true )
                    {
                        // wait on the event 'min'
                        hi => now;
                        while (hi.recv(msg) )
                            
                            // get the message(s)
                            if (msg.ascii ==76)
                            {
                                1 => l.rate;
                                l.length() => now;
                                0 => l.rate;
                            }
                        }
                    }
                    
                    fun void soundsemi()
                    {
                        while( true )
                        {
                            // wait on the event 'min'
                            hi => now;
                            while (hi.recv(msg) )
                                
                                // get the message(s)
                                if (msg.ascii ==59)
                                {
                                    1 => semi.rate;
                                    semi.length() => now;
                                    0 => semi.rate;
                                }
                            }
                        }
                        fun void soundz()
                        {
                            while( true )
                            {
                                // wait on the event 'min'
                                hi => now;
                                while (hi.recv(msg) )
                                    
                                    // get the message(s)
                                    if (msg.ascii== 90)
                                    {
                                        1 => z.rate;
                                        z.length() => now;
                                        0 => z.rate;
                                    }
                                }
                            }
                            
                            
                            fun void soundx()
                            {
                                while( true )
                                {
                                    // wait on the event 'min'
                                    hi => now;
                                    while (hi.recv(msg) )
                                        
                                        // get the message(s)
                                        if (msg.ascii== 88)
                                        {
                                            1 => x.rate;
                                            x.length() => now;
                                            0 => x.rate;
                                        }
                                    }
                                }
                                
                                fun void soundc()
                                {
                                    while( true )
                                    {
                                        // wait on the event 'min'
                                        hi => now;
                                        while (hi.recv(msg) )
                                            // get the message(s)
                                            if (msg.ascii ==67)
                                            {
                                                1 => c.rate;
                                                c.length() => now;
                                                0 => c.rate;
                                            }
                                        }
                                    }
                                    
                                    fun void soundv()
                                    {
                                        while( true )
                                        {
                                            // wait on the event 'min'
                                            hi => now;
                                            while (hi.recv(msg) )
                                                
                                                // get the message(s)
                                                if (msg.ascii ==86)
                                                {
                                                    1 => v.rate;
                                                    v.length() => now;
                                                    0 => v.rate;
                                                }
                                            }
                                        }
                                        
                                        fun void soundb()
                                        {
                                            while( true )
                                            {
                                                // wait on the event 'min'
                                                hi => now;
                                                while (hi.recv(msg) )
                                                    
                                                    // get the message(s)
                                                    if (msg.ascii ==66)
                                                    {
                                                        1 => b.rate;
                                                        b.length() => now;
                                                        0 => b.rate;
                                                    }
                                                }
                                            }
                                                fun void soundn()
                                                {
                                                    while( true )
                                                    {
                                                        // wait on the event 'min'
                                                        hi => now;
                                                        while (hi.recv(msg) )
                                                            
                                                            // get the message(s)
                                                            if (msg.ascii== 78)
                                                            {
                                                                1 => n.rate;
                                                                n.length() => now;
                                                                0 => n.rate;
                                                            }
                                                        }
                                                    }
                                                    
                                                    
                                                    fun void soundm()
                                                    {
                                                        while( true )
                                                        {
                                                            // wait on the event 'min'
                                                            hi => now;
                                                            while (hi.recv(msg) )
                                                                
                                                                // get the message(s)
                                                                if (msg.ascii== 77)
                                                                {
                                                                    1 => m.rate;
                                                                    m.length() => now;
                                                                    0 => m.rate;
                                                                }
                                                            }
                                                        }
                                                        
                                                        fun void soundless()
                                                        {
                                                            while( true )
                                                            {
                                                                // wait on the event 'min'
                                                                hi => now;
                                                                while (hi.recv(msg) )
                                                                    // get the message(s)
                                                                    if (msg.ascii ==44)
                                                                    {
                                                                        1 => less.rate;
                                                                        less.length() => now;
                                                                        0 => less.rate;
                                                                    }
                                                                }
                                                            }
                                                            
                                                            fun void soundgreat()
                                                            {
                                                                while( true )
                                                                {
                                                                    // wait on the event 'min'
                                                                    hi => now;
                                                                    while (hi.recv(msg) )
                                                                        
                                                                        // get the message(s)
                                                                        if (msg.ascii ==46)
                                                                        {
                                                                            1 => great.rate;
                                                                            great.length() => now;
                                                                            0 => great.rate;
                                                                        }
                                                                    }
                                                                }
                                                                
                                                                fun void soundques()
                                                                {
                                                                    while( true )
                                                                    {
                                                                        // wait on the event 'min'
                                                                        hi => now;
                                                                        while (hi.recv(msg) )
                                                                            
                                                                            // get the message(s)
                                                                            if (msg.ascii ==47)
                                                                            {
                                                                                1 => ques.rate;
                                                                                ques.length() => now;
                                                                                0 => ques.rate;
                                                                            }
                                                                        }
                                                                    }

           
spork ~ soundq();
spork ~ soundw();
spork ~ sounde();
spork ~ soundr();
spork ~ soundt();

spork ~ soundy();
spork ~ soundu();
spork ~ soundi();
spork ~ soundo();
spork ~ soundp();


spork ~ sounda();
spork ~ sounds();
spork ~ soundd();
spork ~ soundf();
spork ~ soundg();

spork ~ soundh();
spork ~ soundj();
spork ~ soundk();
spork ~ soundl();
spork ~ soundsemi();

spork ~ soundz();
spork ~ soundx();
spork ~ soundc();
spork ~ soundv();
spork ~ soundb();

spork ~ soundn();
spork ~ soundm();
spork ~ soundless();
spork ~ soundgreat();
spork ~ soundques();

        
1::hour => now;