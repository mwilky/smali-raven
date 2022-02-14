.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Object;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$BinderThreadMonitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$HandlerChecker;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

.field private static final CHECK_INTERVAL:J

.field private static final COMPLETED:I = 0x0

.field private static final DB:Z = false

.field public static final DEBUG:Z = false

.field private static final DEFAULT_TIMEOUT:J

.field public static final HAL_INTERFACES_OF_INTEREST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field private static final OVERDUE:I = 0x3

.field private static final PROP_FATAL_LOOP_COUNT:Ljava/lang/String; = "framework_watchdog.fatal_count"

.field private static final PROP_FATAL_LOOP_WINDOWS_SECS:Ljava/lang/String; = "framework_watchdog.fatal_window.second"

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field private static final TIMEOUT_HISTORY_FILE:Ljava/lang/String; = "/data/system/watchdog-timeout-history.txt"

.field private static final WAITED_HALF:I = 0x2

.field private static final WAITING:I = 0x1

.field private static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field private mActivity:Lcom/android/server/am/ActivityManagerService;

.field private mAllowRestart:Z

.field private mController:Landroid/app/IActivityController;

.field private final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterestingJavaPids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field private final mThread:Ljava/lang/Thread;

.field private final mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;


# direct methods
.method public static synthetic $r8$lambda$W7y-nlYuEBh_r4--InIAt97WYPU(Lcom/android/server/Watchdog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/Watchdog;->run()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 24

    nop

    const v0, 0xea60

    sget v1, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/2addr v1, v0

    int-to-long v0, v1

    sput-wide v0, Lcom/android/server/Watchdog;->DEFAULT_TIMEOUT:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/Watchdog;->CHECK_INTERVAL:J

    const-string v2, "/system/bin/audioserver"

    const-string v3, "/system/bin/cameraserver"

    const-string v4, "/system/bin/drmserver"

    const-string v5, "/system/bin/keystore2"

    const-string v6, "/system/bin/mediadrmserver"

    const-string v7, "/system/bin/mediaserver"

    const-string v8, "/system/bin/netd"

    const-string v9, "/system/bin/sdcard"

    const-string v10, "/system/bin/surfaceflinger"

    const-string v11, "/system/bin/vold"

    const-string/jumbo v12, "media.extractor"

    const-string/jumbo v13, "media.metrics"

    const-string/jumbo v14, "media.codec"

    const-string/jumbo v15, "media.swcodec"

    const-string/jumbo v16, "media.transcoding"

    const-string v17, "com.android.bluetooth"

    const-string v18, "/apex/com.android.os.statsd/bin/statsd"

    filled-new-array/range {v2 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    const-string v1, "android.hardware.audio@4.0::IDevicesFactory"

    const-string v2, "android.hardware.audio@5.0::IDevicesFactory"

    const-string v3, "android.hardware.audio@6.0::IDevicesFactory"

    const-string v4, "android.hardware.audio@7.0::IDevicesFactory"

    const-string v5, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    const-string v6, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    const-string v7, "android.hardware.bluetooth@1.0::IBluetoothHci"

    const-string v8, "android.hardware.camera.provider@2.4::ICameraProvider"

    const-string v9, "android.hardware.gnss@1.0::IGnss"

    const-string v10, "android.hardware.graphics.allocator@2.0::IAllocator"

    const-string v11, "android.hardware.graphics.composer@2.1::IComposer"

    const-string v12, "android.hardware.health@2.0::IHealth"

    const-string v13, "android.hardware.light@2.0::ILight"

    const-string v14, "android.hardware.media.c2@1.0::IComponentStore"

    const-string v15, "android.hardware.media.omx@1.0::IOmx"

    const-string v16, "android.hardware.media.omx@1.0::IOmxStore"

    const-string v17, "android.hardware.neuralnetworks@1.0::IDevice"

    const-string v18, "android.hardware.power.stats@1.0::IPowerStats"

    const-string v19, "android.hardware.sensors@1.0::ISensors"

    const-string v20, "android.hardware.sensors@2.0::ISensors"

    const-string v21, "android.hardware.sensors@2.1::ISensors"

    const-string v22, "android.hardware.vr@1.0::IVr"

    const-string v23, "android.system.suspend@1.0::ISystemSuspend"

    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    const-string v0, "android.hardware.biometrics.face.IFace/"

    const-string v1, "android.hardware.biometrics.fingerprint.IFingerprint/"

    const-string v2, "android.hardware.light.ILights/"

    const-string v3, "android.hardware.power.stats.IPowerStats/"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/Watchdog$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/Watchdog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/Watchdog;)V

    const-string/jumbo v4, "watchdog"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/Watchdog;->mThread:Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    sget-wide v3, Lcom/android/server/Watchdog;->DEFAULT_TIMEOUT:J

    const-string v8, "foreground thread"

    move-object v5, v2

    move-object v6, p0

    move-wide v9, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v2, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v10, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v10, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v11, "main thread"

    move-object v8, v2

    move-object v9, p0

    move-wide v12, v3

    invoke-direct/range {v8 .. v13}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const-string/jumbo v11, "ui thread"

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const-string v11, "i/o thread"

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const-string v11, "display thread"

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const-string v11, "animation thread"

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const-string/jumbo v11, "surface animation thread"

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog$1;)V

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    new-instance v0, Lcom/android/server/am/TraceErrorLogger;

    invoke-direct {v0}, Lcom/android/server/am/TraceErrorLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/Watchdog;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/Watchdog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method private static addInterestingAidlPids(Ljava/util/HashSet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/ServiceManager;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    sget-object v5, Lcom/android/server/Watchdog;->AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    iget-object v9, v4, Landroid/os/ServiceDebugInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget v9, v4, Landroid/os/ServiceDebugInfo;->debugPid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static addInterestingHidlPids(Ljava/util/HashSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    nop

    invoke-interface {v0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    iget v4, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    iget-object v5, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget v4, v3, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private breakCrashLoop()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string v1, "/dev/kmsg_debug"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "Fatal reset to escape the system_server crashing loop\n"

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Watchdog"

    const-string v2, "Failed to append to kmsg"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/16 v0, 0x63

    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    return-void
.end method

.method private describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private doSysRq(C)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string v1, "/proc/sysrq-trigger"

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(I)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Watchdog"

    const-string v2, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private evaluateCheckerCompletionLocked()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getBlockedCheckersLocked()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->isOverdueLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .locals 1

    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    :cond_0
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method static getInterestingNativePids()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Lcom/android/server/Watchdog;->addInterestingAidlPids(Ljava/util/HashSet;)V

    invoke-static {v0}, Lcom/android/server/Watchdog;->addInterestingHidlPids(Ljava/util/HashSet;)V

    sget-object v1, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method private hasActiveUsbConnection()Z
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/android_usb/android0/state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONFIGURED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Watchdog"

    const-string v2, "Failed to determine if device was on USB"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isCrashLoopFound()Z
    .locals 14

    invoke-static {}, Landroid/sysprop/WatchdogProperties;->fatal_count()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/sysprop/WatchdogProperties;->fatal_window_seconds()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-string v4, "Watchdog"

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-direct {p0}, Lcom/android/server/Watchdog;->readTimeoutHistory()[Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    array-length v10, v8

    sub-int/2addr v10, v0

    sub-int/2addr v10, v5

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    array-length v11, v8

    invoke-static {v8, v10, v11}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v9}, Lcom/android/server/Watchdog;->writeTimeoutHistory(Ljava/lang/Iterable;)V

    invoke-direct {p0}, Lcom/android/server/Watchdog;->hasActiveUsbConnection()Z

    move-result v10

    if-eqz v10, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v0, :cond_2

    sub-long v12, v6, v10

    cmp-long v4, v12, v2

    if-gez v4, :cond_2

    move v1, v5

    :cond_2
    return v1

    :catch_0
    move-exception v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to parseLong "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/Watchdog;->resetTimeoutHistory()V

    return v1

    :cond_3
    :goto_0
    int-to-long v6, v0

    cmp-long v6, v6, v2

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "framework_watchdog.fatal_count"

    aput-object v7, v6, v1

    const-string v7, "framework_watchdog.fatal_window.second"

    aput-object v7, v6, v5

    const-string/jumbo v5, "sysprops \'%s\' and \'%s\' should be set or unset together"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1
.end method

.method private static isInterestingJavaProcess(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/StorageManagerService;->sMediaStoreAuthorityProcessName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.phone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private readTimeoutHistory()[Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/system/watchdog-timeout-history.txt"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    nop

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v6, ""

    const/4 v7, 0x1

    if-lt v5, v7, :cond_1

    :try_start_4
    aget-object v0, v4, v0

    goto :goto_0

    :cond_1
    move-object v0, v6

    :goto_0
    array-length v5, v4

    const/4 v8, 0x2

    if-lt v5, v8, :cond_2

    aget-object v6, v4, v7

    :cond_2
    move-object v5, v6

    const-string/jumbo v6, "ro.boottime.zygote"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    return-object v6

    :cond_3
    nop

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_7
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "Watchdog"

    const-string v3, "Failed to read file /data/system/watchdog-timeout-history.txt"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_1
    move-exception v0

    return-object v1
.end method

.method private resetTimeoutHistory()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->writeTimeoutHistory(Ljava/lang/Iterable;)V

    return-void
.end method

.method private run()V
    .locals 25

    move-object/from16 v7, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v8, v7, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    sget-wide v9, Lcom/android/server/Watchdog;->CHECK_INTERVAL:J

    const/4 v0, 0x0

    :goto_1
    iget-object v11, v7, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_0

    iget-object v11, v7, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v11}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    if-lez v5, :cond_1

    add-int/lit8 v5, v5, -0x1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-wide v13, v9

    move v9, v5

    :goto_2
    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-lez v0, :cond_4

    :try_start_1
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    move v5, v0

    goto :goto_3

    :cond_2
    move v5, v9

    :goto_3
    :try_start_2
    iget-object v0, v7, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-virtual {v0, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_3
    const-string v9, "Watchdog"

    invoke-static {v9, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    move v9, v0

    goto :goto_5

    :cond_3
    move v9, v5

    :goto_5
    :try_start_4
    sget-wide v15, Lcom/android/server/Watchdog;->CHECK_INTERVAL:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v11

    sub-long v13, v15, v17

    goto :goto_2

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v1, 0x0

    monitor-exit v8

    goto :goto_0

    :cond_5
    const/4 v5, 0x1

    if-ne v0, v5, :cond_6

    monitor-exit v8

    goto :goto_0

    :cond_6
    const/4 v10, 0x2

    if-ne v0, v10, :cond_8

    if-nez v1, :cond_7

    const-string v5, "Watchdog"

    const-string v15, "WAITED_HALF"

    invoke-static {v5, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    new-instance v5, Ljava/util/ArrayList;

    iget-object v15, v7, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-direct {v5, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x1

    move v11, v1

    move-object v12, v2

    move/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v6

    move-object v6, v3

    goto :goto_6

    :cond_7
    monitor-exit v8

    goto/16 :goto_0

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v5

    move-object v2, v5

    invoke-direct {v7, v2}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    iget-boolean v5, v7, Lcom/android/server/Watchdog;->mAllowRestart:Z

    move v4, v5

    new-instance v5, Ljava/util/ArrayList;

    iget-object v15, v7, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-direct {v5, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v11, v1

    move-object v12, v2

    move/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v6

    move-object v6, v3

    :goto_6
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v21, :cond_9

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/io/StringWriter;Ljava/lang/String;)Ljava/io/File;

    move v1, v11

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0xaf2

    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object v0, v7, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v0}, Lcom/android/server/am/TraceErrorLogger;->isAddErrorIdEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v7, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v0}, Lcom/android/server/am/TraceErrorLogger;->generateErrorId()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, v7, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    const-string/jumbo v2, "system_server"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/TraceErrorLogger;->addErrorIdToTrace(Ljava/lang/String;Ljava/util/UUID;)V

    move-object/from16 v22, v0

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    move-object/from16 v22, v0

    :goto_7
    const/16 v0, 0xb9

    invoke-static {v0, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v0

    invoke-static {}, Lcom/android/server/MemoryPressureUtil;->currentPsiState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    move-object v2, v0

    new-instance v17, Ljava/io/StringWriter;

    invoke-direct/range {v17 .. v17}, Ljava/io/StringWriter;-><init>()V

    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v13, v20

    move-object v14, v2

    move-object/from16 v18, v6

    invoke-static/range {v13 .. v18}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/io/StringWriter;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    const/16 v0, 0x77

    invoke-direct {v7, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    const/16 v0, 0x6c

    invoke-direct {v7, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    new-instance v0, Lcom/android/server/Watchdog$1;

    const-string/jumbo v14, "watchdogWriteToDropbox"

    move-object v1, v0

    move-object v15, v2

    move-object/from16 v2, p0

    move/from16 v16, v3

    move-object v3, v14

    move-wide/from16 v23, v4

    move-object v4, v8

    move-object v5, v13

    move-object v14, v6

    move-object/from16 v6, v22

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Ljava/util/UUID;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-wide/16 v2, 0x7d0

    :try_start_6
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_8
    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :goto_9
    iget-object v2, v7, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iget-object v0, v7, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    move-object v3, v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_c

    const-string v0, "Watchdog"

    const-string v2, "Reporting stuck state to activity controller"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    const-string v0, "Service dumps disabled due to hung system process."

    invoke-static {v0}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    invoke-interface {v3, v14}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_b

    const-string v2, "Watchdog"

    const-string v4, "Activity controller requested to coninue to wait"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    const/4 v2, 0x0

    move v1, v2

    goto/16 :goto_0

    :cond_b
    goto :goto_a

    :catch_2
    move-exception v0

    :cond_c
    :goto_a
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v9, 0x2

    :cond_d
    if-lt v9, v10, :cond_e

    const-string v0, "Watchdog"

    const-string v2, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_e
    if-lez v9, :cond_f

    const-string v0, "Watchdog"

    const-string v2, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_f
    if-nez v19, :cond_10

    const-string v0, "Watchdog"

    const-string v2, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_10
    const-string v0, "Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12}, Lcom/android/server/WatchdogDiagnostics;->diagnoseCheckers(Ljava/util/List;)V

    const-string v0, "Watchdog"

    const-string v2, "*** GOODBYE!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-nez v0, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->isCrashLoopFound()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/sysprop/WatchdogProperties;->should_ignore_fatal_count()Ljava/util/Optional;

    move-result-object v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->breakCrashLoop()V

    :cond_11
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_b
    const/4 v1, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    move-object v14, v6

    move v5, v9

    move v1, v11

    move-object v2, v12

    move-object v3, v14

    move/from16 v4, v19

    move/from16 v6, v21

    goto :goto_c

    :catchall_2
    move-exception v0

    move v5, v9

    goto :goto_c

    :catchall_3
    move-exception v0

    :goto_c
    :try_start_a
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0
.end method

.method private writeTimeoutHistory(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ","

    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/data/system/watchdog-timeout-history.txt"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v2, "ro.boottime.zygote"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "Watchdog"

    const-string v3, "Failed to write file /data/system/watchdog-timeout-history.txt"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitorLocked(Lcom/android/server/Watchdog$Monitor;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addThread(Landroid/os/Handler;)V
    .locals 2

    sget-wide v0, Lcom/android/server/Watchdog;->DEFAULT_TIMEOUT:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    return-void
.end method

.method public addThread(Landroid/os/Handler;J)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/Watchdog$HandlerChecker;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4

    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public pauseWatchingCurrentThread(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/server/Watchdog$HandlerChecker;->pauseLocked(Ljava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public processDied(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p1}, Lcom/android/server/Watchdog;->isInterestingJavaProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Watchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interesting Java process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " died. Pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p1}, Lcom/android/server/Watchdog;->isInterestingJavaProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Watchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interesting Java process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " started. Pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method rebootSystem(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rebooting system because: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IPowerManager;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1, p1, v1}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-void
.end method

.method public resumeWatchingCurrentThread(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/server/Watchdog$HandlerChecker;->resumeLocked(Ljava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAllowRestart(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/Watchdog;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
