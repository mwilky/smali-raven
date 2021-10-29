.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;->startClient()Lcom/android/systemui/statusbar/notification/people/Subscription;
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
    value = "SMAP\nNotificationVoiceReplyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,1013:1\n1#2:1014\n852#3,2:1015\n850#3:1017\n855#3:1026\n197#4,8:1018\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1\n*L\n1002#1,2:1015\n1002#1:1017\n1002#1:1026\n1002#1,8:1018\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.statusbar.notification.voicereplies.DebugNotificationVoiceReplyClient$startClient$job$1"
    f = "NotificationVoiceReplyManager.kt"
    l = {
        0x3fa
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field private synthetic p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final synthetic access$getP$$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;

    invoke-direct {v0, p0, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;->access$getVoiceReplyInitializer$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager$Initializer;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {p1, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager$Initializer;->connect(Lkotlinx/coroutines/CoroutineScope;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager;

    move-result-object p1

    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$subscription$1;

    iget-object v4, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;

    invoke-direct {v3, v4, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$subscription$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-interface {p1, v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager;->registerHandler(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;

    move-result-object p1

    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v11, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1;

    invoke-direct {v11, v1, p0, p1, v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;Lkotlin/jvm/internal/Ref$IntRef;)V

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;

    invoke-static {v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;->access$getBroadcastDispatcher$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;)Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-result-object v4

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.google.android.systemui.START_VOICE_REPLY"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object v5, v11

    invoke-static/range {v4 .. v10}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;

    :try_start_1
    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;->L$0:Ljava/lang/Object;

    iput-object v11, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;->label:I

    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_2

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    if-ne v2, v0, :cond_3

    return-object v0

    :cond_3
    move-object p0, p1

    move-object v0, v1

    move-object v1, v11

    :goto_0
    :try_start_2
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception p0

    move-object v0, v1

    move-object v1, v11

    move-object v12, p1

    move-object p1, p0

    move-object p0, v12

    :goto_1
    invoke-static {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;->access$getBroadcastDispatcher$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;)Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/people/Subscription;->unsubscribe()V

    throw p1
.end method
