# Day 12 captions (DRAFT from the script: check wording, then post)

## Instagram (reel_9x16.mp4, cover.png)

The typing indicator never goes away. Interviewers love this bug.

Design typing indicators and presence for a chat app. The trap: send an event on every keystroke. That floods the server, and one lost stop leaves typing stuck forever.
Here is the 4 step version:

1. Throttle sends. Send typing once every three seconds while the user types. Send stop on send.
2. Expire on receive. Show typing for five seconds, then hide it. A lost stop heals itself.
3. Heartbeat presence. Ping every thirty seconds in the foreground. Sixty seconds of silence means offline.
4. Scope the fan out. Send presence only to open chats and close contacts. Subscribe when a screen opens.

Throttle the sender, expire on the receiver, heartbeat for presence.

Tomorrow: read receipts and delivery status.

Comment MSD for the free cheatsheet.

Part 2 of 10: Chat system design

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #chatapp #presence #heartbeat #interviewprep

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design typing indicators and presence for a chat app.

The common first answer: send an event on every keystroke. That floods the server, and one lost stop leaves typing stuck forever.

The version that holds up has 4 steps:

1. Throttle sends. Send typing once every three seconds while the user types. Send stop on send.
2. Expire on receive. Show typing for five seconds, then hide it. A lost stop heals itself.
3. Heartbeat presence. Ping every thirty seconds in the foreground. Sixty seconds of silence means offline.
4. Scope the fan out. Send presence only to open chats and close contacts. Subscribe when a screen opens.

The line to say out loud in the interview: throttle the sender, expire on the receiver, heartbeat for presence.

Tomorrow I will cover read receipts and delivery status.

Question for you: what is the strangest presence or typing indicator bug you have debugged in a chat app?

I am posting one mobile system design concept every day.

Part 2 of 10: Chat system design

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #ChatSystems #SoftwareEngineering #TechInterviews
