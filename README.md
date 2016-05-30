# network-watchdog

Comcast's Technicolor wireless routers are broken.


### Observations

Packet loss over WiFi hovers around 25%. 

This makes all UDP traffic totally unreliable (FaceTime, Video Streaming) and also often causes TCP downloads (over HTTP, for example) to fail, especially if they're larger than 100 MB


### Test Setup

* Technicolor TC8305C Modem & Wireless Router
* Stream same low bitrate video through (bitrate unknown)


### Trials

#### Wireless - Trail 1

```
Trial: Wireless - Light Streaming

Started 2016-05-30 15:31:40 -0700

Duration: 4.16s     Received: 0     Dropped: 1     tAVG=ms        tMIN=ms        tMAX=ms        Loss 100.0%    Worst Streak: 1 dropped packets   
Duration: 7.89s     Received: 1     Dropped: 1     tAVG=294.0ms   tMIN=294ms     tMAX=294ms     Loss 50.0%     Worst Streak: 1 dropped packets   
Duration: 10.0s     Received: 2     Dropped: 1     tAVG=367.5ms   tMIN=294ms     tMAX=441ms     Loss 33.33%    Worst Streak: 1 dropped packets   
Duration: 13.67s    Received: 3     Dropped: 1     tAVG=264.0ms   tMIN=57ms      tMAX=441ms     Loss 25.0%     Worst Streak: 1 dropped packets   
Duration: 17.14s    Received: 4     Dropped: 1     tAVG=214.75ms  tMIN=57ms      tMAX=441ms     Loss 20.0%     Worst Streak: 1 dropped packets   
Duration: 23.74s    Received: 4     Dropped: 2     tAVG=214.75ms  tMIN=57ms      tMAX=441ms     Loss 33.33%    Worst Streak: 1 dropped packets   
Duration: 25.92s    Received: 4     Dropped: 3     tAVG=214.75ms  tMIN=57ms      tMAX=441ms     Loss 42.86%    Worst Streak: 2 dropped packets   
Duration: 29.95s    Received: 5     Dropped: 3     tAVG=215.0ms   tMIN=57ms      tMAX=441ms     Loss 37.5%     Worst Streak: 2 dropped packets   
Duration: 32.14s    Received: 6     Dropped: 3     tAVG=234.0ms   tMIN=57ms      tMAX=441ms     Loss 33.33%    Worst Streak: 2 dropped packets   
Duration: 34.81s    Received: 7     Dropped: 3     tAVG=207.57ms  tMIN=49ms      tMAX=441ms     Loss 30.0%     Worst Streak: 2 dropped packets   
Duration: 37.03s    Received: 8     Dropped: 3     tAVG=226.88ms  tMIN=49ms      tMAX=441ms     Loss 27.27%    Worst Streak: 2 dropped packets   
Duration: 41.0s     Received: 9     Dropped: 3     tAVG=220.67ms  tMIN=49ms      tMAX=441ms     Loss 25.0%     Worst Streak: 2 dropped packets   
Duration: 44.84s    Received: 10    Dropped: 3     tAVG=229.7ms   tMIN=49ms      tMAX=441ms     Loss 23.08%    Worst Streak: 2 dropped packets   
Duration: 50.14s    Received: 10    Dropped: 4     tAVG=229.7ms   tMIN=49ms      tMAX=441ms     Loss 28.57%    Worst Streak: 2 dropped packets   
Duration: 53.99s    Received: 11    Dropped: 4     tAVG=256.18ms  tMIN=49ms      tMAX=521ms     Loss 26.67%    Worst Streak: 2 dropped packets   
Duration: 56.04s    Received: 12    Dropped: 4     tAVG=259.0ms   tMIN=49ms      tMAX=521ms     Loss 25.0%     Worst Streak: 2 dropped packets   
Duration: 58.83s    Received: 13    Dropped: 4     tAVG=301.0ms   tMIN=49ms      tMAX=805ms     Loss 23.53%    Worst Streak: 2 dropped packets   
Duration: 64.65s    Received: 13    Dropped: 5     tAVG=301.0ms   tMIN=49ms      tMAX=805ms     Loss 27.78%    Worst Streak: 2 dropped packets   
Duration: 69.14s    Received: 14    Dropped: 5     tAVG=281.86ms  tMIN=33ms      tMAX=805ms     Loss 26.32%    Worst Streak: 2 dropped packets   
Duration: 74.14s    Received: 14    Dropped: 6     tAVG=281.86ms  tMIN=33ms      tMAX=805ms     Loss 30.0%     Worst Streak: 2 dropped packets   
Duration: 78.92s    Received: 15    Dropped: 6     tAVG=271.93ms  tMIN=33ms      tMAX=805ms     Loss 28.57%    Worst Streak: 2 dropped packets   
Duration: 84.2s     Received: 15    Dropped: 7     tAVG=271.93ms  tMIN=33ms      tMAX=805ms     Loss 31.82%    Worst Streak: 2 dropped packets   
Duration: 88.68s    Received: 16    Dropped: 7     tAVG=301.81ms  tMIN=33ms      tMAX=805ms     Loss 30.43%    Worst Streak: 2 dropped packets   
Duration: 93.86s    Received: 16    Dropped: 8     tAVG=301.81ms  tMIN=33ms      tMAX=805ms     Loss 33.33%    Worst Streak: 2 dropped packets   
Duration: 98.01s    Received: 17    Dropped: 8     tAVG=305.59ms  tMIN=33ms      tMAX=805ms     Loss 32.0%     Worst Streak: 2 dropped packets   
Duration: 100.23s   Received: 18    Dropped: 8     tAVG=311.72ms  tMIN=33ms      tMAX=805ms     Loss 30.77%    Worst Streak: 2 dropped packets   
Duration: 102.62s   Received: 19    Dropped: 8     tAVG=326.58ms  tMIN=33ms      tMAX=805ms     Loss 29.63%    Worst Streak: 2 dropped packets   
Duration: 104.86s   Received: 20    Dropped: 8     tAVG=320.6ms   tMIN=33ms      tMAX=805ms     Loss 28.57%    Worst Streak: 2 dropped packets   
Duration: 107.14s   Received: 21    Dropped: 8     tAVG=326.76ms  tMIN=33ms      tMAX=805ms     Loss 27.59%    Worst Streak: 2 dropped packets   
Duration: 109.39s   Received: 22    Dropped: 8     tAVG=314.55ms  tMIN=33ms      tMAX=805ms     Loss 26.67%    Worst Streak: 2 dropped packets   
Duration: 111.46s   Received: 23    Dropped: 8     tAVG=329.57ms  tMIN=33ms      tMAX=805ms     Loss 25.81%    Worst Streak: 2 dropped packets   
Duration: 113.52s   Received: 24    Dropped: 8     tAVG=323.13ms  tMIN=33ms      tMAX=805ms     Loss 25.0%     Worst Streak: 2 dropped packets   
Duration: 116.36s   Received: 25    Dropped: 8     tAVG=317.04ms  tMIN=33ms      tMAX=805ms     Loss 24.24%    Worst Streak: 2 dropped packets   
Duration: 118.53s   Received: 26    Dropped: 8     tAVG=311.42ms  tMIN=33ms      tMAX=805ms     Loss 23.53%    Worst Streak: 2 dropped packets   
Duration: 120.66s   Received: 27    Dropped: 8     tAVG=307.63ms  tMIN=33ms      tMAX=805ms     Loss 22.86%    Worst Streak: 2 dropped packets   
Duration: 122.81s   Received: 28    Dropped: 8     tAVG=300.0ms   tMIN=33ms      tMAX=805ms     Loss 22.22%    Worst Streak: 2 dropped packets   
Duration: 128.12s   Received: 28    Dropped: 9     tAVG=300.0ms   tMIN=33ms      tMAX=805ms     Loss 24.32%    Worst Streak: 2 dropped packets   
Duration: 130.37s   Received: 28    Dropped: 10    tAVG=300.0ms   tMIN=33ms      tMAX=805ms     Loss 26.32%    Worst Streak: 2 dropped packets   
Duration: 134.57s   Received: 29    Dropped: 10    tAVG=319.69ms  tMIN=33ms      tMAX=871ms     Loss 25.64%    Worst Streak: 2 dropped packets   
^C---
Duration: 136.36s   Received: 29    Dropped: 10    tAVG=319.69ms  tMIN=33ms      tMAX=871ms     Loss 25.64%    Worst Streak: 2 dropped packets   
Started 2016-05-30 15:33:57 -0700
Completed 2016-05-30 15:33:57 -0700
Test Duration 136.365847s
```

