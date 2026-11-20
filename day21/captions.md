# Day 21 captions 

## Instagram (reel_9x16.mp4, cover.png)

Every team logs events. So why is half the data unusable?

Design an analytics event schema and naming. The trap: log whatever each screen wants. Names drift, types change, and nobody can query it.
Here is the 4 step version:

1. Naming rule. Use object then action, in past tense, like message sent.
2. Envelope. Every event carries the same fields: name, id, time, user, session, and version.
3. Typed properties. Each event has a typed contract. Use enums, not free text. No personal data.
4. Registry. Keep a tracking plan in code. Generate event types, and fail the build on unknown events.

One naming rule, one envelope, one registry.

Tomorrow: batching and flushing events.

Comment MSD for the free cheatsheet.

Part 1 of 10: Analytics

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #analytics #eventtracking #dataquality #interviewprep

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design an analytics event schema and naming.

The common first answer: log whatever each screen wants. Names drift, types change, and nobody can query it.

The version that holds up has 4 steps:

1. Naming rule. Use object then action, in past tense, like message sent.
2. Envelope. Every event carries the same fields: name, id, time, user, session, and version.
3. Typed properties. Each event has a typed contract. Use enums, not free text. No personal data.
4. Registry. Keep a tracking plan in code. Generate event types, and fail the build on unknown events.

The line to say out loud in the interview: one naming rule, one envelope, one registry.

Tomorrow I will cover batching and flushing events.

Question for you: what is the worst event naming mess you have inherited, and how did you clean it up?

I am posting one mobile system design concept every day.

Part 1 of 10: Analytics

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #SoftwareEngineering #TechInterviews #Analytics #EventTracking #DataQuality
