.class public final Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;
.super Landroid/app/Service;
.source "NotificationVoiceReplyManagerService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationVoiceReplyManagerService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyManagerService.kt\ncom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,273:1\n1275#2:274\n12701#2,2:275\n1276#2:277\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManagerService.kt\ncom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService\n*L\n194#1:274\n195#1:275,2\n194#1:277\n*E\n"
.end annotation


# instance fields
.field public final binder:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

.field public final logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

.field public final managerInitializer:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager$Initializer;

.field public final scope:Lkotlinx/coroutines/internal/ContextScope;

.field public final serializer:Lkotlinx/coroutines/channels/AbstractChannel;

.field public voiceReplyManager:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager$Initializer;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;)V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->managerInitializer:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager$Initializer;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    new-instance p1, Lkotlinx/coroutines/internal/ContextScope;

    new-instance p2, Lkotlinx/coroutines/SupervisorJobImpl;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lkotlinx/coroutines/SupervisorJobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    sget-object v1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-static {p2, v1}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlinx/coroutines/internal/ContextScope;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->scope:Lkotlinx/coroutines/internal/ContextScope;

    const/4 p1, 0x0

    const/4 p2, 0x7

    invoke-static {p1, v0, p2}, Lkotlin/TuplesKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/channels/AbstractChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->serializer:Lkotlinx/coroutines/channels/AbstractChannel;

    new-instance p1, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->binder:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    return-void
.end method

.method public static final access$ensureCallerIsAgsa(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)V
    .locals 12

    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :cond_1
    if-ge v4, v2, :cond_5

    aget-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    const-string v6, "com.google.android.googlequicksearchbox"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    sget-object v6, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerServiceKt;->AGSA_CERTS:[[B

    array-length v8, v6

    move v9, v3

    :cond_2
    if-ge v9, v8, :cond_3

    aget-object v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v5, v10, v7}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result v10

    if-eqz v10, :cond_2

    move v6, v7

    goto :goto_0

    :cond_3
    move v6, v3

    :goto_0
    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    move v7, v3

    :goto_1
    if-eqz v7, :cond_1

    move-object v1, v5

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    return-void

    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller is not allowlisted"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final access$serializeIncomingIPCs(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serializeIncomingIPCs$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serializeIncomingIPCs$1;

    iget v1, v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serializeIncomingIPCs$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serializeIncomingIPCs$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serializeIncomingIPCs$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serializeIncomingIPCs$1;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serializeIncomingIPCs$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serializeIncomingIPCs$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget-object p0, v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serializeIncomingIPCs$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move-object p1, p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object p0, v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serializeIncomingIPCs$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->serializer:Lkotlinx/coroutines/channels/AbstractChannel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lkotlinx/coroutines/channels/AbstractChannel$Itr;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/channels/AbstractChannel$Itr;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;)V

    :goto_1
    iput-object p1, v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serializeIncomingIPCs$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serializeIncomingIPCs$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p0, v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serializeIncomingIPCs$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serializeIncomingIPCs$1;->label:I

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1

    goto :goto_3

    :cond_6
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    return-object v1
.end method

.method public static final access$serially(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serially$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serially$1;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->binder:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    return-object p0
.end method

.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->managerInitializer:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager$Initializer;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->scope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-interface {v0, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager$Initializer;->connect(Lkotlinx/coroutines/CoroutineScope;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$connect$1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->voiceReplyManager:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager;

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->scope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v1, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$onCreate$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$onCreate$1;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->scope:Lkotlinx/coroutines/internal/ContextScope;

    iget-object v1, v0, Lkotlinx/coroutines/internal/ContextScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    sget-object v2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Scope cannot be cancelled because it does not have a job: "

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
