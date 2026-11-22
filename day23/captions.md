# Day 23 captions

## Instagram (reel_9x16.mp4, cover.png)

A user taps ten times on a flight. Analytics must not lose a single tap.

Design an offline event queue. The trap: keep events in memory. A crash or a kill loses them all.
Here is the 4 step version:

1. Persist first. Write every event to a local database with a sequence number.
2. Drain in order. When the network returns, send the oldest events first, and stop at the first failure.
3. Bound the queue. Cap its size and age. When full, drop the least important events first.
4. Replay safely. Give each event an id and its original timestamp. The server drops duplicates and corrects clock skew.

Persist first, drain in order, cap it, replay idempotently.

Tomorrow: session and identity stitching.

Comment MSD for the free cheatsheet.

Part 3 of 10: Analytics

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #analytics #offlinefirst #eventqueue #interviewprep

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design an offline event queue.

The common first answer: keep events in memory. A crash or a kill loses them all.

The version that holds up has 4 steps:

1. Persist first. Write every event to a local database with a sequence number.
2. Drain in order. When the network returns, send the oldest events first, and stop at the first failure.
3. Bound the queue. Cap its size and age. When full, drop the least important events first.
4. Replay safely. Give each event an id and its original timestamp. The server drops duplicates and corrects clock skew.

The line to say out loud in the interview: persist first, drain in order, cap it, replay idempotently.

Tomorrow I will cover session and identity stitching.

Question for you: what is the oldest event you ever found in an offline queue, and how did it break your dashboards?

I am posting one mobile system design concept every day.

Part 3 of 10: Analytics

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #SoftwareEngineering #TechInterviews #Analytics #OfflineFirst #EventQueue
