.class final Lcom/google/android/systemui/statusbar/CallbacksHandler;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManagerService.kt"

# interfaces
.implements Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;


# instance fields
.field private final callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

.field private final showCta:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final userId:I


# direct methods
.method public constructor <init>(ILcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;Lkotlinx/coroutines/flow/StateFlow;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callbacks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showCta"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/systemui/statusbar/CallbacksHandler;->userId:I

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/CallbacksHandler;->callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/CallbacksHandler;->showCta:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method


# virtual methods
.method public getShowCta()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/CallbacksHandler;->showCta:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/statusbar/CallbacksHandler;->userId:I

    return p0
.end method

.method public onNotifAvailableForReplyChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/CallbacksHandler;->callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

    invoke-interface {p0, p1}, Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;->onNotifAvailableForReplyChanged(Z)V

    return-void
.end method

.method public final onVoiceReplyError(I)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/CallbacksHandler;->callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;->onVoiceReplyHandled(II)V

    return-void
.end method

.method public final onVoiceReplyStarted(I)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/CallbacksHandler;->callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;->onVoiceReplyHandled(II)V

    return-void
.end method
