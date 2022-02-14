.class Lcom/android/server/soundtrigger_middleware/ConversionUtil;
.super Ljava/lang/Object;
.source "ConversionUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static aidl2hidlConfidenceLevel(Landroid/media/soundtrigger_middleware/ConfidenceLevel;)Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;
    .locals 2

    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;-><init>()V

    iget v1, p0, Landroid/media/soundtrigger_middleware/ConfidenceLevel;->userId:I

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->userId:I

    iget v1, p0, Landroid/media/soundtrigger_middleware/ConfidenceLevel;->levelPercent:I

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->levelPercent:I

    return-object v0
.end method

.method static aidl2hidlModelParameter(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static aidl2hidlPhrase(Landroid/media/soundtrigger_middleware/Phrase;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;
    .locals 7

    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;-><init>()V

    iget v1, p0, Landroid/media/soundtrigger_middleware/Phrase;->id:I

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->id:I

    iget v1, p0, Landroid/media/soundtrigger_middleware/Phrase;->recognitionModes:I

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->recognitionModes:I

    iget-object v1, p0, Landroid/media/soundtrigger_middleware/Phrase;->users:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    iget-object v5, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->users:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/media/soundtrigger_middleware/Phrase;->locale:Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->locale:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/soundtrigger_middleware/Phrase;->text:Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;->text:Ljava/lang/String;

    return-object v0
.end method

.method static aidl2hidlPhraseRecognitionExtra(Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;)Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;
    .locals 7

    new-instance v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;-><init>()V

    iget v1, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->id:I

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    iget v1, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->recognitionModes:I

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    iget v1, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->confidenceLevel:I

    iput v1, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v1, p0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget-object v5, v0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlConfidenceLevel(Landroid/media/soundtrigger_middleware/ConfidenceLevel;)Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static aidl2hidlPhraseSoundModel(Landroid/media/soundtrigger_middleware/PhraseSoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    .locals 7

    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;-><init>()V

    iget-object v1, p0, Landroid/media/soundtrigger_middleware/PhraseSoundModel;->common:Landroid/media/soundtrigger_middleware/SoundModel;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlSoundModel(Landroid/media/soundtrigger_middleware/SoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    iget-object v1, p0, Landroid/media/soundtrigger_middleware/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger_middleware/Phrase;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget-object v5, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;->phrases:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlPhrase(Landroid/media/soundtrigger_middleware/Phrase;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Phrase;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static aidl2hidlRecognitionConfig(Landroid/media/soundtrigger_middleware/RecognitionConfig;)Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
    .locals 7

    new-instance v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;-><init>()V

    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    iget-object v1, v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    iget-boolean v2, p0, Landroid/media/soundtrigger_middleware/RecognitionConfig;->captureRequested:Z

    iput-boolean v2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    iget-object v1, p0, Landroid/media/soundtrigger_middleware/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget-object v5, v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    iget-object v5, v5, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    iget-object v5, v5, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlPhraseRecognitionExtra(Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;)Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    iget-object v2, p0, Landroid/media/soundtrigger_middleware/RecognitionConfig;->data:[B

    const-string v3, "SoundTrigger RecognitionConfig"

    invoke-static {v2, v3}, Landroid/os/HidlMemoryUtil;->byteArrayToHidlMemory([BLjava/lang/String;)Landroid/os/HidlMemory;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->data:Landroid/os/HidlMemory;

    iget v1, p0, Landroid/media/soundtrigger_middleware/RecognitionConfig;->audioCapabilities:I

    iput v1, v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->audioCapabilities:I

    return-object v0
.end method

.method static aidl2hidlRecognitionModes(I)I
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    return v0
.end method

.method static aidl2hidlSoundModel(Landroid/media/soundtrigger_middleware/SoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .locals 3

    new-instance v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;-><init>()V

    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    iget v2, p0, Landroid/media/soundtrigger_middleware/SoundModel;->type:I

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlSoundModelType(I)I

    move-result v2

    iput v2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->type:I

    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    iget-object v2, p0, Landroid/media/soundtrigger_middleware/SoundModel;->uuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlUuid(Ljava/lang/String;)Landroid/hardware/audio/common/V2_0/Uuid;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;

    iget-object v2, p0, Landroid/media/soundtrigger_middleware/SoundModel;->vendorUuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlUuid(Ljava/lang/String;)Landroid/hardware/audio/common/V2_0/Uuid;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;->vendorUuid:Landroid/hardware/audio/common/V2_0/Uuid;

    iget-object v1, p0, Landroid/media/soundtrigger_middleware/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    iget v2, p0, Landroid/media/soundtrigger_middleware/SoundModel;->dataSize:I

    invoke-static {v1, v2}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->parcelFileDescriptorToHidlMemory(Landroid/os/ParcelFileDescriptor;I)Landroid/os/HidlMemory;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;->data:Landroid/os/HidlMemory;

    return-object v0
.end method

.method static aidl2hidlSoundModelType(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound model type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static aidl2hidlUuid(Ljava/lang/String;)Landroid/hardware/audio/common/V2_0/Uuid;
    .locals 12

    sget-object v0, Lcom/android/server/soundtrigger_middleware/UuidUtil;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/hardware/audio/common/V2_0/Uuid;

    invoke-direct {v1}, Landroid/hardware/audio/common/V2_0/Uuid;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v5

    int-to-short v5, v5

    iput-short v5, v1, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v6

    int-to-short v6, v6

    iput-short v6, v1, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v7

    int-to-short v7, v7

    iput-short v7, v1, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    const/4 v7, 0x6

    new-array v8, v7, [B

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v8, v9

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v8, v2

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v8, v3

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v8, v5

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v8, v6

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v8, v10

    iput-object v8, v1, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal format for UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static hidl2aidlAudioCapabilities(I)I
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    return v0
.end method

.method static hidl2aidlAudioConfig(Landroid/hardware/audio/common/V2_0/AudioConfig;)Landroid/media/audio/common/AudioConfig;
    .locals 3

    new-instance v0, Landroid/media/audio/common/AudioConfig;

    invoke-direct {v0}, Landroid/media/audio/common/AudioConfig;-><init>()V

    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->sampleRateHz:I

    iput v1, v0, Landroid/media/audio/common/AudioConfig;->sampleRateHz:I

    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->channelMask:I

    iput v1, v0, Landroid/media/audio/common/AudioConfig;->channelMask:I

    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->format:I

    iput v1, v0, Landroid/media/audio/common/AudioConfig;->format:I

    iget-object v1, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->offloadInfo:Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlOffloadInfo(Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;)Landroid/media/audio/common/AudioOffloadInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/media/audio/common/AudioConfig;->offloadInfo:Landroid/media/audio/common/AudioOffloadInfo;

    iget-wide v1, p0, Landroid/hardware/audio/common/V2_0/AudioConfig;->frameCount:J

    iput-wide v1, v0, Landroid/media/audio/common/AudioConfig;->frameCount:J

    return-object v0
.end method

.method static hidl2aidlConfidenceLevel(Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;)Landroid/media/soundtrigger_middleware/ConfidenceLevel;
    .locals 2

    new-instance v0, Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/ConfidenceLevel;-><init>()V

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->userId:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/ConfidenceLevel;->userId:I

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;->levelPercent:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/ConfidenceLevel;->levelPercent:I

    return-object v0
.end method

.method static hidl2aidlModelParameterRange(Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;)Landroid/media/soundtrigger_middleware/ModelParameterRange;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/media/soundtrigger_middleware/ModelParameterRange;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/ModelParameterRange;-><init>()V

    iget v1, p0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->start:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/ModelParameterRange;->minInclusive:I

    iget v1, p0, Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;->end:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/ModelParameterRange;->maxInclusive:I

    return-object v0
.end method

.method static hidl2aidlOffloadInfo(Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;)Landroid/media/audio/common/AudioOffloadInfo;
    .locals 3

    new-instance v0, Landroid/media/audio/common/AudioOffloadInfo;

    invoke-direct {v0}, Landroid/media/audio/common/AudioOffloadInfo;-><init>()V

    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->sampleRateHz:I

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->sampleRateHz:I

    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->channelMask:I

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->channelMask:I

    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->format:I

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->format:I

    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->streamType:I

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->streamType:I

    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitRatePerSecond:I

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->bitRatePerSecond:I

    iget-wide v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->durationMicroseconds:J

    iput-wide v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->durationMicroseconds:J

    iget-boolean v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->hasVideo:Z

    iput-boolean v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->hasVideo:Z

    iget-boolean v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->isStreaming:Z

    iput-boolean v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->isStreaming:Z

    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bitWidth:I

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->bitWidth:I

    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->bufferSize:I

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->bufferSize:I

    iget v1, p0, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo;->usage:I

    iput v1, v0, Landroid/media/audio/common/AudioOffloadInfo;->usage:I

    return-object v0
.end method

.method static hidl2aidlPhraseRecognitionEvent(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;)Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;
    .locals 4

    new-instance v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;-><init>()V

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;->common:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger_middleware/RecognitionEvent;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger_middleware/RecognitionEvent;

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;)Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static hidl2aidlPhraseRecognitionEvent(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;)Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;
    .locals 4

    new-instance v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;-><init>()V

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger_middleware/RecognitionEvent;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger_middleware/RecognitionEvent;

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;->phraseExtras:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;)Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static hidl2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;)Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;
    .locals 4

    new-instance v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;-><init>()V

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->id:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->id:I

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->recognitionModes:I

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->recognitionModes:I

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->confidenceLevel:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->confidenceLevel:I

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->levels:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;

    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlConfidenceLevel(Landroid/hardware/soundtrigger/V2_0/ConfidenceLevel;)Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;
    .locals 2

    new-instance v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;-><init>()V

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->implementor:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->implementor:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->description:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->description:Ljava/lang/String;

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->version:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->version:I

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->uuid:Landroid/hardware/audio/common/V2_0/Uuid;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlUuid(Landroid/hardware/audio/common/V2_0/Uuid;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->uuid:Ljava/lang/String;

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxSoundModels:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->maxSoundModels:I

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxKeyPhrases:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->maxKeyPhrases:I

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxUsers:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->maxUsers:I

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->recognitionModes:I

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->recognitionModes:I

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->captureTransition:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->captureTransition:Z

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->maxBufferMs:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->maxBufferMs:I

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->concurrentCapture:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->concurrentCapture:Z

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->triggerInEvent:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->triggerInEvent:Z

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->powerConsumptionMw:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->powerConsumptionMw:I

    return-object v0
.end method

.method static hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_3/Properties;)Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;
    .locals 2

    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->base:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlProperties(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->supportedModelArch:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->supportedModelArch:Ljava/lang/String;

    iget v1, p0, Landroid/hardware/soundtrigger/V2_3/Properties;->audioCapabilities:I

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlAudioCapabilities(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->audioCapabilities:I

    return-object v0
.end method

.method static hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger_middleware/RecognitionEvent;
    .locals 4

    new-instance v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger_middleware/RecognitionEvent;-><init>()V

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->status:I

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionStatus(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->status:I

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->type:I

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlSoundModelType(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->type:I

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureAvailable:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->captureAvailable:Z

    const/4 v1, -0x1

    iput v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->captureSession:I

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->captureDelayMs:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->captureDelayMs:I

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->capturePreambleMs:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->capturePreambleMs:I

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->triggerInData:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->triggerInData:Z

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->audioConfig:Landroid/hardware/audio/common/V2_0/AudioConfig;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlAudioConfig(Landroid/hardware/audio/common/V2_0/AudioConfig;)Landroid/media/audio/common/AudioConfig;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->audioConfig:Landroid/media/audio/common/AudioConfig;

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->data:[B

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->data:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->data:[B

    iget-object v3, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger_middleware/RecognitionEvent;
    .locals 2

    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger_middleware/RecognitionEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->data:Landroid/os/HidlMemory;

    invoke-static {v1}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteArray(Landroid/os/HidlMemory;)[B

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->data:[B

    return-object v0
.end method

.method static hidl2aidlRecognitionModes(I)I
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    return v0
.end method

.method static hidl2aidlRecognitionStatus(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown recognition status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x3

    return v0

    :pswitch_1
    const/4 v0, 0x2

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static hidl2aidlSoundModelType(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound model type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static hidl2aidlUuid(Landroid/hardware/audio/common/V2_0/Uuid;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    array-length v0, v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeLow:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->timeMid:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->versionAndTimeHigh:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v0, v5

    iget-short v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->variantAndClockSeqHigh:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v0, v6

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v4

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v0, v4

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v5

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v6

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Landroid/hardware/audio/common/V2_0/Uuid;->node:[B

    aget-byte v2, v2, v4

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%08x-%04x-%04x-%04x-%02x%02x%02x%02x%02x%02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UUID.node must be of length 6."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parcelFileDescriptorToHidlMemory(Landroid/os/ParcelFileDescriptor;I)Landroid/os/HidlMemory;
    .locals 2

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/HidlMemoryUtil;->fileDescriptorToHidlMemory(Ljava/io/FileDescriptor;I)Landroid/os/HidlMemory;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/HidlMemoryUtil;->fileDescriptorToHidlMemory(Ljava/io/FileDescriptor;I)Landroid/os/HidlMemory;

    move-result-object v0

    return-object v0
.end method
