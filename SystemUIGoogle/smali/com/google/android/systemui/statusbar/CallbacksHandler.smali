.class public final Lcom/google/android/systemui/statusbar/CallbacksHandler;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManagerService.kt"

# interfaces
.implements Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;


# instance fields
.field public final callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

.field public final showCta:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;",
            ">;"
        }
    .end annotation
.end field

.field public final userId:I


# direct methods
.method public constructor <init>(ILcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;Lkotlinx/coroutines/flow/StateFlowImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/systemui/statusbar/CallbacksHandler;->userId:I

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/CallbacksHandler;->callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/CallbacksHandler;->showCta:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method


# virtual methods
.method public final getShowCta()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/CallbacksHandler;->showCta:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getUserId()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/statusbar/CallbacksHandler;->userId:I

    return p0
.end method

.method public final onNotifAvailableForQuickPhraseReplyChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/CallbacksHandler;->callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

    invoke-interface {p0, p1}, Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;->onNotifAvailableForQuickPhraseChanged(Z)V

    return-void
.end method

.method public final onNotifAvailableForReplyChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/CallbacksHandler;->callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

    invoke-interface {p0, p1}, Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;->onNotifAvailableForReplyChanged(Z)V

    return-void
.end method
