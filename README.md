### SmartVoiceConcierge

**Released open source /available source under: CC BY-NC 4.0 DEED**
Attribution-NonCommercial 4.0 International
https://creativecommons.org/licenses/by-nc/4.0/
https://creativecommons.org/licenses/by-nc/4.0/legalcode.en

COMMERCIAL USE IS CURRENTLY PROHIBITED.
For commercial use interest please leave a comment with your email and we will reach out to you when we are ready to side-license to other commercial users.

**Versions in Development:**

To run "WorkingCopy" version, which runs entirely locally without phone capabilities (if you are on windows) you will need to download FFmpeg and configure FFplayer (which comes with ffmpeg) as the audio player. Be sure your microphone and speakers are properly configured. Then run the python script locally.
Here is a good guide to set up ffmpeg on windows: https://www.wikihow.com/Install-FFmpeg-on-Windows

To run "Phone Call Enabled" version (to-be-uploaded once beta developed and basic test cases passed) you will need to make a Twilio account and configure ngrok with flask or a remote server with flask, webhooked into twilio config, so you can then route audio through Twilio voice phone. This will also require SMS config through Twilio for scheduling verifications.

"GoogleCalendar" version is a rough draft and not currently functional. This will also require config for Google Calendar API using the user's (client's) calendar access. Exploring ways to overcome this limitation.

Dockerfile currently errors with audio and thus has been left as a draft which is not used in implementation in this current version.


Sure, let's break down the process flow and design considerations of the program, focusing on the `/handle_conversation` endpoint and potential causes of the 400 error.

### Program Overview for Phone Call Enabled version:
1. **Incoming Call Handling (`/voice` Endpoint)**:
   - When a call comes in, the server responds with a greeting audio message using the `/voice` endpoint.
   - This audio message is generated dynamically and played to the caller.

2. **Conversation Handling (`/handle_conversation` Endpoint)**:
   - After the greeting, the server redirects to the `/handle_conversation` endpoint to handle the conversation.
   - This endpoint processes the user's speech input, transcribes it, generates a response using a language model, and plays the response back to the caller.

### Process Flow:
1. **Incoming Call Handling (`/voice` Endpoint)**:
   - The `/voice` endpoint responds with a VoiceResponse object containing the greeting audio.
   - This audio is generated dynamically using text-to-speech conversion and served to the caller.

2. **Conversation Handling (`/handle_conversation` Endpoint)**:
   - The `/handle_conversation` endpoint receives a POST request containing information about the call and the recording URL of the user's speech input.
   - It extracts the recording URL and calls an asynchronous function to transcribe the user's speech using Deepgram.
   - Once the transcription is obtained, it processes the text using a language model to generate a response.
   - The response is converted to audio using text-to-speech conversion and served back to the caller.

### Systems Design Considerations:
1. **Modularity**:
   - The program is modular, with separate components handling different aspects such as audio generation, transcription, and language model processing. This allows for easier maintenance and scalability.

2. **Asynchronous Processing**:
   - Asynchronous processing is used for tasks such as transcription to avoid blocking the main thread and improve responsiveness.

3. **Error Handling**:
   - Error handling is implemented to catch and log errors, ensuring graceful degradation and easier debugging.
