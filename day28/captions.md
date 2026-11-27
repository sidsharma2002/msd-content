# Day 28 captions (DRAFT from the script: check wording, then post)

## Instagram (reel_9x16.mp4, cover.png)

Your funnel says half the users drop at checkout, and the numbers are wrong.

Design funnel and attribution events for a mobile app. The trap: count raw events per screen. Retries double count, offline events arrive late, and the install source is lost.
Here is the 4 step version:

1. One event per step. Give each step a stable name, fired once per attempt.
2. Carry the context. Every event holds the user id and session id, so steps join without guessing.
3. Attribution at install. Read the install referrer once, store source and campaign, and attach them later.
4. Dedupe on the server. An event id drops retries, and client time fixes the order.

One event per step, one id per journey, attribution saved at install.

Tomorrow: experiment exposure logging.

Comment MSD for the free cheatsheet.

Part 8 of 10: Analytics

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #funnels #attribution #mobileanalytics #interviewprep

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design funnel and attribution events for a mobile app.

The common first answer: count raw events per screen. Retries double count, offline events arrive late, and the install source is lost.

The version that holds up has 4 steps:

1. One event per step. Give each step a stable name, fired once per attempt.
2. Carry the context. Every event holds the user id and session id, so steps join without guessing.
3. Attribution at install. Read the install referrer once, store source and campaign, and attach them later.
4. Dedupe on the server. An event id drops retries, and client time fixes the order.

The line to say out loud in the interview: one event per step, one id per journey, attribution saved at install.

Tomorrow I will cover experiment exposure logging.

Question for you: what is the worst analytics number you trusted before finding out it was double counted?

I am posting one mobile system design concept every day.

Part 8 of 10: Analytics

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #SoftwareEngineering #TechInterviews #MobileAnalytics #Attribution #MobileDev
