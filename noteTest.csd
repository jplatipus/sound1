<CsoundSynthesizer>
<CsOptions>
;-o dac -+rtaudio=null -d -z
-o "noteTest.wav" -W -3
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 10
nchnls = 2
0dbfs = 1.8

;-- Instrument [3] sawtooth waveform synthesizer
instr 3
ifreq = cpspch(p5)
print ifreq
iamp = p4
idur = p3
iwave = 2
idetune = 0.3
kenv linseg 0, .01, iamp, idur-.1, iamp*.8, .05, 0
asig1 oscili kenv, ifreq - idetune, iwave
asig2 oscili kenv, ifreq + idetune, iwave
aout  = asig1 + asig2
outs aout, aout

endin
</CsInstruments>
<CsScore>

;-- Functions for instrument [3] sawtooth waveform synthesizer
f 2 0 513 10 1 .5 .333 .25 .2 .166 .143 .125 .111 .1 .0909 .0833 .077
t 0 60
;inst start dur note; midiVelocity
i3 0 0.239 0.15 8.09 ;77
</CsScore>
