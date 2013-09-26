Instructions for "Jimbo and Ella Go For A Walk"
composed by Jeff Albert, Spring 2009
jalber4@cct.lsu.edu
(985) 966-6093

Make sure all of the files from the zip are in one directory (in all probability they did unzip to a single directory)

In terminal:

% cd (the directory that has the files for the piece)
% chuck play.ck

That's it, it should play. The play.ck file is just a timer that launches the each individual event at the right time. There is a wav file (collar_jingle.wav) that collar_l.ck and collar_r.ck refer to. All of the grains* and melody* files use chuck synthesis objects. If you want to play one individual event, just:

% chuck whateverfileyouwanttohear.ck 

In miniaudicle:

Once you open miniaudicle, go to Preferences > Miscellaneous and set the current directory to the directory that contains the files for the piece. In the Virtual Machine window, click on Start Virtual Machine. Open play.ck, and click the big green plus sign in the upper left. The piece should play. Open any of the other *.ck files and click the green plus sign to hear just that file.

If you have any questions, feel free to get in touch.