# Day 20 captions

## Instagram (reel_9x16.mp4, cover.png)

One message, three buzzes. How do you stop duplicate notifications?

Design notification dedupe and badge counts. The trap: show every push as it arrives. Retries and extra devices create duplicates, and the badge drifts.
Here is the 4 step version:

1. Stable id. Every message carries one id, so a retry is the same notification.
2. Collapse key. Show one notification per chat, and replace the old one.
3. Seen set. The device stores handled ids. A repeat push is dropped.
4. Badge from truth. Set the badge to the server unread total, never add one.

Same id, one notification. The server sets the badge.

Tomorrow: a new series. Analytics. Event schema and naming.

Comment MSD for the free cheatsheet.

Part 10 of 10: Chat system design

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #pushnotifications #chatapp #badgecount #interviewprep

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design notification dedupe and badge counts.

The common first answer: show every push as it arrives. Retries and extra devices create duplicates, and the badge drifts.

The version that holds up has 4 steps:

1. Stable id. Every message carries one id, so a retry is the same notification.
2. Collapse key. Show one notification per chat, and replace the old one.
3. Seen set. The device stores handled ids. A repeat push is dropped.
4. Badge from truth. Set the badge to the server unread total, never add one.

The line to say out loud in the interview: same id, one notification. The server sets the badge.

Tomorrow I start a new series: Analytics. First up, event schema and naming.

Part 10 of 10: Chat system design

Question for you: what is the strangest duplicate notification bug you have chased, and what finally fixed it?

I am posting one mobile system design concept every day.

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #SoftwareEngineering #TechInterviews #PushNotifications #Messaging #Badges
