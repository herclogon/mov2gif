# Script to convert video file to animated GIF

## Installation 

Install last ffmpeg
<pre>
> sudo add-apt-repository ppa:mc3man/trusty-media
> sudo apt-get update
> sudo apt-get install ffmpeg
</pre>

Download the script
<pre>
> git clone git@github.com:herclogon/mov2gif.git ~/opt/mov2gif
</pre>

Add script initialization to your ~/.bashrc
<pre>
> echo "source ~/opt/mov2gif/mov2gif.bash" >> ~/.bashrc
</pre>

## Usage

<pre>
> mov2gif input.ogv output.gif 1280
</pre>
