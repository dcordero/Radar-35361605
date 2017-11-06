# Radar-35361605

AVPlayerViewController does not pause on live stream

· Open radar: https://openradar.appspot.com/35361605

# Expected
The progress indicator points directly to the live position without any jump or flash on the view

# Version:
tvOS 10.2

# Area
AV Playback

# Summary
AVPlayerViewController does not react to the pause button when playing a live stream.

# Steps to Reproduce
Attached project which plays a live stream. 

When running the project in tvOS 10 the stream can be paused using the Play/Pause button in Siri Remote.

When running the same project in tvOS 11 can not be paused. The following error appears in the console log.

```
2017-11-06 11:09:56.034370+0100 PauseLiveStream[7276:592491] Attachment range (-529.124429,-494.640299) must include 0 for sliding attachment type    >   {530.12445068359375, 4.9999995231628418}
2017-11-06 11:09:56.380347+0100 PauseLiveStream[7276:592534] []  >>> playerasync_runAsynchronousCommandOnQueue: Command 23 returned -12784; this async error will be discarded
```

# Expected Results
The stream pauses when using the Play/Pause button in Siri Remote

# Actual Results
The stream is not paused

# Version/Build
tvOS 11.2 (15K5085b)