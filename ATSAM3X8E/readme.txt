/**************************************************************************************
 * 
 * For use in TTK4155 Embedded and Industrial Computer Systems Design
 * NTNU - Norwegian University of Science and Technology
 *
 *
**************************************************************************************/

This folder includes files for use on the Arduino DUE:
"Device_Startup" include the files neccecarry to 
"simple_delay" includes a simple delay function for waiting (aproximately) a number of milli- or microseconds by inserting __nop__ operations. 
"uart_and_printf" includes a simple interface for using printf via UART on the Arduino DUE. 

NOTE: A known bug in the printf library is that the compiler crashes if you put "\n", "\r" etc. in the string. 
A quick fix is to use printf(" ... %c\n\r",' '), which insert a space at the end of the line.  

Remember to import the files in your code (and include them in the Makefile if you are using make)