---
title: "Libraries"
sidebar_position: 4
---

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

    - File IO
    - Exceptions
    - Logging
    - Threading
    - Streams

<Tabs>
<TabItem value="IO" label="File IO">

String endOfFile = readLine(null);

| Class              | Description                                                                                                                                             |
|--------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|
| File Reader        | Open a file provided and read 1 character at a time and return it                                                                                       |
| Buffered Reader    | Wrapper around FileReader. Number of characters into a buffer (temporary storage) before displaying it. Read the file line by line until "end of file". |

//Input File and Read It


        File  = new FIle ("myFile/txt");
        BufferedReader bf = new BufferedReader(reader);
        Scanner scan = new Scanner (file);
        //Read each line while there is something there
            String lineOfText = "";
            While (lineOfText = bufferedReader.readLine() != null)
             
            bufferedReader.close();


//Export to new file


String fileContent = """;
While (fileContent = fileContent.concat(scan.nextLine() + "\n");

//Write to file

Filewriter writer = new FileWriter("pathway");
Writer.write(FileContext);
writer.close();

</TabItem>
<TabItem value="thread" label="Thread">

##  THREAD

Timeslicing allows multiple threads to run. Goes from 8Ghz (8things) at the same time to having 100s of things going on.


//Create a thread
Public class myThread extends Thread
// (Running)Make thread run
Public void run()

//(RUN)Call start to activate run method above
MyThread mythread = new MyThread();
// (RUNNABLE/READY) Make thread available to run
mythread.start();
// (Terminated/Dead) Finish the thread
mythread.run()finished;

Methods

    Start
    Run
    Sleep: finishes sleep then joins thread queue
    Join


HAZARDS: Race Conditions


    Deadlock
    
    2 threads, both of which are holding a key the other thread wants
    
    
    Livelock
    
    Similar to a deadlock, except that the state of the 2 processes involved in the livelock constantly changes with regards 
    to the other process.
    
    
    Starvation
    
    Process is perpetually denied necessary resources. Without those resources, the program can never finish its task.
    Starvation is related to deadlock.



Solutions

    Locks
    Lock an object for you to use then make it available to other threads when done.
    
    Synchronization
    Blocks other threads/method from calling the thread. Use where a shared object contains multiple variables whose
    values are independent of each other.

    Atomic Operations

    Wait/Notify
    When a thread is working and it has a lock, the thread can be paused, the lock can be handed temporarily to another 
    thread until it calls notify and unpauses the other thread.

</TabItem>
</Tabs>





