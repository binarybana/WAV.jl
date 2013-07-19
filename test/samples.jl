reload("WAV.jl")

basedir = "/Users/dan/Downloads/sample-wavs"
testfiles = [
"ccrma/truspech.wav",
"ccrma/voxware.wav",
"copyaudio/M1F1-Alaw-AFsp.wav",
"copyaudio/M1F1-AlawWE-AFsp.wav",
"copyaudio/M1F1-float32-AFsp.wav",
"copyaudio/M1F1-float64-AFsp.wav",
"copyaudio/M1F1-float64WE-AFsp.wav",
"copyaudio/M1F1-int12-AFsp.wav",
"copyaudio/M1F1-int12WE-AFsp.wav",
"copyaudio/M1F1-int16-AFsp.wav",
"copyaudio/M1F1-int16WE-AFsp.wav",
"copyaudio/M1F1-int24-AFsp.wav",
"copyaudio/M1F1-int24WE-AFsp.wav",
"copyaudio/M1F1-int32-AFsp.wav",
"copyaudio/M1F1-int32WE-AFsp.wav",
"copyaudio/M1F1-mulaw-AFsp.wav",
"copyaudio/M1F1-mulawWE-AFsp.wav",
"copyaudio/M1F1-uint8-AFsp.wav",
"copyaudio/M1F1-uint8WE-AFsp.wav",
"goldwave/addf8-Alaw-GW.wav",
"goldwave/addf8-GSM-GW.wav",
"goldwave/addf8-mulaw-GW.wav",
"multi-channel/6_Channel_ID.wav",
"multi-channel/8_Channel_ID.wav",
"perverse/GLASS.wav",
"perverse/Pmiscck.wav",
"perverse/Ptjunk.wav",
"perverse/Utopia Critical Stop.wav",
"soundcard-attrition/4ch.wav",
"soundcard-attrition/drmapan.wav",
"soundcard-attrition/stereofl.wav",
"soundcard-attrition/stereol.wav"
]

for f in testfiles
    full = joinpath(basedir, f)
    print("reading $full...");
    try
        samples = WAV.wavread(full)
        println("OK")
    catch Exception
        println("FAIL: $Exception")
    end
end
