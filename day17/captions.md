# Day 17 captions 

## Instagram (reel_9x16.mp4, cover.png)

The server relays every message but must never read one.

Design end-to-end encryption for a chat app. The trap: rely on TLS or share one key. TLS ends at the server, and a stolen key leaks every chat.
Here is the 4 step version:

1. Keys on device. Each phone keeps its private key in secure hardware. The server stores only public keys.
2. Handshake. The sender fetches public keys and derives a shared secret, even offline.
3. Ratchet. Every message gets a fresh key, so one stolen key cannot open past or future messages.
4. Many devices. Each device has its own keys, and safety numbers catch a swapped key.

The server routes ciphertext. Only the phones ever hold the keys.

Tomorrow: Reconnect and catch-up sync after offline.

Comment MSD for the free cheatsheet.

Part 7 of 10: Chat system design

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #encryption #e2ee #chatapp #interviewprep

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: design end-to-end encryption for a chat app.

The common first answer: rely on TLS or share one key. TLS ends at the server, and a stolen key leaks every chat.

The version that holds up has 4 steps:

1. Keys on device. Each phone keeps its private key in secure hardware. The server stores only public keys.
2. Handshake. The sender fetches public keys and derives a shared secret, even offline.
3. Ratchet. Every message gets a fresh key, so one stolen key cannot open past or future messages.
4. Many devices. Each device has its own keys, and safety numbers catch a swapped key.

The line to say out loud in the interview: the server routes ciphertext. Only the phones ever hold the keys.

Tomorrow I will cover Reconnect and catch-up sync after offline.

Part 7 of 10: Chat system design

Question for you: when a user gets a new phone, do you restore message history from a backup, or start clean and keep the keys device-bound? Which one would you defend?

I am posting one mobile system design concept every day.

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #SoftwareEngineering #TechInterviews #Encryption #Security #Messaging
