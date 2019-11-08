<CsoundSynthesizer>
<CsOptions>
;-o dac -+rtaudio=null -d -z
-o "classicTest.wav" -W -3
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 10
nchnls = 2
0dbfs = 1.8

;-- Instrument [3] sawtooth waveform synthesizer
instr 3
ifreq = cpspch(p5)
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
;Track 1
t 0 60
;inst start dur note ;midiVelocity
i3 0 0.239 0.15 9.05 ;77
i3 0 0.239 0.15 7.07 ;55
i3 0.240 0.239 0.15 9.02 ;74
i3 0.240 0.239 0.15 7.02 ;50
i3 0.480 0.239 0.15 9.07 ;79
i3 0.480 0.239 0.15 7.07 ;55

f 126.720 0.720
</CsScore>
</CsoundSynthesizer>
