.class final Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NotificationVoiceReplyManagerService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->enableCallbacks(Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationVoiceReplyManagerService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyManagerService.kt\ncom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.kt\nkotlinx/coroutines/flow/internal/SafeCollectorKt\n+ 5 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n*L\n1#1,257:1\n20#2:258\n22#2:262\n47#2:263\n49#2:267\n20#2:268\n22#2:272\n51#3:259\n56#3:261\n51#3:264\n56#3:266\n51#3:269\n56#3:271\n119#4:260\n119#4:265\n119#4:270\n73#5,3:273\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManagerService.kt\ncom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2\n*L\n128#1:258\n128#1:262\n132#1:263\n132#1:267\n140#1:268\n140#1:272\n128#1:259\n128#1:261\n132#1:264\n132#1:266\n140#1:269\n140#1:271\n128#1:260\n132#1:265\n140#1:270\n141#1,3:273\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.statusbar.NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2"
    f = "NotificationVoiceReplyManagerService.kt"
    l = {
        0x111
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

.field final synthetic $showCTA:Z

.field L$0:Ljava/lang/Object;

.field label:I

.field private synthetic p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

.field final synthetic this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;ZLcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;",
            "Z",
            "Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;",
            "Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    iput-boolean p2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->$showCTA:Z

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->$callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

    iput-object p4, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final synthetic access$getP$$p(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    iget-boolean v2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->$showCTA:Z

    iget-object v3, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->$callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

    iget-object v4, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;ZLcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v6, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->getSetFeatureEnabledFlow()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    new-instance v3, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$invokeSuspend$$inlined$filter$1;

    invoke-direct {v3, p1, v1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$invokeSuspend$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;)V

    new-instance p1, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$invokeSuspend$$inlined$map$1;

    invoke-direct {p1, v3}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$invokeSuspend$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    iget-boolean v3, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->$showCTA:Z

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerServiceKt;->access$stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    new-instance v1, Lcom/google/android/systemui/statusbar/CallbacksHandler;

    iget-object v3, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    invoke-virtual {v3}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->getUserId()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->$callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

    invoke-direct {v1, v3, v4, p1}, Lcom/google/android/systemui/statusbar/CallbacksHandler;-><init>(ILcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;Lkotlinx/coroutines/flow/StateFlow;)V

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$getVoiceReplyManager$p(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager;->registerHandler(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;

    move-result-object p1

    :try_start_1
    iget-object v3, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    invoke-virtual {v3}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->getStartVoiceReplyFlow()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    new-instance v5, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$invokeSuspend$$inlined$filter$2;

    invoke-direct {v5, v3, v4}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$invokeSuspend$$inlined$filter$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;)V

    iget-object v3, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    new-instance v4, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$invokeSuspend$$inlined$collect$1;

    invoke-direct {v4, p0, v3, p1, v1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2$invokeSuspend$$inlined$collect$1;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;Lcom/google/android/systemui/statusbar/CallbacksHandler;)V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->label:I

    invoke-interface {v5, v4, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    :goto_0
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$getLogger$p(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->getUserId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logUnregisterCallbacks(I)V

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/people/Subscription;->unsubscribe()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_1
    move-exception v0

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    :goto_1
    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    invoke-static {v1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$getLogger$p(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->getUserId()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logUnregisterCallbacks(I)V

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/people/Subscription;->unsubscribe()V

    throw p1

    :cond_3
    const-string p0, "voiceReplyManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
