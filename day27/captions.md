# Day 27 captions

## Instagram (reel_9x16.mp4, cover.png)

Your app crashes for a thousand users, and you never hear about it.

Design a crash reporting pipeline for a mobile app. The trap: send the report from the crash handler. The process is dying, the network call fails, and the report is lost.
Here is the 4 step version:

1. Capture safely. In the crash handler, only write a small report to disk. No network, no heavy work.
2. Upload on next launch. Find the saved report, send it in the background, and delete it after the server confirms.
3. Symbolicate on the server. Keep the mapping files for each build, and turn raw addresses into readable stack traces.
4. Group and alert. Hash the top frames into a fingerprint, count users per group, and alert on a spike after a release.

Write to disk, upload later, symbolicate on the server, group by fingerprint.

Tomorrow: funnels and attribution events.

Comment MSD for the free cheatsheet.

Part 7 of 10: Analytics

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #crashreporting #crashlytics #observability #interviewprep

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design a crash reporting pipeline for a mobile app.

The common first answer: send the report from the crash handler. The process is dying, the network call fails, and the report is lost.

The version that holds up has 4 steps:

1. Capture safely. In the crash handler, only write a small report to disk. No network, no heavy work.
2. Upload on next launch. Find the saved report, send it in the background, and delete it after the server confirms.
3. Symbolicate on the server. Keep the mapping files for each build, and turn raw addresses into readable stack traces.
4. Group and alert. Hash the top frames into a fingerprint, count users per group, and alert on a spike after a release.

The line to say out loud in the interview: write to disk, upload later, symbolicate on the server, group by fingerprint.

Tomorrow I will cover funnels and attribution events.

Question for you: what is the hardest crash you ever had to reproduce from a stack trace alone?

I am posting one mobile system design concept every day.

Part 7 of 10: Analytics

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #SoftwareEngineering #TechInterviews #CrashReporting #Observability #MobileDev
