# Day 19 captions

## Instagram (reel_9x16.mp4, cover.png)

The badge says nine, the chat shows five. Which is wrong?

Design chat list pagination and unread counts. The trap: count unread from loaded messages. Older pages are missing, so the count lies.
Here is the 4 step version:

1. Cursor paging. Page by last activity time, so new messages never shift the pages.
2. Counter per chat. The server owns the unread count, stored beside the last read sequence.
3. Optimistic read. Opening a chat zeroes the count locally, then syncs. Newer sequence wins.
4. Badge sync. The badge is the sum of the counters, muted chats excluded.

The server counts. The client pages. Compare by sequence.

Tomorrow: Notification dedupe and badge counts.

Comment MSD for the free cheatsheet.

Part 9 of 10: Chat system design

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #chatapp #pagination #unreadcount #interviewprep

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design chat list pagination and unread counts.

The common first answer: count unread from loaded messages. Older pages are missing, so the count lies.

The version that holds up has 4 steps:

1. Cursor paging. Page by last activity time, so new messages never shift the pages.
2. Counter per chat. The server owns the unread count, stored beside the last read sequence.
3. Optimistic read. Opening a chat zeroes the count locally, then syncs. Newer sequence wins.
4. Badge sync. The badge is the sum of the counters, muted chats excluded.

The line to say out loud in the interview: the server counts. The client pages. Compare by sequence.

Tomorrow I will cover Notification dedupe and badge counts.

Part 9 of 10: Chat system design

Question for you: when a chat is muted, do you still keep its unread counter or drop it entirely? What bit you in production?

I am posting one mobile system design concept every day.

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #SoftwareEngineering #TechInterviews #Pagination #Messaging #Badges
