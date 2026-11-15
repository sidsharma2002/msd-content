# Day 16 captions 

## Instagram (reel_9x16.mp4, cover.png)

One message to a group of five hundred. Who does the copying?

Design group chat fan-out that delivers one message to every member. The trap: the sender loops over members and writes one copy per person. That hammers the server on every send, slows big groups, and a retry sends duplicates.
Here is the 4 step version:

1. Store once. Write the message to one group log with a sequence number. The sender makes one request, not five hundred.
2. Small groups fan out on write. Each member gets a copy in their inbox, so reads are instant.
3. Large groups fan out on read. Members pull the group log from their last cursor, so writes stay cheap.
4. Wake the phones. Push only offline members, and collapse the rest into one notification per group.

Store the message once. Copy it only when the room is small, and read it when the room is large.

Tomorrow: End-to-end encryption on mobile.

Comment write or read, and tell me why.

Part 6 of 10: Chat system design

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #groupchat #fanout #realtime #interviewprep

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design group chat fan-out that delivers one message to every member.

The common first answer: the sender loops over members and writes one copy per person. That hammers the server on every send, slows big groups, and a retry sends duplicates.

The version that holds up has 4 steps:

1. Store once. Write the message to one group log with a sequence number. The sender makes one request, not five hundred.
2. Small groups fan out on write. Each member gets a copy in their inbox, so reads are instant.
3. Large groups fan out on read. Members pull the group log from their last cursor, so writes stay cheap.
4. Wake the phones. Push only offline members, and collapse the rest into one notification per group.

The line to say out loud in the interview: store the message once. Copy it only when the room is small, and read it when the room is large.

Tomorrow I will cover End-to-end encryption on mobile.

Part 6 of 10: Chat system design

Question for you: once a group passes a few hundred members, do you fan out on write or on read? Which one would you defend in an interview?

I am posting one mobile system design concept every day.

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #SoftwareEngineering #TechInterviews #GroupChat #Realtime #Messaging
