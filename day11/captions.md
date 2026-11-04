# Day 11 captions (DRAFT from the script: check wording, then post)

## Instagram (reel_9x16.mp4, cover.png)

Messages show up twice, or out of order. Interviewers love this chat bug.

Design message delivery and ordering for a chat app. The trap: send over a socket and append whatever arrives. Retries create duplicates, and the network reorders messages.
Here is the 4 step version:

1. Client ID. Give every message a client generated ID before sending. The server dedupes on it, so a retry is safe.
2. Server order. The server assigns a sequence number per conversation. Clients sort by it, never by the device clock.
3. Acks and retries. Track sent, delivered, and read states. Retry with backoff until the server acks.
4. Gap repair. If sequence five follows three, ask for four. On reconnect, sync from the last seen sequence.

Client ID for dedupe, server sequence for order, and ack everything.

Tomorrow: typing indicators and presence.

Comment MSD for the free cheatsheet.

Part 1 of 10: Chat system design

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #chatapp #messaging #interviewprep #distributedsystems

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design message delivery and ordering for a chat app.

The common first answer: send over a socket and append whatever arrives. Retries create duplicates, and the network reorders messages.

The version that holds up has 4 steps:

1. Client ID. Give every message a client generated ID before sending. The server dedupes on it, so a retry is safe.
2. Server order. The server assigns a sequence number per conversation. Clients sort by it, never by the device clock.
3. Acks and retries. Track sent, delivered, and read states. Retry with backoff until the server acks.
4. Gap repair. If sequence five follows three, ask for four. On reconnect, sync from the last seen sequence.

The line to say out loud in the interview: client ID for dedupe, server sequence for order, and ack everything.

Tomorrow I will cover typing indicators and presence.

Question for you: what is the most confusing message ordering bug you have chased in a chat app?

I am posting one mobile system design concept every day.

Part 1 of 10: Chat system design

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #ChatSystems #SoftwareEngineering #TechInterviews
