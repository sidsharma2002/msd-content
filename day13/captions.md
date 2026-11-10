# Day 13 captions (DRAFT from the script: check wording, then post)

## Instagram (reel_9x16.mp4, cover.png)

Double ticks lie. Interviewers ask how read receipts really work.

Design read receipts and delivery status for a chat app. The trap: one boolean per message. It cannot tell sent from delivered from read, and it breaks in group chats.
Here is the 4 step version:

1. Model the states. Sending, sent, delivered, read. A state only moves forward, never back.
2. Ack at each hop. The server acks the send. The device acks delivery. The reader acks reading.
3. Send a watermark. Send one read up to message ten, not one event per message.
4. Handle groups and privacy. Store a watermark per member. Respect the receipts setting.

States only move forward, and a watermark beats a per message ack.

Tomorrow: local message storage and search.

Comment MSD for the free cheatsheet.

Part 3 of 10: Chat system design

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #chatapp #readreceipts #messaging #interviewprep

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design read receipts and delivery status for a chat app.

The common first answer: one boolean per message. It cannot tell sent from delivered from read, and it breaks in group chats.

The version that holds up has 4 steps:

1. Model the states. Sending, sent, delivered, read. A state only moves forward, never back.
2. Ack at each hop. The server acks the send. The device acks delivery. The reader acks reading.
3. Send a watermark. Send one read up to message ten, not one event per message.
4. Handle groups and privacy. Store a watermark per member. Respect the receipts setting.

The line to say out loud in the interview: states only move forward, and a watermark beats a per message ack.

Tomorrow I will cover local message storage and search.

Question for you: what is the most confusing delivery or read status bug you have chased in a chat app?

I am posting one mobile system design concept every day.

Part 3 of 10: Chat system design

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #ChatSystems #SoftwareEngineering #TechInterviews
