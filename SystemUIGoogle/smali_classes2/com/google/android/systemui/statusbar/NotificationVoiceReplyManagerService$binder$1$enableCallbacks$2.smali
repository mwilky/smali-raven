.class final Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NotificationVoiceReplyManagerService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->enableCallbacks(Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nNotificationVoiceReplyManagerService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyManagerService.kt\ncom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.kt\nkotlinx/coroutines/flow/internal/SafeCollectorKt\n+ 5 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n*L\n1#1,273:1\n20#2:274\n22#2:278\n47#2:279\n49#2:283\n20#2:284\n22#2:288\n51#3:275\n56#3:277\n51#3:280\n56#3:282\n51#3:285\n56#3:287\n119#4:276\n119#4:281\n119#4:286\n73#5,3:289\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManagerService.kt\ncom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2\n*L\n136#1:274\n136#1:278\n140#1:279\n140#1:283\n146#1:284\n146#1:288\n136#1:275\n136#1:277\n140#1:280\n140#1:282\n146#1:285\n146#1:287\n136#1:276\n140#1:281\n146#1:286\n147#1,3:289\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.statusbar.NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2"
    f = "NotificationVoiceReplyManagerService.kt"
    l = {
        0x121
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

.field final synthetic $ctaState:Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

.field L$0:Ljava/lang/Object;

.field label:I

.field private synthetic p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

.field final synthetic this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;",
            "Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;",
            "Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->$ctaState:Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

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

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->$ctaState:Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    iget-object v3, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->$callbacks:Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

    iget-object v4, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->this$1:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lkotlin/coroutines/Continuation;)V

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

    iget-object v3, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$enableCallbacks$2;->$ctaState:Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

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
