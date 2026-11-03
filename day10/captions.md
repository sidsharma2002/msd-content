# Day 10 captions (DRAFT from the script: check wording, then post)

## Instagram (reel_9x16.mp4, cover.png)

Your push went out, and half the users never saw it.

Design push notifications for a mobile app. The trap: treat a push like a guaranteed message. Tokens go stale, delivery is best effort, and big payloads get dropped.
Here is the 4 step version:

1. Register the token. Ask permission at a good moment, then send the device token to your server whenever it changes.
2. Send through the platform. Your server calls APNs or FCM, which hold the message until the device is reachable.
3. Keep the payload tiny. Send an id and a short text, then fetch the full content when the app wakes.
4. Handle taps and cleanup. Route the tap with your deep link router, and delete tokens the platform reports as invalid.

Tokens expire and delivery is best effort, so keep payloads tiny and clean up dead tokens.

Tomorrow: analytics events.

Comment MSD for the free cheatsheet.

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #softwareengineer #pushnotifications #interviewprep #appdesign

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design push notifications for a mobile app.

The common first answer: treat a push like a guaranteed message. Tokens go stale, delivery is best effort, and big payloads get dropped.

The version that holds up has 4 steps:

1. Register the token. Ask permission at a good moment, then send the device token to your server whenever it changes.
2. Send through the platform. Your server calls APNs or FCM, which hold the message until the device is reachable.
3. Keep the payload tiny. Send an id and a short text, then fetch the full content when the app wakes.
4. Handle taps and cleanup. Route the tap with your deep link router, and delete tokens the platform reports as invalid.

The line to say out loud in the interview: tokens expire and delivery is best effort, so keep payloads tiny and clean up dead tokens.

Tomorrow I will cover analytics events.

Question for you: what is the most confusing push notification bug you have chased? Tell me what broke.

I am posting one mobile system design concept every day.

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #PushNotifications #SoftwareEngineering #TechInterviews
