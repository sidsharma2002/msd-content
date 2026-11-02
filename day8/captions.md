# Day 8 captions (DRAFT from the script: check wording, then post)

## Instagram (reel_9x16.mp4, cover.png)

Users tap your icon and stare at a blank splash for four seconds.

Design a fast app startup. The trap: initialize every SDK at launch. Analytics, ads and crash tools block the first frame, so the app feels dead.
Here is the 4 step version:

1. Measure cold start. Process start to first frame, on a mid range device, as a percentile.
2. Defer the work. Only the first screen is allowed on the critical path. Lazy init the rest, after the first frame or on a background thread.
3. Cheap first frame. Show a cached layout right away, skip heavy inflation, load fresh data after.
4. Precompile the hot path. Baseline profiles on Android skip slow first run code. On iOS, cut dynamic frameworks and static initializers.

Do less before the first frame, and measure it every release.

Tomorrow: deep links.

Comment MSD for the free cheatsheet.

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #softwareengineer #appperformance #interviewprep #appstartup

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design a fast app startup.

The common first answer: initialize every SDK at launch. Analytics, ads and crash tools block the first frame, so the app feels dead.

The version that holds up has 4 steps:

1. Measure cold start. Process start to first frame, on a mid range device, as a percentile.
2. Defer the work. Only the first screen is allowed on the critical path. Lazy init the rest, after the first frame or on a background thread.
3. Cheap first frame. Show a cached layout right away, skip heavy inflation, load fresh data after.
4. Precompile the hot path. Baseline profiles on Android skip slow first run code. On iOS, cut dynamic frameworks and static initializers.

The line to say out loud in the interview: do less before the first frame, and measure it every release.

Tomorrow I will cover deep links.

Question for you: what is the heaviest thing you ever moved off your startup path? Tell me what it was.

I am posting one mobile system design concept every day.

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #AppPerformance #SoftwareEngineering #TechInterviews
