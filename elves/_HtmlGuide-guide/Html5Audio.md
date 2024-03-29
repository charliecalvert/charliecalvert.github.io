---
layout: page
date: 2023-05-14 01:17:16 -0700
fullPath: /home/ubuntu/Git/CloudNotes/elvenware/development/web/HtmlGuide/Html5Audio.md
directoryPath: /home/ubuntu/Git/CloudNotes/elvenware/development/web/HtmlGuide
fileName: Html5Audio.md
relativePath: /web/HtmlGuide/Html5Audio.md
title: Html5Audio
directoryName: HtmlGuide
category: HtmlGuide-guide
---

HTML 5 Audio
============

In [JsObjects](https://github.com/charliecalvert/JsObjects/tree/master/HtmlCssJavascript/AudioMusic01), I have more complex examples of playing music on the web.

A student pointed me to the code found on this page. The core
functionality is taken more or less verbatim from the Mozilla Wiki:

[https://wiki.mozilla.org/Audio\_Data\_API\#Defining\_an\_Enhanced\_API\_for\_Audio\_.28Draft\_Recommendation.29](https://wiki.mozilla.org/Audio_Data_API#Defining_an_Enhanced_API_for_Audio_.28Draft_Recommendation.29)

To play a note, you need to launch the application in Firefox.

<input type="text" size="4" id="freq" value="440"><label for="hz">Hz</label>
<button onclick="start()">play</button>
<button onclick="stop()">stop</button>

<script type="text/javascript">      
  function AudioDataDestination(sampleRate, readFn) {
    // Initialize the audio output.
    var audio = new Audio();
    audio.mozSetup(1, sampleRate);

    var currentWritePosition = 0;
    var prebufferSize = sampleRate / 2; // buffer 500ms
    var tail = null, tailPosition;

    // The function called with regular interval to populate 
    // the audio output buffer.
    setInterval(function() {
      var written;
      // Check if some data was not written in previous attempts.
      if(tail) {
        written = audio.mozWriteAudio(tail.subarray(tailPosition));
        currentWritePosition += written;
        tailPosition += written;
        if(tailPosition < tail.length) {
          // Not all the data was written, saving the tail...
          return; // ... and exit the function.
        }
        tail = null;
      }

      // Check if we need add some data to the audio output.
      var currentPosition = audio.mozCurrentSampleOffset();
      var available = currentPosition + prebufferSize - currentWritePosition;
      if(available > 0) {
        // Request some sound data from the callback function.
        var soundData = new Float32Array(available);
        readFn(soundData);

        // Writting the data.
        written = audio.mozWriteAudio(soundData);
        if(written < soundData.length) {
          // Not all the data was written, saving the tail.
          tail = soundData;
          tailPosition = written;
        }
        currentWritePosition += written;
      }
    }, 100);
  }

  // Control and generate the sound.

  var frequency = 0, currentSoundSample;
  var sampleRate = 44100;

  function requestSoundData(soundData) {
    if (!frequency) { 
      return; // no sound selected
    }

    var k = 2* Math.PI * frequency / sampleRate;
    for (var i=0, size=soundData.length; i<size; i++) {
      soundData[i] = Math.sin(k * currentSoundSample++);
    }        
  }

  var audioDestination = new AudioDataDestination(sampleRate, requestSoundData);

  function start() {
    currentSoundSample = 0;
    frequency = parseFloat(document.getElementById("freq").value);
  }

  function stop() {
    frequency = 0;
  }
</script>
  
Links
-----

-   [Cloud Composer](http://www.gregjopa.com/2011/08/html5-cloud-composer-app/)
-   [Calculate Note Frequencies](http://www.gregjopa.com/2011/05/calculate-note-frequencies-in-javascript-with-music-js/)

