# Day 5 captions (DRAFT from the script: check wording, then post)

## Instagram (reel_9x16.mp4, cover.png)

One feed screen. Five API calls on a weak network. Interviewers love this one.

Pick the API style for a mobile app. The trap: pick whatever is trendy. Then the app over fetches, burns the radio on many round trips, and loses caching.
Here is the 4 step version:

1. Over fetching. REST returns fixed shapes, so a list row downloads the whole profile. GraphQL asks for exactly the fields you need, in one round trip.
2. Caching. REST gets free HTTP caching with etags and a CDN. GraphQL usually posts to one endpoint, so use persisted queries and a normalized client cache.
3. Binary payloads. gRPC sends compact protobuf over HTTP two, smaller and faster to parse than JSON. Great for chat and streaming, harder to debug and cache.
4. Pick per surface. Public, cacheable content on REST. Screens that join many resources on GraphQL. Chat and realtime on gRPC. And version carefully, because old app builds live for years.

Choose the protocol per surface, not per company.

Tomorrow: realtime updates. Polling, push, or web socket.

Comment MSD for the free cheatsheet.

#mobilesystemdesign #systemdesign #androiddev #iosdev #mobiledev #techinterview #softwareengineer #graphql #grpc #interviewprep

## LinkedIn (linkedin_4x3.mp4, linkedin_thumb.png, flow_4x3.gif)

Interview question: pick the API style for a mobile app.

The common first answer: pick whatever is trendy. Then the app over fetches, burns the radio on many round trips, and loses caching.

The version that holds up has 4 steps:

1. Over fetching. REST returns fixed shapes, so a list row downloads the whole profile. GraphQL asks for exactly the fields you need, in one round trip.
2. Caching. REST gets free HTTP caching with etags and a CDN. GraphQL usually posts to one endpoint, so use persisted queries and a normalized client cache.
3. Binary payloads. gRPC sends compact protobuf over HTTP two, smaller and faster to parse than JSON. Great for chat and streaming, harder to debug and cache.
4. Pick per surface. Public, cacheable content on REST. Screens that join many resources on GraphQL. Chat and realtime on gRPC. And version carefully, because old app builds live for years.

The line to say out loud in the interview: choose the protocol per surface, not per company.

Tomorrow I will cover realtime updates. Polling, push, or web socket.

Question for you: which API style does your current app use, and would you pick it again? Tell me why.

I am posting one mobile system design concept every day.

#MobileSystemDesign #SystemDesign #AndroidDev #iOSDev #GraphQL #gRPC #SoftwareEngineering #TechInterviews
