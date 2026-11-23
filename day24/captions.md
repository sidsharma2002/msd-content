# Day 24 captions

## Instagram (reel_9x16.mp4, cover.png)

A user logs in on a new phone. Analytics must still know it is the same person.

Design session and identity stitching. The trap: use the device id as the user. Reinstalls and second phones become strangers.
Here is the 4 step version:

1. Anonymous first. Give every install a random id, and tag each event with it before login.
2. Sessions on the client. A new session starts after thirty minutes of inactivity, with its own id.
3. Stitch on login. Send one identify event that links the anonymous id to the user id.
4. Merge on the server. Rewrite past events under the user id, and keep the link table for late events.

Anonymous id first, session by timeout, stitch on login, merge on the server.

Tomorrow: sampling and rate limits.

Comment MSD for the free cheatsheet.

Part 4 of 10: Analytics

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #analytics #identity #sessions #interviewprep

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design session and identity stitching.

The common first answer: use the device id as the user. Reinstalls and second phones become strangers.

The version that holds up has 4 steps:

1. Anonymous first. Give every install a random id, and tag each event with it before login.
2. Sessions on the client. A new session starts after thirty minutes of inactivity, with its own id.
3. Stitch on login. Send one identify event that links the anonymous id to the user id.
4. Merge on the server. Rewrite past events under the user id, and keep the link table for late events.

The line to say out loud in the interview: anonymous id first, session by timeout, stitch on login, merge on the server.

Tomorrow I will cover sampling and rate limits.

Question for you: what is the messiest identity merge you have had to clean up in an analytics pipeline?

I am posting one mobile system design concept every day.

Part 4 of 10: Analytics

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #SoftwareEngineering #TechInterviews #Analytics #Identity #Sessions
