# Resources

For security and perhaps other tutorials as well.

## shell.c



## get.py

Python script to download stuff

## Steps for shellcode

Usually the shellcode stops working as you progress through these steps because reasons.

### Step 1.

Execute shellcode as function pointer, as shown on shellstorm website

### Step 2.

place shellcode in a global variable
overflow buffer return address to point to the global variable
hopefully execute it and get a shell.

### Step 3.

Memcpy the shellcode into the buffer.
etc.

### Step 4.

Place a sled of NOP's at the start of the shellcode, so that if our return address points somewhere in this sled, it will execute them, and then eventually start executing the shellcode.

NOP = '\x90'


