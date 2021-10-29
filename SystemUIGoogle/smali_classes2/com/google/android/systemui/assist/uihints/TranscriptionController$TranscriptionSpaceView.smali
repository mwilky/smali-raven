.class interface abstract Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;
.super Ljava/lang/Object;
.source "TranscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/uihints/TranscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "TranscriptionSpaceView"
.end annotation


# virtual methods
.method public abstract getHitRect(Landroid/graphics/Rect;)V
.end method

.method public abstract hide(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onFontSizeChanged()V
.end method

.method public setCardVisible(Z)V
    .locals 0

    return-void
.end method

.method public abstract setHasDarkBackground(Z)V
.end method
