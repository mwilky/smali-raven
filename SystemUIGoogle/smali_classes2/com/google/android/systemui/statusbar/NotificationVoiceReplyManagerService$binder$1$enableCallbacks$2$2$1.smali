.class final Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NotificationVoiceReplyManagerService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.statusbar.NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1"
    f = "NotificationVoiceReplyManagerService.kt"
    l = {
        0x94
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $content:Ljava/lang/String;

.field final synthetic $handler:Lcom/google/android/systemui/statusbar/CallbacksHandler;

.field final synthetic $registration:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;

.field final synthetic $token:I

.field label:I

.field private synthetic p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;Lcom/google/android/systemui/statusbar/CallbacksHandler;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;",
            "Lcom/google/android/systemui/statusbar/CallbacksHandler;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;->$registration:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;->$handler:Lcom/google/android/systemui/statusbar/CallbacksHandler;

    iput p4, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;->$token:I

    iput-object p5, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;->$content:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v7, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;->$registration:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;

    iget-object v3, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;->$handler:Lcom/google/android/systemui/statusbar/CallbacksHandler;

    iget v4, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;->$token:I

    iget-object v5, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;->$content:Ljava/lang/String;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;Lcom/google/android/systemui/statusbar/CallbacksHandler;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v7, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;->label:I

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

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;->$registration:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;

    iget-object v3, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;->$handler:Lcom/google/android/systemui/statusbar/CallbacksHandler;

    iget v4, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;->$token:I

    iget-object v5, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;->$content:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$2$1;->label:I

    move-object v2, p1

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->startVoiceReply(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;Lcom/google/android/systemui/statusbar/CallbacksHandler;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
