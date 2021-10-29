.class public final Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4$invokeSuspend$$inlined$collect$1;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n+ 2 NotificationVoiceReplyManagerService.kt\ncom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4\n*L\n1#1,135:1\n160#2:136\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4$invokeSuspend$$inlined$collect$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;

    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/OnVoiceAuthStateChangedData;->component3()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4$invokeSuspend$$inlined$collect$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;

    invoke-static {p0}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;->access$getP$$p(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$4;)Lcom/google/android/systemui/statusbar/notification/voicereplies/Session;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/Session;->setVoiceAuthState(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
