# Day 14 captions (DRAFT from the script: check wording, then post)

## Instagram (reel_9x16.mp4, cover.png)

Design chat storage that opens instantly and searches years of messages.

Design local message storage and search for a chat app. The trap: one big table and a LIKE query. It scans every row, and the scroll stutters while new writes pile up.
Here is the 4 step version:

1. Shape the schema. Index by chat and time, so opening a chat reads one page, not the whole table.
2. Batch the writes. Group incoming messages into one transaction on a single background writer, so the UI thread never waits.
3. Add a search index. Keep a separate full text table, so search never scans messages.
4. Plan the migrations. Version the schema, migrate in small steps, and prune old data. Never block app launch on a long migration.

Index for the screen you open, and search a separate index.

Tomorrow: media upload in chat.

Comment MSD for the free cheatsheet.

Part 4 of 10: Chat system design

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #chatapp #sqlite #fulltextsearch #interviewprep

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design local message storage and search for a chat app.

The common first answer: one big table and a LIKE query. It scans every row, and the scroll stutters while new writes pile up.

The version that holds up has 4 steps:

1. Shape the schema. Index by chat and time, so opening a chat reads one page, not the whole table.
2. Batch the writes. Group incoming messages into one transaction on a single background writer, so the UI thread never waits.
3. Add a search index. Keep a separate full text table, so search never scans messages.
4. Plan the migrations. Version the schema, migrate in small steps, and prune old data. Never block app launch on a long migration.

The line to say out loud in the interview: index for the screen you open, and search a separate index.

Tomorrow I will cover media upload in chat.

Question for you: which chat storage or search decision would you take back if you could redo it?

I am posting one mobile system design concept every day.

Part 4 of 10: Chat system design

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #ChatSystems #SoftwareEngineering #TechInterviews
