# Day 18 captions

## Instagram (reel_9x16.mp4, cover.png)

The phone was offline for an hour. Which messages did it miss?

Design reconnect and catch-up sync for a chat app. The trap: reload every conversation on reconnect. It wastes data, and messages sent during the reload still slip through.
Here is the 4 step version:

1. Cursor. Save the last synced sequence number per chat. Ask only for what comes after it.
2. Gap check. A hole in the sequence means a missed message, so fetch exactly that range.
3. Backfill. Apply oldest first and dedupe by message id, so retries never double a message.
4. Handoff. Buffer live messages while catching up, then merge by sequence and go live.

Remember where you stopped. Fetch only the gap, in order.

Tomorrow: Chat list pagination and unread counts.

Comment MSD for the free cheatsheet.

Part 8 of 10: Chat system design

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #chatapp #offlinefirst #datasync #interviewprep

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design reconnect and catch-up sync for a chat app.

The common first answer: reload every conversation on reconnect. It wastes data, and messages sent during the reload still slip through.

The version that holds up has 4 steps:

1. Cursor. Save the last synced sequence number per chat. Ask only for what comes after it.
2. Gap check. A hole in the sequence means a missed message, so fetch exactly that range.
3. Backfill. Apply oldest first and dedupe by message id, so retries never double a message.
4. Handoff. Buffer live messages while catching up, then merge by sequence and go live.

The line to say out loud in the interview: remember where you stopped. Fetch only the gap, in order.

Tomorrow I will cover Chat list pagination and unread counts.

Part 8 of 10: Chat system design

Question for you: when the gap is huge, say weeks offline, do you backfill every message or jump to a snapshot of recent ones? Where do you draw the line?

I am posting one mobile system design concept every day.

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #SoftwareEngineering #TechInterviews #OfflineFirst #Messaging #DataSync
