# Day 26 captions captions

## Instagram (reel_9x16.mp4, cover.png)

A user says no to tracking, and your app still sends their email.

Design consent and PII handling for mobile analytics. The trap: collect everything, filter on the server later. The data already left the device.
Here is the 4 step version:

1. Gate at the source. Store consent on the device, and check it before any event is created.
2. Minimize the payload. No emails, phone numbers or exact locations. Use an allowlist of fields.
3. Pseudonymize the identity. Send a random id, and keep the mapping on the server, behind access control.
4. Honor withdrawal. Stop collecting, clear the queue, and send a deletion request keyed by the id.

Gate at the source, allowlist fields, hash the identity, delete on withdrawal.

Tomorrow: the crash reporting pipeline.

Comment MSD for the free cheatsheet.

Part 6 of 10: Analytics

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #analytics #privacy #gdpr #interviewprep

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design consent and PII handling for mobile analytics.

The common first answer: collect everything, filter on the server later. The data already left the device.

The version that holds up has 4 steps:

1. Gate at the source. Store consent on the device, and check it before any event is created.
2. Minimize the payload. No emails, phone numbers or exact locations. Use an allowlist of fields.
3. Pseudonymize the identity. Send a random id, and keep the mapping on the server, behind access control.
4. Honor withdrawal. Stop collecting, clear the queue, and send a deletion request keyed by the id.

The line to say out loud in the interview: gate at the source, allowlist fields, hash the identity, delete on withdrawal.

Tomorrow I will cover the crash reporting pipeline.

Question for you: what is the most surprising piece of personal data you found in an analytics event?

I am posting one mobile system design concept every day.

Part 6 of 10: Analytics

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #SoftwareEngineering #TechInterviews #Analytics #Privacy #DataProtection
