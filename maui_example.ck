SinOsc sine => Envelope m => dac;

MAUI_View control_view;
MAUI_LED on_led; MAUI_LED latch_led;
MAUI_Button on_button; MAUI_Button latch;
MAUI_Slider slider;

// set view
control_view.size( 400, 275 );
control_view.name( "sine wav test" );

//slider
slider.range( 200, 2000 );
slider.position( 0, 150 );
slider.name( "frequency" );

control_view.addElement( slider );

// button (noteOn)
on_button.pushType();
on_button.size( 100, 80 );
on_button.position( 0, 0 );
on_button.name( "play" );
control_view.addElement( on_button );

// led
on_led.size( 100, on_led.height() );
on_led.position( 200, 8 );
on_led.unlight();
control_view.addElement( on_led );
latch_led.size( 100, on_led.height() );
latch_led.position( 300, 8 );
latch_led.light();
control_view.addElement( latch_led );

// latch button
latch.toggleType();
latch.size( on_button.width(), on_button.height() );
latch.position( on_button.x() + on_button.width(), on_button.y() );
latch.name( "latch" );
control_view.addElement( latch );

control_view.display();

fun void frequency()
{
while( 1 )
{
    slider.value() => sine.freq;
    slider => now;
}
}

function void controlNoteOn()
{
    while( true )
    {
        // wait for the button to be pushed down
        on_button => now;
        on_led.light();
        m.keyOn();
        
        // wait for button to be released
        on_button => now;
        on_led.unlight();
        m.keyOff();
    }
}

function void controlLatch()
{
    while( true )
    {
        // wait for button to be pushed down
        latch => now;
        //on_led.light();
        on_button.toggleType();
        
        // wait for button to be pushed up
        latch => now;
        //on_led.unlight();
        on_button.pushType();
    }
}

spork ~ frequency();
spork ~ controlNoteOn();
spork ~ controlLatch();

10::minute => now;
