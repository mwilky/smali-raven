.class final Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$setFeatureEnabled$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NotificationVoiceReplyManagerService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
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
    c = "com.google.android.systemui.statusbar.NotificationVoiceReplyManagerService$binder$1$setFeatureEnabled$1"
    f = "NotificationVoiceReplyManagerService.kt"
    l = {
        0x54
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $enabledSetting:I

.field public label:I

.field public final synthetic this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

.field public final synthetic this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;",
            "Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$setFeatureEnabled$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$setFeatureEnabled$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$setFeatureEnabled$1;->this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    iput p3, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$setFeatureEnabled$1;->$enabledSetting:I

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$setFeatureEnabled$1;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$setFeatureEnabled$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$setFeatureEnabled$1;->this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    iget p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$setFeatureEnabled$1;->$enabledSetting:I

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$setFeatureEnabled$1;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;ILkotlin/coroutines/Continuation;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$setFeatureEnabled$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$setFeatureEnabled$1;->label:I

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

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$setFeatureEnabled$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    iget-object p1, p1, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$setFeatureEnabled$1;->this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->getUserId()I

    move-result v1

    iget v3, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$setFeatureEnabled$1;->$enabledSetting:I

    invoke-virtual {p1, v1, v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logSetFeatureEnabled(II)V

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$setFeatureEnabled$1;->this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    iget-object p1, p1, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->setFeatureEnabledFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->getUserId()I

    move-result v1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    iget v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$setFeatureEnabled$1;->$enabledSetting:I

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput v2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$setFeatureEnabled$1;->label:I

    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method