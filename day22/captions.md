# Day 22 captions 

## Instagram (reel_9x16.mp4, cover.png)

One network call per tap drains the battery. Batch your events instead.

Design event batching and flushing. The trap: send every event the moment it happens. It wakes the radio, burns battery, and loses events on a crash.
Here is the 4 step version:

1. Buffer. Append each event to a small queue, and write it to disk. Never one request per event.
2. Flush triggers. Flush on batch size, on a timer, and when the app goes to background. Whichever comes first.
3. Send. Compress the batch and give it an id. Retry with backoff, and the server drops duplicates.
4. Delete late. Remove events from disk only after the server confirms. A crash then loses nothing.

Buffer on disk, flush on triggers, delete only after the confirm.

Tomorrow: the offline event queue.

Comment MSD for the free cheatsheet.

Part 2 of 10: Analytics

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #analytics #batching #batterylife #interviewprep

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design event batching and flushing.

The common first answer: send every event the moment it happens. It wakes the radio, burns battery, and loses events on a crash.

The version that holds up has 4 steps:

1. Buffer. Append each event to a small queue, and write it to disk. Never one request per event.
2. Flush triggers. Flush on batch size, on a timer, and when the app goes to background. Whichever comes first.
3. Send. Compress the batch and give it an id. Retry with backoff, and the server drops duplicates.
4. Delete late. Remove events from disk only after the server confirms. A crash then loses nothing.

The line to say out loud in the interview: buffer on disk, flush on triggers, delete only after the confirm.

Tomorrow I will cover the offline event queue.

Question for you: what flush interval and batch size did you settle on in production, and what made you change them?

I am posting one mobile system design concept every day.

Part 2 of 10: Analytics

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #SoftwareEngineering #TechInterviews #Analytics #Batching #MobilePerformance
