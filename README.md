# Real Time Resource Locking Experiment
This repository contains the source files used to conduct an experiment to replicate, on a higher level, the problem of jobs overruns while dealing with shared resources.  
The statement of the problem, along with a proposed solutions, can be found on [this paper](https://www.cs.unc.edu/~anderson/papers/ecrts22-long.pdf).  

Roughly, the experiment aims to reproduce a scenario in which a faulty task cannot complete before its deadline, causing a domino effect, which causes other correct tasks to miss their deadlines as well.

Each task is defined by the following parameters:
- Period, in seconds;
- Execution Time, in seconds;
- Resource Execution Time, in seconds (not included in Execution Time).

Let's assume implicit deadlines.

4 tasks are defined:
- A (7, 1, -): performs some computation on its own;
- B (10, 1, 1): reads the value from a shared resource and then performs some computation;
- C (13, 2, 1): reads the value from a shared resource and then performs some computation;
- D (20, 1, 2): performs some computation to calculate the value to write on the shared resource.

The shared resource consists of a value and it provides facilities to read and write that value. The access is mutually exclusive, therefore it can be accesed by one job at a time.

To reproduce the problem, the shared resource performs a long write operation on a particular scenario (when the value to write corresponds to a certain number). Therefore, if task D writes the "unlucky" value on the shared resource, this will cause an overrun on itself and also on task B and C.

To simulate the computations, a specific procedure performs a while-loop until when a specific number of seconds has been passed since the beginning of the procedure.

This experiment is part of a technical report, issued as a final assessment of the course "Real-time Kernels and Systems", Master Degree in Computer Science, University of Padua.
