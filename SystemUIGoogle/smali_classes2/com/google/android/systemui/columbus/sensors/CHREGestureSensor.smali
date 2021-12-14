.class public final Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;
.super Lcom/google/android/systemui/columbus/sensors/GestureSensor;
.source "CHREGestureSensor.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$Companion;,
        Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;,
        Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCHREGestureSensor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CHREGestureSensor.kt\ncom/google/android/systemui/columbus/sensors/CHREGestureSensor\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,349:1\n13506#2,2:350\n*E\n*S KotlinDebug\n*F\n+ 1 CHREGestureSensor.kt\ncom/google/android/systemui/columbus/sensors/CHREGestureSensor\n*L\n212#1,2:350\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$Companion;


# instance fields
.field private final bgHandler:Landroid/os/Handler;

.field private final context:Landroid/content/Context;

.field private contextHubClient:Landroid/hardware/location/ContextHubClient;

.field private final contextHubClientCallback:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$contextHubClientCallback$1;

.field private final featureVectorDumper:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;

.field private final gestureConfiguration:Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;

.field private isAwake:Z

.field private isDozing:Z

.field private isListening:Z

.field private screenOn:Z

.field private screenStateUpdated:Z

.field private final statusBarStateListener:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$statusBarStateListener$1;

.field private final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final wakefulnessLifecycleObserver:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$wakefulnessLifecycleObserver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->Companion:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Landroid/os/Handler;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiEventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gestureConfiguration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBarStateController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wakefulnessLifecycle"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgHandler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/GestureSensor;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->gestureConfiguration:Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;

    iput-object p6, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->bgHandler:Landroid/os/Handler;

    new-instance p1, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;

    invoke-direct {p1}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->featureVectorDumper:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;

    new-instance p1, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$contextHubClientCallback$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$contextHubClientCallback$1;-><init>(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->contextHubClientCallback:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$contextHubClientCallback$1;

    new-instance p1, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$statusBarStateListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$statusBarStateListener$1;-><init>(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->statusBarStateListener:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$statusBarStateListener$1;

    new-instance p2, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$wakefulnessLifecycleObserver$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$wakefulnessLifecycleObserver$1;-><init>(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->wakefulnessLifecycleObserver:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$wakefulnessLifecycleObserver$1;

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result p6

    iput-boolean p6, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isDozing:Z

    invoke-virtual {p5}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result p6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p6, v2, :cond_0

    move p6, v1

    goto :goto_0

    :cond_0
    move p6, v0

    :goto_0
    iput-boolean p6, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isAwake:Z

    if-eqz p6, :cond_1

    iget-boolean p6, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isDozing:Z

    if-nez p6, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->screenOn:Z

    iput-boolean v1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->screenStateUpdated:Z

    new-instance p6, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$1;

    invoke-direct {p6, p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$1;-><init>(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V

    invoke-virtual {p3, p6}, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->setListener(Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration$Listener;)V

    invoke-interface {p4, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    invoke-virtual {p5, p2}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->initializeContextHubClientIfNull()V

    return-void
.end method

.method public static final synthetic access$getContextHubClient$p(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)Landroid/hardware/location/ContextHubClient;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->contextHubClient:Landroid/hardware/location/ContextHubClient;

    return-object p0
.end method

.method public static final synthetic access$getUiEventLogger$p(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method public static final synthetic access$handleDozingChanged(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->handleDozingChanged(Z)V

    return-void
.end method

.method public static final synthetic access$handleGestureDetection(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->handleGestureDetection(Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;)V

    return-void
.end method

.method public static final synthetic access$handleNanoappEvents(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvents;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->handleNanoappEvents(Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvents;)V

    return-void
.end method

.method public static final synthetic access$handleWakefullnessChanged(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->handleWakefullnessChanged(Z)V

    return-void
.end method

.method public static final synthetic access$setScreenStateUpdated$p(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->screenStateUpdated:Z

    return-void
.end method

.method public static final synthetic access$startRecognizer(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->startRecognizer()V

    return-void
.end method

.method public static final synthetic access$updateScreenState(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->updateScreenState()V

    return-void
.end method

.method public static final synthetic access$updateSensitivity(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->updateSensitivity(Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;)V

    return-void
.end method

.method private final handleDozingChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isDozing:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isDozing:Z

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->updateScreenState()V

    :cond_0
    return-void
.end method

.method private final handleGestureDetection(Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;)V
    .locals 3

    iget v0, p1, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;->gestureType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->protoGestureTypeToGesture(I)I

    move-result v0

    new-instance v2, Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;

    invoke-direct {v2, v1}, Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;-><init>(Z)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/systemui/columbus/sensors/GestureSensor;->reportGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->featureVectorDumper:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;->onGestureDetected(Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;)V

    return-void
.end method

.method private final handleNanoappEvents(Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvents;)V
    .locals 6

    iget-object p1, p1, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvents;->batchedEvents:[Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvent;

    const-string v0, "nanoappEvents.batchedEvents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v3

    const v4, 0x186d3

    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    iget-wide v4, v2, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvent;->timestamp:J

    invoke-virtual {v3, v4, v5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v3

    iget v2, v2, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvent;->type:I

    invoke-direct {p0, v2}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->toWestWorldEventType(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v2

    invoke-static {v2}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final handleWakefullnessChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isAwake:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isAwake:Z

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->updateScreenState()V

    :cond_0
    return-void
.end method

.method private final initializeContextHubClientIfNull()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->contextHubClient:Landroid/hardware/location/ContextHubClient;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->context:Landroid/content/Context;

    const-string v1, "contexthub"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/ContextHubManager;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/location/ContextHubManager;->getContextHubs()Ljava/util/List;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-nez v3, :cond_2

    const-string p0, "Columbus/GestureSensor"

    const-string v0, "No context hubs found"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/ContextHubInfo;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->contextHubClientCallback:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$contextHubClientCallback$1;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/location/ContextHubManager;->createClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/ContextHubClientCallback;)Landroid/hardware/location/ContextHubClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->contextHubClient:Landroid/hardware/location/ContextHubClient;

    :cond_4
    :goto_2
    return-void
.end method

.method private final protoGestureTypeToGesture(I)I
    .locals 1

    const/4 p0, 0x2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eq p1, p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    move p0, v0

    :cond_1
    :goto_0
    return p0
.end method

.method private final sendMessageToNanoApp(I[BLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->initializeContextHubClientIfNull()V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->contextHubClient:Landroid/hardware/location/ContextHubClient;

    if-nez v0, :cond_0

    const-string p0, "Columbus/GestureSensor"

    const-string p1, "ContextHubClient null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->bgHandler:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$sendMessageToNanoApp$1;

    move-object v1, v7

    move v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$sendMessageToNanoApp$1;-><init>(I[BLcom/google/android/systemui/columbus/sensors/CHREGestureSensor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic sendMessageToNanoApp$default(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;I[BLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->sendMessageToNanoApp(I[BLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final sendScreenState()V
    .locals 4

    new-instance v0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$ScreenStateUpdate;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$ScreenStateUpdate;-><init>()V

    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->screenOn:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, v0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$ScreenStateUpdate;->screenState:I

    const/16 v1, 0x190

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    const-string v2, "toByteArray(screenStateUpdate)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$sendScreenState$1;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$sendScreenState$1;-><init>(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V

    new-instance v3, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$sendScreenState$2;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$sendScreenState$2;-><init>(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->sendMessageToNanoApp(I[BLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final startRecognizer()V
    .locals 9

    new-instance v0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;-><init>()V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->gestureConfiguration:Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->getSensitivity()F

    move-result v1

    iput v1, v0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;->sensitivity:F

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v4

    const-string v0, "toByteArray(recognizerStart)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$startRecognizer$1;

    invoke-direct {v5, p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$startRecognizer$1;-><init>(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V

    const/16 v3, 0x64

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->sendMessageToNanoApp$default(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;I[BLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method private final toWestWorldEventType(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    sget-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->UNKNOWN:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {p0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result p0

    goto :goto_0

    :pswitch_0
    sget-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->DOUBLE_TAP:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {p0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result p0

    goto :goto_0

    :pswitch_1
    sget-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->SINGLE_TAP:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {p0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result p0

    goto :goto_0

    :pswitch_2
    sget-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->ML_PREDICTION_STOP:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {p0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result p0

    goto :goto_0

    :pswitch_3
    sget-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->ML_PREDICTION_START:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {p0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result p0

    goto :goto_0

    :pswitch_4
    sget-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->HIGH_IMU_ODR_STOP:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {p0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result p0

    goto :goto_0

    :pswitch_5
    sget-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->HIGH_IMU_ODR_START:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {p0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result p0

    goto :goto_0

    :pswitch_6
    sget-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->GATE_STOP:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {p0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result p0

    goto :goto_0

    :pswitch_7
    sget-object p0, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->GATE_START:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {p0}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result p0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final updateScreenState()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isAwake:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isDozing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->screenOn:Z

    if-ne v1, v0, :cond_1

    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->screenStateUpdated:Z

    if-nez v1, :cond_2

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->screenOn:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isListening()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->sendScreenState()V

    :cond_2
    return-void
.end method

.method private final updateSensitivity(Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;)V
    .locals 8

    new-instance v0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$SensitivityUpdate;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$SensitivityUpdate;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->getSensitivity()F

    move-result p1

    iput p1, v0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$SensitivityUpdate;->sensitivity:F

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v3

    const-string p1, "toByteArray(sensitivityUpdate)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0xc8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->sendMessageToNanoApp$default(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;I[BLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->featureVectorDumper:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public isListening()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isListening:Z

    return p0
.end method

.method public setListening(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isListening:Z

    return-void
.end method

.method public startListening()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->setListening(Z)V

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->startRecognizer()V

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->sendScreenState()V

    return-void
.end method

.method public stopListening()V
    .locals 8

    const/4 v0, 0x0

    new-array v3, v0, [B

    new-instance v4, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$stopListening$1;

    invoke-direct {v4, p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$stopListening$1;-><init>(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V

    const/16 v2, 0x65

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->sendMessageToNanoApp$default(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;I[BLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->setListening(Z)V

    return-void
.end method
