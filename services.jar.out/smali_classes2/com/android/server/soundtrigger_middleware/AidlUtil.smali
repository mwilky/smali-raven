.class public Lcom/android/server/soundtrigger_middleware/AidlUtil;
.super Ljava/lang/Object;
.source "AidlUtil.java"


# direct methods
.method public static newAbortEvent()Landroid/media/soundtrigger/RecognitionEvent;
    .locals 2

    invoke-static {}, Lcom/android/server/soundtrigger_middleware/AidlUtil;->newEmptyRecognitionEvent()Landroid/media/soundtrigger/RecognitionEvent;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->type:I

    iput v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    return-object v0
.end method

.method public static newAbortPhraseEvent()Landroid/media/soundtrigger/PhraseRecognitionEvent;
    .locals 3

    invoke-static {}, Lcom/android/server/soundtrigger_middleware/AidlUtil;->newEmptyPhraseRecognitionEvent()Landroid/media/soundtrigger/PhraseRecognitionEvent;

    move-result-object v0

    iget-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    const/4 v2, 0x0

    iput v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->type:I

    const/4 v2, 0x1

    iput v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    return-object v0
.end method

.method public static newEmptyPhraseRecognitionEvent()Landroid/media/soundtrigger/PhraseRecognitionEvent;
    .locals 2

    new-instance v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger/PhraseRecognitionEvent;-><init>()V

    invoke-static {}, Lcom/android/server/soundtrigger_middleware/AidlUtil;->newEmptyRecognitionEvent()Landroid/media/soundtrigger/RecognitionEvent;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/media/soundtrigger/PhraseRecognitionExtra;

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    return-object v0
.end method

.method public static newEmptyRecognitionEvent()Landroid/media/soundtrigger/RecognitionEvent;
    .locals 2

    new-instance v0, Landroid/media/soundtrigger/RecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger/RecognitionEvent;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    return-object v0
.end method
