.class public interface abstract Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManager.kt"


# virtual methods
.method public abstract getShowCta()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserId()I
.end method

.method public abstract onNotifAvailableForReplyChanged(Z)V
.end method
