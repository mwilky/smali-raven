.class public final Lcom/google/android/systemui/elmyra/WestworldLogger;
.super Ljava/lang/Object;
.source "WestworldLogger.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;


# instance fields
.field public mChassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

.field public mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field public mGestureConfiguration:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

.field public mMutex:Ljava/lang/Object;

.field public mSnapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

.field public mSnapshotController:Lcom/google/android/systemui/elmyra/SnapshotController;

.field public final mWestworldCallback:Lcom/google/android/systemui/elmyra/WestworldLogger$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;Lcom/google/android/systemui/elmyra/SnapshotController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/elmyra/WestworldLogger$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/WestworldLogger$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/WestworldLogger;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mWestworldCallback:Lcom/google/android/systemui/elmyra/WestworldLogger$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mChassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mGestureConfiguration:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mSnapshotController:Lcom/google/android/systemui/elmyra/SnapshotController;

    iput-object v1, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mSnapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mMutex:Ljava/lang/Object;

    const-string/jumbo p0, "stats"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatsManager;

    const-string p1, "Elmyra/Logger"

    if-nez p0, :cond_0

    const-string p2, "Failed to get StatsManager"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const p2, 0x249f0

    :try_start_0
    sget-object p3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p2, v1, p3, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "Failed to register callback with StatsManager"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final onGestureDetected(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    const/16 p0, 0xae

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    return-void
.end method

.method public final onGestureProgress(FI)V
    .locals 0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    const/16 p1, 0xb0

    invoke-static {p1, p0}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    const/16 p0, 0xae

    invoke-static {p0, p2}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    return-void
.end method
