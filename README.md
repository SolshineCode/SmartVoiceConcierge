# SmartVoiceConcierge

Released open source /available source under: CC BY-NC 4.0 DEED
Attribution-NonCommercial 4.0 International
https://creativecommons.org/licenses/by-nc/4.0/
https://creativecommons.org/licenses/by-nc/4.0/legalcode.en

COMMERCIAL USE IS CURRENTLY PROHIBITED.
For commercial use interest please leave a comment with your email and we will reach out to you when we are ready to side-license to other commercial users.

To run "WorkingCopy" version, which runs entirely locally without phone capabilities (if you are on windows) you will need to download FFmpeg and configure FFplayer (which comes with ffmpeg) as the audio player. Be sure your microphone and speakers are properly configured. Then run the python script locally.
Here is a good guide to set up ffmpeg on windows: https://www.wikihow.com/Install-FFmpeg-on-Windows

To run "Call Enabled" (to-be-uploaded once beta developed) you will need to make a Twilio account and configure ngrok with flask or a remote server with flask, webhooked into twilio config, so you can then route audio through Twilio voice phone. This will also require SMS config through Twilio for scheduling verifications.

"GoogleCalendar" version is a rough draft and not currently functional. This will also require config for Google Calendar API using the user's (client's) calendar access. Exploring ways to overcome this limitation.

Dockerfile currently errors with audio and thus has been left as a draft which is not used in implementation in this current version.

Process Flow:
Incoming Call Handling (/voice Endpoint):

The /voice endpoint responds with a VoiceResponse object containing the greeting audio.
This audio is generated dynamically using text-to-speech conversion and served to the caller.
Conversation Handling (/handle_conversation Endpoint):

The /handle_conversation endpoint receives a POST request containing information about the call and the recording URL of the user's speech input.
It extracts the recording URL and calls an asynchronous function to transcribe the user's speech using Deepgram.
Once the transcription is obtained, it processes the text using a language model to generate a response.
The response is converted to audio using text-to-speech conversion and served back to the caller.
