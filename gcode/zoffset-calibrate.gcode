M117 Heating up...

M140 S60;    // Set bed to 60C
M190 S60;    // Wait for bed temp
M104 S200;   // Set hotend to 200c
M109 S200 ;  // Wait for hotend temp


M117 Moving Z...
M851 Z0;     // Set the Z offset to zero height
G28;         // Home Z in the middle of the bed
G1 Z0;       // This will move the head to zero height;
M211 S0;     // This will disable the end stops so that you will be able to proceed lower than Z=0



M117 Set Z Offset: 'M851 Z-x.xx' then resume
M0;          // Pause


M117 Finishing up...
M500;        // Store the settings
M211 S1;     // Enable the end stops again
G28;         // Home again

M117 Finished!