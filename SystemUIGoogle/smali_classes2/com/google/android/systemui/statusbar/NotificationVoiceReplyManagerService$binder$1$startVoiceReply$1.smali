.class final Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NotificationVoiceReplyManagerService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->startVoiceReply(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.statusbar.NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1"
    f = "NotificationVoiceReplyManagerService.kt"
    l = {
        0x5b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $sessionToken:I

.field final synthetic $userMessageContent:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

.field final synthetic this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;",
            "Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;->this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    iput p3, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;->$sessionToken:I

    iput-object p4, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;->$userMessageContent:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;->this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    iget v3, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;->$sessionToken:I

    iget-object v4, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;->$userMessageContent:Ljava/lang/String;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$getLogger$p(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;->this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    invoke-virtual {v1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->getUserId()I

    move-result v1

    iget v3, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;->$sessionToken:I

    iget-object v4, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;->$userMessageContent:Ljava/lang/String;

    invoke-virtual {p1, v1, v3, v4}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logStartVoiceReply(IILjava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;->this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->getStartVoiceReplyFlow()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    new-instance v1, Lcom/google/android/systemui/statusbar/StartVoiceReplyData;

    iget-object v3, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;->this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    invoke-virtual {v3}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->getUserId()I

    move-result v3

    iget v4, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;->$sessionToken:I

    iget-object v5, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;->$userMessageContent:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/systemui/statusbar/StartVoiceReplyData;-><init>(IILjava/lang/String;)V

    iput v2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
