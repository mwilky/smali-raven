.class final Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$3;
.super Lkotlin/jvm/internal/Lambda;
.source "NotificationVoiceReplyManagerService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $handler:Lcom/google/android/systemui/statusbar/CallbacksHandler;

.field public final synthetic $token:I


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/statusbar/CallbacksHandler;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$3;->$handler:Lcom/google/android/systemui/statusbar/CallbacksHandler;

    iput p2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$3;->$token:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$3;->$handler:Lcom/google/android/systemui/statusbar/CallbacksHandler;

    iget p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$3;->$token:I

    iget-object v0, v0, Lcom/google/android/systemui/statusbar/CallbacksHandler;->callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;->onVoiceReplyHandled(II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