* *Packet Loss* 25.6%

#### Ethernet - Trial 1

```
Trial: Ethernet - Light Streaming

Started 2016-05-30 15:34:58 -0700

Duration: 1.72s     Received: 1     Dropped: 0     tAVG=567.0ms   tMIN=567ms     tMAX=567ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 4.44s     Received: 2     Dropped: 0     tAVG=638.0ms   tMIN=567ms     tMAX=709ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 7.16s     Received: 3     Dropped: 0     tAVG=662.33ms  tMIN=567ms     tMAX=711ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 9.91s     Received: 4     Dropped: 0     tAVG=679.25ms  tMIN=567ms     tMAX=730ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 12.64s    Received: 5     Dropped: 0     tAVG=683.6ms   tMIN=567ms     tMAX=730ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 15.35s    Received: 6     Dropped: 0     tAVG=690.0ms   tMIN=567ms     tMAX=730ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 18.12s    Received: 7     Dropped: 0     tAVG=691.29ms  tMIN=567ms     tMAX=730ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 20.88s    Received: 8     Dropped: 0     tAVG=698.25ms  tMIN=567ms     tMAX=747ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 23.68s    Received: 9     Dropped: 0     tAVG=705.44ms  tMIN=567ms     tMAX=763ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 26.55s    Received: 10    Dropped: 0     tAVG=720.0ms   tMIN=567ms     tMAX=851ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 29.42s    Received: 11    Dropped: 0     tAVG=730.09ms  tMIN=567ms     tMAX=851ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 32.24s    Received: 12    Dropped: 0     tAVG=741.75ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 35.06s    Received: 13    Dropped: 0     tAVG=738.69ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 37.91s    Received: 14    Dropped: 0     tAVG=745.21ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 40.77s    Received: 15    Dropped: 0     tAVG=751.13ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 43.5s     Received: 16    Dropped: 0     tAVG=756.56ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 46.35s    Received: 17    Dropped: 0     tAVG=760.24ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 49.16s    Received: 18    Dropped: 0     tAVG=761.89ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 52.0s     Received: 19    Dropped: 0     tAVG=759.84ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 54.74s    Received: 20    Dropped: 0     tAVG=758.7ms   tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 57.5s     Received: 21    Dropped: 0     tAVG=758.0ms   tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 60.24s    Received: 22    Dropped: 0     tAVG=757.77ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 63.01s    Received: 23    Dropped: 0     tAVG=755.61ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 65.72s    Received: 24    Dropped: 0     tAVG=753.25ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 68.46s    Received: 25    Dropped: 0     tAVG=753.12ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 71.19s    Received: 26    Dropped: 0     tAVG=751.5ms   tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 73.92s    Received: 27    Dropped: 0     tAVG=749.93ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 76.64s    Received: 28    Dropped: 0     tAVG=748.71ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 79.35s    Received: 29    Dropped: 0     tAVG=748.03ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 82.14s    Received: 30    Dropped: 0     tAVG=747.63ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 84.88s    Received: 31    Dropped: 0     tAVG=746.32ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 87.68s    Received: 32    Dropped: 0     tAVG=747.38ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 90.49s    Received: 33    Dropped: 0     tAVG=748.82ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 93.28s    Received: 34    Dropped: 0     tAVG=749.76ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 96.05s    Received: 35    Dropped: 0     tAVG=750.86ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 98.77s    Received: 36    Dropped: 0     tAVG=752.11ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 101.51s   Received: 37    Dropped: 0     tAVG=750.7ms   tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Duration: 104.26s   Received: 38    Dropped: 0     tAVG=753.53ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
^C---
Duration: 104.98s   Received: 38    Dropped: 0     tAVG=753.53ms  tMIN=567ms     tMAX=870ms     Loss 0.0%      Worst Streak: 0 dropped packets   
Started 2016-05-30 15:36:43 -0700
Completed 2016-05-30 15:36:43 -0700
Test Duration 104.978235s
```

* *Packet Loss* 0%
