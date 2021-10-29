.class public final Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;
.super Landroid/app/Service;
.source "NotificationVoiceReplyManagerService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationVoiceReplyManagerService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyManagerService.kt\ncom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,257:1\n1245#2:258\n12671#2,2:259\n1246#2:261\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManagerService.kt\ncom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService\n*L\n188#1:258\n189#1,2:259\n188#1:261\n*E\n"
.end annotation


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private final logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

.field private final managerInitializer:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager$Initializer;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final serializer:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private voiceReplyManager:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager$Initializer;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;)V
    .locals 1

    const-string v0, "managerInitializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->managerInitializer:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager$Initializer;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(IILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->serializer:Lkotlinx/coroutines/channels/Channel;

    new-instance p1, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->binder:Landroid/os/IBinder;

    return-void
.end method

.method public static final synthetic access$ensureCallerIsAgsa(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->ensureCallerIsAgsa()V

    return-void
.end method

.method public static final synthetic access$getLogger$p(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    return-object p0
.end method

.method public static final synthetic access$getScope$p(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getSerializer$p(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)Lkotlinx/coroutines/channels/Channel;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->serializer:Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method

.method public static final synthetic access$getVoiceReplyManager$p(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->voiceReplyManager:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager;

    return-object p0
.end method

.method public static final synthetic access$serially(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->serially(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final ensureCallerIsAgsa()V
    .locals 12

    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v0, v4

    const-string v6, "com.google.android.googlequicksearchbox"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerServiceKt;->access$getAGSA_CERTS$p()[[B

    move-result-object v6

    array-length v8, v6

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v6, v9

    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v5, v10, v7}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result v10

    if-eqz v10, :cond_1

    move v6, v7

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_2
    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    move v7, v3

    :goto_3
    if-eqz v7, :cond_4

    move-object v1, v5

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    return-void

    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller is not allowlisted"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final serially(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serially$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serially$1;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->binder:Landroid/os/IBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 7

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->managerInitializer:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager$Initializer;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager$Initializer;->connect(Lkotlinx/coroutines/CoroutineScope;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->voiceReplyManager:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManager;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$onCreate$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$onCreate$1;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method final synthetic serializeIncomingIPCs(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

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

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serializeIncomingIPCs$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serializeIncomingIPCs$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serializeIncomingIPCs$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->serializer:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p0

    :cond_4
    :goto_1
    iput-object p0, v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serializeIncomingIPCs$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$serializeIncomingIPCs$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
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

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
