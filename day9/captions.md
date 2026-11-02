# Day 9 captions (DRAFT from the script: check wording, then post)

## Instagram (reel_9x16.mp4, cover.png)

A user taps your link and lands on the home screen, not the product.

Design deep links for a mobile app. The trap: a custom URL scheme. Any app can claim it, and if your app is missing, the link just dies.
Here is the 4 step version:

1. Use verified links. Universal links on iOS and app links on Android, backed by a file on your own domain.
2. Route in one place. Parse the url into a typed destination, check login, then navigate.
3. Handle not installed. Send them to the store, then a deferred deep link restores the destination after first open.
4. Always fall back. Unknown or old links open the web page or home, never a blank error.

Own the domain, route in one place, and always have a fallback.

Tomorrow: push notifications.

Comment MSD for the free cheatsheet.


#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #softwareengineer #deeplinks #interviewprep #appdesign

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design deep links for a mobile app.

The common first answer: a custom URL scheme. Any app can claim it, and if your app is missing, the link just dies.

The version that holds up has 4 steps:

1. Use verified links. Universal links on iOS and app links on Android, backed by a file on your own domain.
2. Route in one place. Parse the url into a typed destination, check login, then navigate.
3. Handle not installed. Send them to the store, then a deferred deep link restores the destination after first open.
4. Always fall back. Unknown or old links open the web page or home, never a blank error.

The line to say out loud in the interview: own the domain, route in one place, and always have a fallback.

Tomorrow I will cover push notifications.

Question for you: what is the worst deep link bug you have shipped? Tell me what broke.

I am posting one mobile system design concept every day.

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #DeepLinks #SoftwareEngineering #TechInterviews
