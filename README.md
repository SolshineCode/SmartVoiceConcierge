# SmartVoiceConcierge


To run "WorkingCopy" version, which runs entirely locally without phone capabilities (if you are on windows) you will need to download FFmpeg and configure FFplayer (which comes with ffmpeg) as the audio player. Be sure your microphone and speakers are properly configured. Then run the python script locally.
Here is a good guide to set up ffmpeg on windows: https://www.wikihow.com/Install-FFmpeg-on-Windows

To run "Call Enabled" (to-be-uploaded once beta developed) you will need to make a Twilio account and configure ngrok with flask or a remote server with flask, webhooked into twilio config, so you can then route audio through Twilio voice phone. This will also require SMS config through Twilio for scheduling verifications.

"GoogleCalendar" version is a rough draft and not currently functional. This will also require config for Google Calendar API using the user's (client's) calendar access. Exploring ways to overcome this limitation.
