#Compare our run with the original. Ours generates same accuracy much quicker. Our Machine must be stronger?



Running stream with numaopts <  --physcpubind=0-7,16-23 --localalloc  >, started at Sat Jul 12 10:50:03 CDT 2014
Generated on 2014-07-12:15:50:03 GMT
-------------------------------------------------------------
This system uses 8 bytes per DOUBLE PRECISION word.
-------------------------------------------------------------
Array size = 1650163200, Offset = 0
Total memory required = 36.8840 GiB.
Each test is run 10 times, but only
the *best* time for each is used.
-------------------------------------------------------------
Number of Threads requested = 16
-------------------------------------------------------------
Your clock granularity/precision appears to be 1 microseconds.
Each test below will take on the order of 768082 microseconds.
   (= 768082 clock ticks)
Increase the size of the arrays if this shows that
you are not getting at least 20 clock ticks per test.
-------------------------------------------------------------
WARNING -- The above is only a rough guideline.
For best results, please be sure you know the
precision of your system timer.
-------------------------------------------------------------
Function      Rate (GB/s)   Avg time     Min time     Max time
Copy:          22.5158       1.1730       1.1726       1.1738
Scale:         22.5362       1.1725       1.1716       1.1731
Add:           25.1137       1.5778       1.5770       1.5786
Triad:         25.1348       1.5766       1.5757       1.5774
-------------------------------------------------------------
Results Comparison: 
        Expected  : 1153300781250.000000 230660156250.000000 307546875000.000000 
        Observed  : 1153300781250.000000 230660156250.000000 307546875000.000000 
Solution Validates
-------------------------------------------------------------

--------------------------------------------------------------------------------
Running stream with numaopts <  --physcpubind=0-7,16-23 --localalloc  >, started at Thu Apr 15 21:14:34 CDT 2021

--------------------------------------------------------------------------------
Running stream with numaopts <  --physcpubind=0-7,16-23 --localalloc  >, started at Thu Apr 15 21:16:08 CDT 2021
Generated on 2021-04-16:02:16:08 GMT
-------------------------------------------------------------
This system uses 8 bytes per DOUBLE PRECISION word.
-------------------------------------------------------------
Array size = 1650163200, Offset = 0
Total memory required = 36.8840 GiB.
Each test is run 10 times, but only
the *best* time for each is used.
-------------------------------------------------------------
Number of Threads requested = 16
-------------------------------------------------------------
Your clock granularity/precision appears to be 1 microseconds.
Each test below will take on the order of 249617 microseconds.
   (= 249617 clock ticks)
Increase the size of the arrays if this shows that
you are not getting at least 20 clock ticks per test.
-------------------------------------------------------------
WARNING -- The above is only a rough guideline.
For best results, please be sure you know the
precision of your system timer.
-------------------------------------------------------------
Function      Rate (GB/s)   Avg time     Min time     Max time
Copy:          68.7752       0.3848       0.3839       0.3860
Scale:         68.3706       0.3866       0.3862       0.3869
Add:           76.2315       0.5205       0.5195       0.5216
Triad:         76.2958       0.5197       0.5191       0.5201
-------------------------------------------------------------
Results Comparison: 
        Expected  : 1153300781250.000000 230660156250.000000 307546875000.000000 
        Observed  : 1153300781250.000000 230660156250.000000 307546875000.000000 
Solution Validates
-------------------------------------------------------------
