# Use the official Python image as the base
FROM python:3.10-bullseye

# Set the working directory in the container
WORKDIR /app
# Set environment variable during build (optional)
ENV DEEPGRAM_API_KEY="e14edf7686a11484e3e136c30e52c1976125ddc9"
ENV GROQ_API_KEY="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"
ENV GROQ_MODEL="Llama3-8b-8192"

# Install git to clone the repository
RUN apt-get update && apt-get install -y git


# Change the working directory to the cloned repo
WORKDIR /app

# Clone the specific GitHub repository
RUN git clone https://github.com/SolshineCode/SpeechInterface

# Install system dependencies as root
RUN apt-get update  # Update package lists before installation
RUN apt-get install -y \
  libasound-dev \
  portaudio19-dev \
  libportaudio2 \
  ffmpeg

# Create a user without a password (cannot log in with password)
RUN adduser --disabled-password appuser
USER appuser
# RUN pip install --user --no-cache-dir -r requirements.txt

RUN pip install ipython
RUN pip install PyAudio
RUN pip install aiohttp==3.9.3
RUN pip install aiosignal==1.3.1
RUN pip install annotated-types==0.6.0
RUN pip install anyio==4.3.0
RUN pip install appnope==0.1.4
RUN pip install asttokens==2.4.1
RUN pip install asyncio==3.4.3
RUN pip install attrs==23.2.0
RUN pip install certifi==2024.2.2
RUN pip install cffi==1.16.0
RUN pip install charset-normalizer==3.3.2
RUN pip install comm==0.2.1
RUN pip install dataclasses-json==0.6.4
RUN pip install debugpy==1.8.1
RUN pip install decorator==5.1.1
RUN pip install deepgram-sdk==3.1.4
RUN pip install distro==1.9.0
RUN pip install executing==2.0.1
RUN pip install frozenlist==1.4.1
RUN pip install gevent==24.2.1
RUN pip install greenlet==3.0.3
RUN pip install groq==0.4.1
RUN pip install h11==0.14.0
RUN pip install httpcore==1.0.4
RUN pip install httpx==0.27.0
RUN pip install idna==3.6
RUN pip install ipykernel==6.29.2
RUN pip install jedi==0.19.1
RUN pip install jsonpatch==1.33
RUN pip install jsonpointer==2.4
RUN pip install jupyter_client==8.6.0
RUN pip install jupyter_core==5.7.1
RUN pip install langchain==0.1.9
RUN pip install langchain-community==0.0.24
RUN pip install langchain-core==0.1.26
# RUN pip install langchain-openai==0.0.7
# RUN pip install langchain-groq==0.0.1
RUN pip install langchain-openai
RUN pip install langchain-groq
RUN pip install langsmith==0.1.6
RUN pip install marshmallow==3.20.2
RUN pip install matplotlib-inline==0.1.6
RUN pip install multidict==6.0.5
RUN pip install mypy-extensions==1.0.0
RUN pip install nest-asyncio==1.6.0
RUN pip install numpy==1.26.4
RUN pip install openai==1.12.0
RUN pip install orjson==3.9.15
RUN pip install packaging==23.2
RUN pip install parso==0.8.3
RUN pip install pexpect==4.9.0
RUN pip install platformdirs==4.2.0
RUN pip install prompt-toolkit==3.0.43
RUN pip install psutil==5.9.8
RUN pip install ptyprocess==0.7.0
RUN pip install pure-eval==0.2.2
RUN pip install pycparser==2.21
RUN pip install pydantic==2.6.2
RUN pip install pydantic_core==2.16.3
RUN pip install pygame==2.5.2
RUN pip install Pygments==2.17.2
RUN pip install python-dateutil==2.8.2
RUN pip install python-dotenv==1.0.1
RUN pip install PyYAML==6.0.1
RUN pip install pyzmq==25.1.2
RUN pip install regex==2023.12.25
RUN pip install requests==2.31.0
RUN pip install six==1.16.0
RUN pip install sniffio==1.3.0
RUN pip install sounddevice==0.4.6
RUN pip install SQLAlchemy==2.0.27
RUN pip install stack-data==0.6.3
RUN pip install tenacity==8.2.3
RUN pip install tiktoken==0.6.0
RUN pip install tornado==6.4
RUN pip install tqdm==4.66.2
RUN pip install traitlets==5.14.1
RUN pip install typing-inspect==0.9.0
RUN pip install typing_extensions==4.9.0
RUN pip install urllib3==2.2.1
RUN pip install verboselogs==1.7
RUN pip install wcwidth==0.2.13
RUN pip install websocket==0.2.1
RUN pip install websocket-client==1.7.0
RUN pip install websockets==12.0
RUN pip install yarl==1.9.4
RUN pip install zope.event==5.0
RUN pip install zope.interface==6.2

#Set working Directory containing script
WORKDIR /app/SpeechInterface

# Define the command to run script
CMD ["python", "QuickAgent.py"]