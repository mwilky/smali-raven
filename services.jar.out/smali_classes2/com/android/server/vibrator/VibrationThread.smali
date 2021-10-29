.class final Lcom/android/server/vibrator/VibrationThread;
.super Ljava/lang/Thread;
.source "VibrationThread.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;,
        Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;,
        Lcom/android/server/vibrator/VibrationThread$OffStep;,
        Lcom/android/server/vibrator/VibrationThread$RampOffStep;,
        Lcom/android/server/vibrator/VibrationThread$CompleteStep;,
        Lcom/android/server/vibrator/VibrationThread$ComposePwleStep;,
        Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;,
        Lcom/android/server/vibrator/VibrationThread$PerformStep;,
        Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;,
        Lcom/android/server/vibrator/VibrationThread$FinishVibrateStep;,
        Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;,
        Lcom/android/server/vibrator/VibrationThread$Step;,
        Lcom/android/server/vibrator/VibrationThread$StepQueue;,
        Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;
    }
.end annotation


# static fields
.field private static final BATTERY_STATS_REPEATING_VIBRATION_DURATION:J = 0x1388L

.field private static final CALLBACKS_EXTRA_TIMEOUT:J = 0x3e8L

.field private static final DEBUG:Z = false

.field private static final EMPTY_STEP_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation
.end field

.field private static final RAMP_OFF_AMPLITUDE_MIN:F = 0.001f

.field private static final TAG:Ljava/lang/String; = "VibrationThread"


# instance fields
.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field private final mCallbacks:Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;

.field private final mDeviceEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

.field private volatile mForceStop:Z

.field private final mLock:Ljava/lang/Object;

.field private final mStepQueue:Lcom/android/server/vibrator/VibrationThread$StepQueue;

.field private volatile mStop:Z

.field private final mVibration:Lcom/android/server/vibrator/Vibration;

.field private final mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

