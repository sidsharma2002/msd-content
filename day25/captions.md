# Day 25 captions

## Instagram (reel_9x16.mp4, cover.png)

Millions of users fire events nonstop. Keep the numbers honest without sending everything.

Design sampling and rate limits for analytics. The trap: drop random events. Funnels break, and nobody can scale the counts back up.
Here is the 4 step version:

1. Sample per user. Hash the user id, and keep or drop all of that user's events together.
2. Sample by event class. Always keep purchases and crashes, and sample the noisy taps and scrolls.
3. Stamp the rate. Attach the sample rate to every kept event, so the server can scale counts back up.
4. Cap the bursts. A token bucket on the device limits sending, and the server answers with a retry after.

Hash by user, sample by class, stamp the rate, cap with a bucket.

Tomorrow: consent and PII handling.

Comment MSD for the free cheatsheet.

Part 5 of 10: Analytics

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #analytics #sampling #ratelimiting #interviewprep

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design sampling and rate limits for analytics.

The common first answer: drop random events. Funnels break, and nobody can scale the counts back up.

The version that holds up has 4 steps:

1. Sample per user. Hash the user id, and keep or drop all of that user's events together.
2. Sample by event class. Always keep purchases and crashes, and sample the noisy taps and scrolls.
3. Stamp the rate. Attach the sample rate to every kept event, so the server can scale counts back up.
4. Cap the bursts. A token bucket on the device limits sending, and the server answers with a retry after.

The line to say out loud in the interview: hash by user, sample by class, stamp the rate, cap with a bucket.

Tomorrow I will cover consent and PII handling.

Question for you: what is the worst number you ever trusted from a sampled dataset?

I am posting one mobile system design concept every day.

Part 5 of 10: Analytics

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #SoftwareEngineering #TechInterviews #Analytics #Sampling #RateLimiting
