# SmartVoiceConcierge

Released open source /available source under: CC BY-NC 4.0 DEED
Attribution-NonCommercial 4.0 International
https://creativecommons.org/licenses/by-nc/4.0/
https://creativecommons.org/licenses/by-nc/4.0/legalcode.en
For commercial use interest please leave a comment with your email and we will reach out to you when we are ready to side-license to other commercial users.

To run "WorkingCopy" version, which runs entirely locally without phone capabilities (if you are on windows) you will need to download FFmpeg and configure FFplayer (which comes with ffmpeg) as the audio player. Be sure your microphone and speakers are properly configured. Then run the python script locally.
Here is a good guide to set up ffmpeg on windows: https://www.wikihow.com/Install-FFmpeg-on-Windows

To run "Call Enabled" (to-be-uploaded once beta developed) you will need to make a Twilio account and configure ngrok with flask or a remote server with flask, webhooked into twilio config, so you can then route audio through Twilio voice phone. This will also require SMS config through Twilio for scheduling verifications.

"GoogleCalendar" version is a rough draft and not currently functional. This will also require config for Google Calendar API using the user's (client's) calendar access. Exploring ways to overcome this limitation.

Dockerfile currently errors with audio and thus has been left as a draft which is not used in implementation in this current version.
