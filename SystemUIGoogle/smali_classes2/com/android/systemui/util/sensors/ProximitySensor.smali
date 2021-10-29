.class public Lcom/android/systemui/util/sensors/ProximitySensor;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Lcom/android/systemui/util/sensors/ThresholdSensor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAlerting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCancelSecondaryRunnable:Ljava/lang/Runnable;

.field private final mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mExecution:Lcom/android/systemui/util/concurrency/Execution;

.field private mInitializedListeners:Z

.field mLastEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLastPrimaryEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;",
            ">;"
        }
    .end annotation
.end field

.field protected mPaused:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mPrimaryEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

.field private final mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

.field private mRegistered:Z

.field private final mSecondaryEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

.field private mSecondarySafe:Z

.field private final mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

.field private mTag:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$OS-9Q7hejxPGIsu_J1cucXDiiaU(Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->onPrimarySensorEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UUgZu12SF6in1a8g3k-aNliRag0(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->lambda$alertListeners$0(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ProxSensor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/util/sensors/ProximitySensor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/sensors/ThresholdSensor;Lcom/android/systemui/util/sensors/ThresholdSensor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/Execution;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mListeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mAlerting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mInitializedListeners:Z

    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondarySafe:Z

    new-instance v0, Lcom/android/systemui/util/sensors/ProximitySensor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/sensors/ProximitySensor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/sensors/ProximitySensor;)V

    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPrimaryEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    new-instance v0, Lcom/android/systemui/util/sensors/ProximitySensor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/sensors/ProximitySensor$1;-><init>(Lcom/android/systemui/util/sensors/ProximitySensor;)V

    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    iput-object p2, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    iput-object p3, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p4, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/util/sensors/ProximitySensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondarySafe:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/util/sensors/ProximitySensor;)Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastPrimaryEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/util/sensors/ProximitySensor;)Lcom/android/systemui/util/sensors/ThresholdSensor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/util/sensors/ProximitySensor;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mCancelSecondaryRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/util/sensors/ProximitySensor;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/util/sensors/ProximitySensor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->onSensorEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    return-void
.end method

.method private static synthetic lambda$alertListeners$0(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;->onThresholdCrossed(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    return-void
.end method

.method private logDebug(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/util/sensors/ProximitySensor;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mTag:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ProxSensor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private onPrimarySensorEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastPrimaryEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastPrimaryEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    invoke-virtual {v1}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastPrimaryEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondarySafe:Z

    const-string v1, ". Checking secondary."

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Primary sensor reported "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "near"

    goto :goto_0

    :cond_1
    const-string p1, "far"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->logDebug(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mCancelSecondaryRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->resume()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->isLoaded()Z

    move-result v0

    const-string v2, "Primary sensor event: "

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ". No secondary."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->logDebug(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->onSensorEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->logDebug(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mCancelSecondaryRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->resume()V

    goto :goto_1

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->onSensorEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    :goto_1
    return-void
.end method

.method private onSensorEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    invoke-virtual {v1}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondarySafe:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->pause()V

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->alertListeners()V

    return-void
.end method


# virtual methods
.method public alertListeners()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mAlerting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/android/systemui/util/sensors/ProximitySensor$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/systemui/util/sensors/ProximitySensor$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mAlerting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public isLoaded()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->isLoaded()Z

    move-result p0

    return p0
.end method

.method public isNear()Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;->getBelow()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isRegistered()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mRegistered:Z

    return p0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPaused:Z

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->unregisterInternal()V

    return-void
.end method

.method public register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProxListener registered multiple times: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->registerInternal()V

    return-void
.end method

.method protected registerInternal()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mRegistered:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPaused:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mInitializedListeners:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    iget-object v2, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPrimaryEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    invoke-interface {v0, v2}, Lcom/android/systemui/util/sensors/ThresholdSensor;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondarySafe:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->pause()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    iget-object v2, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    invoke-interface {v0, v2}, Lcom/android/systemui/util/sensors/ThresholdSensor;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    iput-boolean v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mInitializedListeners:Z

    :cond_2
    const-string v0, "Registering sensor listener"

    invoke-direct {p0, v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->resume()V

    iput-boolean v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mRegistered:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPaused:Z

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->registerInternal()V

    return-void
.end method

.method public setDelay(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {v0, p1}, Lcom/android/systemui/util/sensors/ThresholdSensor;->setDelay(I)V

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {p0, p1}, Lcom/android/systemui/util/sensors/ThresholdSensor;->setDelay(I)V

    return-void
.end method

.method public setSecondarySafe(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondarySafe:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->pause()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->resume()V

    :goto_0
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mTag:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":primary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/util/sensors/ThresholdSensor;->setTag(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":secondary"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/util/sensors/ThresholdSensor;->setTag(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->isRegistered()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPaused:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->isNear()Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondarySafe:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    const-string p0, "{registered=%s, paused=%s, near=%s, primarySensor=%s, secondarySensor=%s secondarySafe=%s}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->unregisterInternal()V

    :cond_0
    return-void
.end method

.method protected unregisterInternal()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "unregistering sensor listener"

    invoke-direct {p0, v0}, Lcom/android/systemui/util/sensors/ProximitySensor;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->pause()V

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    invoke-interface {v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->pause()V

    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mCancelSecondaryRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mCancelSecondaryRunnable:Ljava/lang/Runnable;

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastPrimaryEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    iput-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mLastEvent:Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensor;->mRegistered:Z

    return-void
.end method
