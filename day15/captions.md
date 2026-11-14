# Day 15 captions

## Instagram (reel_9x16.mp4, cover.png)

Design media upload in chat that survives a dead network mid-video.

Design media upload for a chat app. The trap: attach the file to the request. Big videos time out, and restart from zero on every drop.
Here is the 4 step version:

1. Upload first, send second. Store the bytes, then send a message that points to them.
2. Chunk and resume. Split big files into chunks. After a drop, send only what is missing.
3. Preview on device. Show a thumbnail at once, with progress. Let the user cancel.
4. Pending state. Mark the message as sending until the upload finishes. Retry with backoff, even after a restart.

Upload the bytes first, send a pointer, and resume instead of restarting.

Tomorrow: group chat fan-out.

Comment MSD for the free cheatsheet.

Part 5 of 10: Chat system design

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #chatapp #mediaupload #resumableupload #interviewprep

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design media upload for a chat app.

The common first answer: attach the file to the request. Big videos time out, and restart from zero on every drop.

The version that holds up has 4 steps:

1. Upload first, send second. Store the bytes, then send a message that points to them.
2. Chunk and resume. Split big files into chunks. After a drop, send only what is missing.
3. Preview on device. Show a thumbnail at once, with progress. Let the user cancel.
4. Pending state. Mark the message as sending until the upload finishes. Retry with backoff, even after a restart.

The line to say out loud in the interview: upload the bytes first, send a pointer, and resume instead of restarting.

Tomorrow I will cover group chat fan-out.

Question for you: would you chunk every upload, or only files above a size limit? Tell me which and why.

I am posting one mobile system design concept every day.

Part 5 of 10: Chat system design

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #ChatSystems #MediaUpload #OfflineFirst #SoftwareEngineering #TechInterviews
