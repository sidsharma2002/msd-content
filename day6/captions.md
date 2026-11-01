# Day 6 captions (DRAFT from the script: check wording, then post)

## Instagram (reel_9x16.mp4, cover.png)

Chat message arrives ten seconds late. Users notice.

Design realtime updates for a mobile app. The trap: poll every second. It drains the battery, burns data, and still feels late.
Here is the 4 step version:

1. Polling. Fine for slow data. Poll with backoff and etags, so an unchanged answer costs almost nothing.
2. Push. A silent push wakes the app with a hint. Delivery is not guaranteed and the OS throttles it, so fetch the real data after.
3. Web socket. One open connection, both directions. Foreground only. Send heartbeats, and reconnect with backoff and jitter.
4. Resync. On reconnect, send the last event id, and the server replays what you missed. Fall back to polling.

Socket while open, push to wake, polling as the safety net.

Tomorrow: feature flags and remote config.

Comment MSD for the free cheatsheet.

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #softwareengineer #websocket #interviewprep #realtime

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design realtime updates for a mobile app.

The common first answer: poll every second. It drains the battery, burns data, and still feels late.

The version that holds up has 4 steps:

1. Polling. Fine for slow data. Poll with backoff and etags, so an unchanged answer costs almost nothing.
2. Push. A silent push wakes the app with a hint. Delivery is not guaranteed and the OS throttles it, so fetch the real data after.
3. Web socket. One open connection, both directions. Foreground only. Send heartbeats, and reconnect with backoff and jitter.
4. Resync. On reconnect, send the last event id, and the server replays what you missed. Fall back to polling.

The line to say out loud in the interview: socket while open, push to wake, polling as the safety net.

Tomorrow I will cover feature flags and remote config.

Question for you: when your socket drops, do you replay by event id or refetch the whole screen? Tell me which and why.

I am posting one mobile system design concept every day.

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #WebSockets #SoftwareEngineering #TechInterviews
