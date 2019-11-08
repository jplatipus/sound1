<CsoundSynthesizer>
<CsOptions>
-o "octaveTest.wav" -W -3
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 128
nchnls = 2
0dbfs = 1.0

giSine ftgen 0, 0, 8192, 10, 1

; Loosely taken from Csound Power! by Jim Aikin, 2013, Chapter 3 quick start projects.
;
; instrument 1
; p1: intrument
; p2: start time
; p3: note duration
; p4: note amplitude
; p5: note frequency
instr 1

; setup:
iamp = p4 * 0.6
ifreq = cpspch(p5)
print ifreq
idetune = 0.7
index = 3

; envelopes:
kindexenv linseg index, 0.05, (index * 0.5), (p3 - 0.05), 0
kampenv linseg 0, 0.01, iamp, (p3 - 0.01), 0

; tone generators:
aout1 foscil kampenv, ifreq - idetune, 1, 1, kindexenv, giSine
aout2 foscil kampenv, ifreq + idetune, 1, 1, kindexenv, giSine

; output
outs aout1, aout2
endin

</CsInstruments>
<CsScore>
t 0 120
i1 0 0.5 0.7 8.00
i1 + 0.5 0.7 8.01
i1 + 0.5 0.7 8.02
i1 + 0.5 0.7 8.03
i1 + 0.5 0.7 8.04
i1 + 0.5 0.7 8.05
i1 + 0.5 0.7 8.06
i1 + 0.5 0.7 8.07
i1 + 0.5 0.7 8.08
i1 + 0.5 0.7 8.09
i1 + 0.5 0.7 8.10
i1 + 0.5 0.7 8.11
</CsScore>
</CsoundSynthesizer>

