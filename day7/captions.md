# Day 7 captions (DRAFT from the script: check wording, then post)

## Instagram (reel_9x16.mp4, cover.png)

A bad release is live, and the fix needs a week of app review.

Design feature flags and remote config. The trap: hardcode a boolean and ship a new build. Users stay on old versions for weeks, and you cannot turn anything off.
Here is the 4 step version:

1. Fetch and cache. Fetch config on launch and on foreground, cache it on disk, and ship safe defaults inside the app.
2. Stable bucketing. Hash the user id with the flag name, so each person gets the same answer every time.
3. Gradual rollout. Go one percent, then ten, then everyone, and watch crashes at every stage.
4. Kill switch. Every risky feature gets a flag the server can flip, with a safe fallback if config never arrives.

Ship dark, ramp slowly, and always keep a kill switch.

Tomorrow: app startup time.

Comment MSD for the free cheatsheet.

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #softwareengineer #featureflags #interviewprep #remoteconfig

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design feature flags and remote config.

The common first answer: hardcode a boolean and ship a new build. Users stay on old versions for weeks, and you cannot turn anything off.

The version that holds up has 4 steps:

1. Fetch and cache. Fetch config on launch and on foreground, cache it on disk, and ship safe defaults inside the app.
2. Stable bucketing. Hash the user id with the flag name, so each person gets the same answer every time.
3. Gradual rollout. Go one percent, then ten, then everyone, and watch crashes at every stage.
4. Kill switch. Every risky feature gets a flag the server can flip, with a safe fallback if config never arrives.

The line to say out loud in the interview: ship dark, ramp slowly, and always keep a kill switch.

Tomorrow I will cover app startup time.

Question for you: when a flag is stale in code, who removes it and when? Tell me your process.

I am posting one mobile system design concept every day.

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #FeatureFlags #SoftwareEngineering #TechInterviews
