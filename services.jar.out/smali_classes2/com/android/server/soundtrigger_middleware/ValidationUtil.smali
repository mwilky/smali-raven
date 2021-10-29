.class public Lcom/android/server/soundtrigger_middleware/ValidationUtil;
.super Ljava/lang/Object;
.source "ValidationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static validateGenericModel(Landroid/media/soundtrigger_middleware/SoundModel;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateModel(Landroid/media/soundtrigger_middleware/SoundModel;I)V

    return-void
.end method

.method static validateModel(Landroid/media/soundtrigger_middleware/SoundModel;I)V
    .locals 2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Landroid/media/soundtrigger_middleware/SoundModel;->type:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Landroid/media/soundtrigger_middleware/SoundModel;->uuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateUuid(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/soundtrigger_middleware/SoundModel;->vendorUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateUuid(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/soundtrigger_middleware/SoundModel;->dataSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/media/soundtrigger_middleware/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static validateModelParameter(I)V
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid model parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static validatePhraseModel(Landroid/media/soundtrigger_middleware/PhraseSoundModel;)V
    .locals 5

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/soundtrigger_middleware/PhraseSoundModel;->common:Landroid/media/soundtrigger_middleware/SoundModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateModel(Landroid/media/soundtrigger_middleware/SoundModel;I)V

    iget-object v0, p0, Landroid/media/soundtrigger_middleware/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger_middleware/Phrase;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/soundtrigger_middleware/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger_middleware/Phrase;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v3, Landroid/media/soundtrigger_middleware/Phrase;->recognitionModes:I

    and-int/lit8 v4, v4, -0x10

    if-nez v4, :cond_0

    iget-object v4, v3, Landroid/media/soundtrigger_middleware/Phrase;->users:[I

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Landroid/media/soundtrigger_middleware/Phrase;->locale:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Landroid/media/soundtrigger_middleware/Phrase;->text:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid recognitionModes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method static validateRecognitionConfig(Landroid/media/soundtrigger_middleware/RecognitionConfig;)V
    .locals 12

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/soundtrigger_middleware/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/soundtrigger_middleware/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, v4, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->recognitionModes:I

    and-int/lit8 v5, v5, -0x10

    if-nez v5, :cond_3

    iget v5, v4, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->confidenceLevel:I

    const-string v6, "Invalid confidenceLevel"

    if-ltz v5, :cond_2

    iget v5, v4, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->confidenceLevel:I

    const/16 v7, 0x64

    if-gt v5, v7, :cond_2

    iget-object v5, v4, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Landroid/media/soundtrigger_middleware/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger_middleware/ConfidenceLevel;

    array-length v8, v5

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v5, v9

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v11, v10, Landroid/media/soundtrigger_middleware/ConfidenceLevel;->levelPercent:I

    if-ltz v11, :cond_0

    iget v11, v10, Landroid/media/soundtrigger_middleware/ConfidenceLevel;->levelPercent:I

    if-gt v11, v7, :cond_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid recognitionModes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Landroid/media/soundtrigger_middleware/RecognitionConfig;->data:[B

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static validateUuid(Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/soundtrigger_middleware/UuidUtil;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

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
