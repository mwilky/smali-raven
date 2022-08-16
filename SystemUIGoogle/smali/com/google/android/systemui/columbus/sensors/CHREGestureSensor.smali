.class public final Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;
.super Lcom/google/android/systemui/columbus/sensors/GestureSensor;
.source "CHREGestureSensor.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;,
        Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCHREGestureSensor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CHREGestureSensor.kt\ncom/google/android/systemui/columbus/sensors/CHREGestureSensor\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,348:1\n13536#2,2:349\n*S KotlinDebug\n*F\n+ 1 CHREGestureSensor.kt\ncom/google/android/systemui/columbus/sensors/CHREGestureSensor\n*L\n211#1:349,2\n*E\n"
.end annotation


# instance fields
.field public final bgHandler:Landroid/os/Handler;

.field public final context:Landroid/content/Context;

.field public contextHubClient:Landroid/hardware/location/ContextHubClient;

.field public final contextHubClientCallback:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$contextHubClientCallback$1;

.field public final featureVectorDumper:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;

.field public final gestureConfiguration:Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;

.field public isAwake:Z

.field public isDozing:Z

.field public isListening:Z

.field public screenOn:Z

.field public screenStateUpdated:Z

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Landroid/os/Handler;)V
    .locals 4

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

    new-instance p2, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$wakefulnessLifecycleObserver$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$wakefulnessLifecycleObserver$1;-><init>(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result p6

    iput-boolean p6, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isDozing:Z

    iget v0, p5, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isAwake:Z

    if-eqz v0, :cond_1

    if-nez p6, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->screenOn:Z

    iput-boolean v3, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->screenStateUpdated:Z

    new-instance p6, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$1;

    invoke-direct {p6, p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$1;-><init>(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V

    iput-object p6, p3, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->listener:Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration$Listener;

    invoke-interface {p4, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object p1, p5, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->initializeContextHubClientIfNull()V

    return-void
.end method

.method public static final access$handleGestureDetection(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;->gestureType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    new-instance v0, Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;

    invoke-direct {v0, v4}, Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;-><init>(Z)V

    iget-object v4, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensor;->listener:Lcom/google/android/systemui/columbus/sensors/GestureSensor$Listener;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v4, p0, v1, v0}, Lcom/google/android/systemui/columbus/sensors/GestureSensor$Listener;->onGestureDetected(Lcom/google/android/systemui/columbus/sensors/GestureSensor;ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    :goto_2
    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->featureVectorDumper:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;->gestureType:I

    if-eq v0, v2, :cond_5

    if-eq v0, v3, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;

    invoke-direct {v0, p1}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;-><init>(Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;)V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;->lastSingleTapFeatureVector:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;->lastSingleTapFeatureVector:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;->lastSingleTapFeatureVector:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;

    if-nez v0, :cond_6

    const-string p0, "Columbus/GestureSensor"

    const-string p1, "Received double tap without single taps, event will not appear in sysdump"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;->featureVectors:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;->featureVectors:Lcom/android/internal/util/RingBuffer;

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;

    invoke-direct {v0, p1}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;-><init>(Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public static final access$handleNanoappEvents(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvents;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvents;->batchedEvents:[Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvent;

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v2

    const v3, 0x186d3

    invoke-virtual {v2, v3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    iget-wide v3, v1, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvent;->timestamp:J

    invoke-virtual {v2, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v2

    iget v1, v1, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvent;->type:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->UNKNOWN:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {v1}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result v1

    goto :goto_1

    :pswitch_0
    sget-object v1, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->DOUBLE_TAP:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {v1}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result v1

    goto :goto_1

    :pswitch_1
    sget-object v1, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->SINGLE_TAP:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {v1}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result v1

    goto :goto_1

    :pswitch_2
    sget-object v1, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->ML_PREDICTION_STOP:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {v1}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result v1

    goto :goto_1

    :pswitch_3
    sget-object v1, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->ML_PREDICTION_START:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {v1}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result v1

    goto :goto_1

    :pswitch_4
    sget-object v1, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->HIGH_IMU_ODR_STOP:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {v1}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result v1

    goto :goto_1

    :pswitch_5
    sget-object v1, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->HIGH_IMU_ODR_START:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {v1}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result v1

    goto :goto_1

    :pswitch_6
    sget-object v1, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->GATE_STOP:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {v1}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result v1

    goto :goto_1

    :pswitch_7
    sget-object v1, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->GATE_START:Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;

    invoke-virtual {v1}, Landroid/hardware/google/pixel/vendor/PixelAtoms$DoubleTapNanoappEventReported$Type;->getNumber()I

    move-result v1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    goto :goto_0

    :cond_0
    return-void

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


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->featureVectorDumper:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final initializeContextHubClientIfNull()V
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

.method public final isListening()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isListening:Z

    return p0
.end method

.method public final sendMessageToNanoApp(I[BLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
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

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->initializeContextHubClientIfNull()V

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

.method public final sendScreenState()V
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

    new-instance v2, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$sendScreenState$1;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$sendScreenState$1;-><init>(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V

    new-instance v3, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$sendScreenState$2;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$sendScreenState$2;-><init>(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->sendMessageToNanoApp(I[BLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final startListening()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isListening:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->startRecognizer()V

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->sendScreenState()V

    return-void
.end method

.method public final startRecognizer()V
    .locals 4

    new-instance v0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;-><init>()V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->gestureConfiguration:Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;

    iget v1, v1, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->sensitivity:F

    iput v1, v0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$RecognizerStart;->sensitivity:F

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$startRecognizer$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$startRecognizer$1;-><init>(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->sendMessageToNanoApp(I[BLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final stopListening()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [B

    new-instance v2, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$stopListening$1;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$stopListening$1;-><init>(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V

    const/4 v3, 0x0

    const/16 v4, 0x65

    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->sendMessageToNanoApp(I[BLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isListening:Z

    return-void
.end method

.method public final updateScreenState()V
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

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isListening:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->sendScreenState()V

    :cond_2
    return-void
.end method