.field private final mVibrators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibratorController;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/vibrator/VibrationThread;->EMPTY_STEP_LIST:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;Landroid/util/SparseArray;Landroid/os/PowerManager$WakeLock;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vibrator/Vibration;",
            "Lcom/android/server/vibrator/VibrationSettings;",
            "Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibratorController;",
            ">;",
            "Landroid/os/PowerManager$WakeLock;",
            "Lcom/android/internal/app/IBatteryStats;",
            "Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mWorkSource:Landroid/os/WorkSource;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mVibrators:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/vibrator/VibrationThread$StepQueue;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/vibrator/VibrationThread$StepQueue;-><init>(Lcom/android/server/vibrator/VibrationThread;Lcom/android/server/vibrator/VibrationThread$1;)V

    iput-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mStepQueue:Lcom/android/server/vibrator/VibrationThread$StepQueue;

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread;->mVibration:Lcom/android/server/vibrator/Vibration;

    iput-object p2, p0, Lcom/android/server/vibrator/VibrationThread;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iput-object p3, p0, Lcom/android/server/vibrator/VibrationThread;->mDeviceEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    iput-object p7, p0, Lcom/android/server/vibrator/VibrationThread;->mCallbacks:Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;

    iput-object p5, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget v1, p1, Lcom/android/server/vibrator/Vibration;->uid:I

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    invoke-virtual {p5, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iput-object p6, p0, Lcom/android/server/vibrator/VibrationThread;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Lcom/android/server/vibrator/Vibration;->getEffect()Landroid/os/CombinedVibration;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/CombinedVibration;->hasVibrator(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mDeviceEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/vibrator/VibrationThread;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibrationThread;->noteVibratorOn(J)V

    return-void
.end method

.method static synthetic access$300()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/server/vibrator/VibrationThread;->EMPTY_STEP_LIST:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/vibrator/VibrationThread;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mVibrators:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/android/server/vibrator/VibrationThread;->nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCallbacks:Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/Vibration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mVibration:Lcom/android/server/vibrator/Vibration;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/vibrator/VibrationThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread;->noteVibratorOff()V

    return-void
.end method

.method private nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/VibrationThread$SingleVibratorStep;
    .locals 12

    invoke-virtual/range {p4 .. p4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, p5

    if-lt v1, v0, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-gez v0, :cond_1

    new-instance v9, Lcom/android/server/vibrator/VibrationThread$CompleteStep;

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-wide/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/vibrator/VibrationThread$CompleteStep;-><init>(Lcom/android/server/vibrator/VibrationThread;JZLcom/android/server/vibrator/VibratorController;J)V

    return-object v9

    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v1, v10, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v1, :cond_2

    new-instance v11, Lcom/android/server/vibrator/VibrationThread$PerformStep;

    move-object v1, v11

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move v7, v0

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/vibrator/VibrationThread$PerformStep;-><init>(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v11

    :cond_2
    instance-of v1, v10, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v1, :cond_3

    new-instance v11, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;

    move-object v1, v11

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move v7, v0

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/vibrator/VibrationThread$ComposePrimitivesStep;-><init>(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v11

    :cond_3
    instance-of v1, v10, Landroid/os/vibrator/RampSegment;

    if-eqz v1, :cond_4

    new-instance v11, Lcom/android/server/vibrator/VibrationThread$ComposePwleStep;

    move-object v1, v11

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move v7, v0

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/vibrator/VibrationThread$ComposePwleStep;-><init>(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v11

    :cond_4
    new-instance v11, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;

    move-object v1, v11

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move v7, v0

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/vibrator/VibrationThread$AmplitudeStep;-><init>(Lcom/android/server/vibrator/VibrationThread;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    return-object v11
.end method

.method private noteVibratorOff()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mVibration:Lcom/android/server/vibrator/Vibration;

    iget v1, v1, Lcom/android/server/vibrator/Vibration;->uid:I

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V

    const/16 v0, 0x54

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mVibration:Lcom/android/server/vibrator/Vibration;

    iget v1, v1, Lcom/android/server/vibrator/Vibration;->uid:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private noteVibratorOn(J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const-wide/16 p1, 0x1388

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mVibration:Lcom/android/server/vibrator/Vibration;

    iget v1, v1, Lcom/android/server/vibrator/Vibration;->uid:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    const/16 v0, 0x54

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mVibration:Lcom/android/server/vibrator/Vibration;

    iget v1, v1, Lcom/android/server/vibrator/Vibration;->uid:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private playVibration()V
    .locals 11

    const-string v0, "playVibration"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mVibration:Lcom/android/server/vibrator/Vibration;

    invoke-virtual {v0}, Lcom/android/server/vibrator/Vibration;->getEffect()Landroid/os/CombinedVibration;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->toSequential(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$Sequential;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationThread;->mStepQueue:Lcom/android/server/vibrator/VibrationThread$StepQueue;

    new-instance v5, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;

    invoke-direct {v5, p0, v0}, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;-><init>(Lcom/android/server/vibrator/VibrationThread;Landroid/os/CombinedVibration$Sequential;)V

    invoke-virtual {v4, v5}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->offer(Lcom/android/server/vibrator/VibrationThread$Step;)V

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationThread;->mStepQueue:Lcom/android/server/vibrator/VibrationThread$StepQueue;

    invoke-virtual {v5}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, p0, Lcom/android/server/vibrator/VibrationThread;->mStepQueue:Lcom/android/server/vibrator/VibrationThread$StepQueue;

    invoke-virtual {v6}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->calculateWaitTime()J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_0

    :try_start_2
    iget-object v10, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v10, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v10

    :cond_0
    :goto_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_1

    :try_start_4
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationThread;->mStepQueue:Lcom/android/server/vibrator/VibrationThread$StepQueue;

    invoke-virtual {v5}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->consumeNext()V

    :cond_1
    iget-boolean v5, p0, Lcom/android/server/vibrator/VibrationThread;->mStop:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED:Lcom/android/server/vibrator/Vibration$Status;

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationThread;->mStepQueue:Lcom/android/server/vibrator/VibrationThread$StepQueue;

    invoke-virtual {v5, v3}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->calculateVibrationStatus(I)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v5

    :goto_2
    nop

    if-nez v4, :cond_3

    sget-object v8, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    if-eq v5, v8, :cond_3

    move-object v4, v5

    iget-object v8, p0, Lcom/android/server/vibrator/VibrationThread;->mCallbacks:Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;

    iget-object v9, p0, Lcom/android/server/vibrator/VibrationThread;->mVibration:Lcom/android/server/vibrator/Vibration;

    iget-wide v9, v9, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-interface {v8, v9, v10, v4}, Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;->onVibrationCompleted(JLcom/android/server/vibrator/Vibration$Status;)V

    sget-object v8, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED:Lcom/android/server/vibrator/Vibration$Status;

    if-ne v4, v8, :cond_3

    iget-object v8, p0, Lcom/android/server/vibrator/VibrationThread;->mStepQueue:Lcom/android/server/vibrator/VibrationThread$StepQueue;

    invoke-virtual {v8}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->cancel()V

    :cond_3
    iget-boolean v8, p0, Lcom/android/server/vibrator/VibrationThread;->mForceStop:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/vibrator/VibrationThread;->mStepQueue:Lcom/android/server/vibrator/VibrationThread$StepQueue;

    invoke-virtual {v8}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->cancelImmediately()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :cond_4
    goto :goto_0

    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6

    :cond_5
    :goto_3
    if-nez v4, :cond_7

    iget-object v5, p0, Lcom/android/server/vibrator/VibrationThread;->mStepQueue:Lcom/android/server/vibrator/VibrationThread$StepQueue;

    invoke-virtual {v5, v3}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->calculateVibrationStatus(I)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v5

    move-object v4, v5

    sget-object v5, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    if-ne v4, v5, :cond_6

    const-string v5, "VibrationThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Something went wrong, step queue completed but vibration status is still RUNNING for vibration "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/vibrator/VibrationThread;->mVibration:Lcom/android/server/vibrator/Vibration;

    iget-wide v7, v7, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/vibrator/Vibration$Status;->FINISHED:Lcom/android/server/vibrator/Vibration$Status;

    move-object v4, v5

    :cond_6
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationThread;->mCallbacks:Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;

    iget-object v6, p0, Lcom/android/server/vibrator/VibrationThread;->mVibration:Lcom/android/server/vibrator/Vibration;

    iget-wide v6, v6, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-interface {v5, v6, v7, v4}, Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;->onVibrationCompleted(JLcom/android/server/vibrator/Vibration$Status;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_7
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private static toSequential(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$Sequential;
    .locals 1

    instance-of v0, p0, Landroid/os/CombinedVibration$Sequential;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/os/CombinedVibration$Sequential;

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v0

    check-cast v0, Landroid/os/CombinedVibration$Sequential;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationThread;->cancel()V

    return-void
.end method

.method public cancel()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mStop:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mStop:Z

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancelImmediately()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mForceStop:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mForceStop:Z

    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mStop:Z

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getVibration()Lcom/android/server/vibrator/Vibration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mVibration:Lcom/android/server/vibrator/Vibration;

    return-object v0
.end method

.method getVibrators()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibratorController;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mVibrators:Landroid/util/SparseArray;

    return-object v0
.end method

.method public run()V
    .locals 4

    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mVibration:Lcom/android/server/vibrator/Vibration;

    iget-object v1, v1, Lcom/android/server/vibrator/Vibration;->token:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread;->playVibration()V

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mCallbacks:Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;

    invoke-interface {v1}, Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;->onVibratorsReleased()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "VibrationThread"

    const-string v3, "Error linking vibration to token death"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mVibration:Lcom/android/server/vibrator/Vibration;

    iget-object v1, v1, Lcom/android/server/vibrator/Vibration;->token:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    nop

    return-void

    :goto_1
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mVibration:Lcom/android/server/vibrator/Vibration;

    iget-object v2, v2, Lcom/android/server/vibrator/Vibration;->token:Landroid/os/IBinder;

    invoke-interface {v2, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1
.end method

.method public syncedVibrationComplete()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mStepQueue:Lcom/android/server/vibrator/VibrationThread$StepQueue;

    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->notifyVibratorComplete(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public vibratorComplete(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mStepQueue:Lcom/android/server/vibrator/VibrationThread$StepQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->notifyVibratorComplete(I)V

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
