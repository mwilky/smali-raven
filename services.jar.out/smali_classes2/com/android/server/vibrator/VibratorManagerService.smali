.class public Lcom/android/server/vibrator/VibratorManagerService;
.super Landroid/os/IVibratorManagerService$Stub;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;,
        Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;,
        Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;,
        Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;,
        Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;,
        Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;,
        Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;,
        Lcom/android/server/vibrator/VibratorManagerService$OnSyncedVibrationCompleteListener;,
        Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;,
        Lcom/android/server/vibrator/VibratorManagerService$Injector;,
        Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field private static final EXTERNAL_VIBRATOR_SERVICE:Ljava/lang/String; = "external_vibrator_service"

.field private static final TAG:Ljava/lang/String; = "VibratorManagerService"


# instance fields
.field private final mAlwaysOnEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field private final mCapabilities:J

.field private final mContext:Landroid/content/Context;

.field private mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

.field private mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

.field private final mDeviceVibrationEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mLock:Ljava/lang/Object;

.field private final mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

.field private mNextVibration:Lcom/android/server/vibrator/VibrationThread;

.field private final mNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mSystemUiPackage:Ljava/lang/String;

.field private final mVibrationCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;

.field private final mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

.field private final mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

.field private final mVibratorIds:[I

.field private final mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/VibratorManagerService$Injector;)V
    .locals 9

    invoke-direct {p0}, Landroid/os/IVibratorManagerService$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$1;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {v3, p1, v0}, Lcom/android/server/vibrator/VibrationSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    new-instance v4, Lcom/android/server/vibrator/VibrationScaler;

    invoke-direct {v4, p1, v3}, Lcom/android/server/vibrator/VibrationScaler;-><init>(Landroid/content/Context;Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    new-instance v4, Lcom/android/server/vibrator/InputDeviceDelegate;

    invoke-direct {v4, p1, v0}, Lcom/android/server/vibrator/InputDeviceDelegate;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    new-instance v0, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    invoke-direct {v0, v3}, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mDeviceVibrationEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    invoke-virtual {p2}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->getNativeWrapper()Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {v3, v0}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->init(Lcom/android/server/vibrator/VibratorManagerService$OnSyncedVibrationCompleteListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00ad

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    new-instance v5, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-direct {v5, p0, v4, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;-><init>(Lcom/android/server/vibrator/VibratorManagerService;ILcom/android/server/vibrator/VibratorManagerService$1;)V

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mSystemUiPackage:Ljava/lang/String;

    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string v5, "*vibrator*"

    invoke-virtual {v2, v1, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->getCapabilities()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCapabilities:J

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->getVibratorIds()[I

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-array v5, v3, [I

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    goto :goto_1

    :cond_0
    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    new-instance v5, Landroid/util/SparseArray;

    array-length v6, v1

    invoke-direct {v5, v6}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    array-length v5, v1

    :goto_0
    if-ge v3, v5, :cond_1

    aget v6, v1, v3

    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p2, v6, v0}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->createVibratorController(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)Lcom/android/server/vibrator/VibratorController;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->cancelSynced()V

    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v5}, Lcom/android/server/vibrator/VibratorController;->off()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v5, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;

    invoke-direct {v5, p0}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    const-string v6, "external_vibrator_service"

    invoke-virtual {p2, v6, v5}, Lcom/android/server/vibrator/VibratorManagerService$Injector;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/Vibration$Status;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationThreadLocked(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/vibrator/VibratorManagerService;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->onSyncedVibrationComplete(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/vibrator/VibratorManagerService;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->onVibrationComplete(IJ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/vibrator/VibratorManagerService;ILjava/lang/String;Landroid/os/VibrationAttributes;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->checkAppOpModeLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationScaler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationThread;
    .locals 0

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/vibrator/VibratorManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->setExternalControl(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/vibrator/VibratorManagerService;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->isSystemHapticFeedback(Lcom/android/server/vibrator/Vibration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationThread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/VibrationThread;
    .locals 0

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationThread;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/vibrator/VibratorManagerService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCapabilities:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->reportFinishedVibrationLocked(Lcom/android/server/vibrator/Vibration$Status;)V

    return-void
.end method

.method private checkAppOpModeLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p3}, Landroid/os/VibrationAttributes;->getAudioUsage()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1, p1, p2}, Landroid/app/AppOpsManager;->checkAudioOpNoThrow(IIILjava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAppOpModeLocked(ILandroid/os/VibrationAttributes;)I

    move-result v1

    if-eq v0, v1, :cond_0

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bypassing DND for vibrate from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VibratorManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method private endVibrationLocked(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/android/server/vibrator/Vibration;->end(Lcom/android/server/vibrator/Vibration$Status;)V

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->record(Lcom/android/server/vibrator/Vibration;)V

    return-void
.end method

.method private endVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->end(Lcom/android/server/vibrator/Vibration$Status;)V

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->record(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;)V

    return-void
.end method

.method private enforceUpdateAppOpsStatsPermission(I)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private static extractPrebakedSegment(Landroid/os/VibrationEffect;)Landroid/os/vibrator/PrebakedSegment;
    .locals 3

    instance-of v0, p0, Landroid/os/VibrationEffect$Composed;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v2, v1, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/os/vibrator/PrebakedSegment;

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/CombinedVibration;)V
    .locals 3

    instance-of v0, p2, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/vibrator/VibratorManagerService;->fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/VibrationEffect;)V

    goto :goto_3

    :cond_0
    instance-of v0, p2, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Landroid/os/CombinedVibration$Stereo;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/VibrationEffect;

    invoke-direct {p0, p1, v2}, Lcom/android/server/vibrator/VibratorManagerService;->fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/VibrationEffect;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    :cond_2
    instance-of v0, p2, Landroid/os/CombinedVibration$Sequential;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/CombinedVibration;

    invoke-direct {p0, p1, v2}, Lcom/android/server/vibrator/VibratorManagerService;->fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/CombinedVibration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    nop

    :cond_4
    :goto_3
    return-void
.end method

.method private fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/VibrationEffect;)V
    .locals 7

    move-object v0, p2

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v4, v3, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/os/vibrator/PrebakedSegment;

    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v4}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/vibrator/VibrationSettings;->getFallbackEffect(I)Landroid/os/VibrationEffect;

    move-result-object v5

    invoke-virtual {v4}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v6

    invoke-virtual {p1, v6, v5}, Lcom/android/server/vibrator/Vibration;->addFallback(ILandroid/os/VibrationEffect;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private finishAppOpModeLocked(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    return-void
.end method

.method private fixupAlwaysOnEffectsLocked(Landroid/os/CombinedVibration;)Landroid/util/SparseArray;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CombinedVibration;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/os/vibrator/PrebakedSegment;",
            ">;"
        }
    .end annotation

    const-wide/32 v0, 0x800000

    const-string v2, "fixupAlwaysOnEffectsLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    instance-of v2, p1, Landroid/os/CombinedVibration$Mono;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {v2}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v2

    new-instance v4, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;-><init>(Landroid/os/VibrationEffect;)V

    invoke-direct {p0, v4}, Lcom/android/server/vibrator/VibratorManagerService;->transformAllVibratorsLocked(Ljava/util/function/Function;)Landroid/util/SparseArray;

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    :cond_0
    instance-of v2, p1, Landroid/os/CombinedVibration$Stereo;

    if-eqz v2, :cond_5

    move-object v2, p1

    check-cast v2, Landroid/os/CombinedVibration$Stereo;

    invoke-virtual {v2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v2

    :goto_0
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/VibrationEffect;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->extractPrebakedSegment(Landroid/os/VibrationEffect;)Landroid/os/vibrator/PrebakedSegment;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v7, "VibratorManagerService"

    const-string v8, "Only prebaked effects supported for always-on."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :cond_1
    :try_start_1
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/vibrator/VibratorController;

    if-eqz v8, :cond_2

    const-wide/16 v9, 0x40

    invoke-virtual {v8, v9, v10}, Lcom/android/server/vibrator/VibratorController;->hasCapability(J)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v4, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_4

    nop

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :cond_4
    nop

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v4

    :cond_5
    nop

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private fixupAppOpModeLocked(ILandroid/os/VibrationAttributes;)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return p1
.end method

.method private fixupVibrationAttributes(Landroid/os/VibrationAttributes;)Landroid/os/VibrationAttributes;
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    new-instance v1, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v1, p1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/VibrationAttributes$Builder;->setFlags(II)Landroid/os/VibrationAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isEffectValid(Landroid/os/CombinedVibration;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "VibratorManagerService"

    if-nez p0, :cond_0

    const-string v2, "effect must not be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/CombinedVibration;->validate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v2

    const-string v3, "Encountered issue when verifying CombinedVibrationEffect."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private isSystemHapticFeedback(Lcom/android/server/vibrator/Vibration;)Z
    .locals 3

    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget v0, p1, Lcom/android/server/vibrator/Vibration;->uid:I

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcom/android/server/vibrator/Vibration;->uid:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mSystemUiPackage:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method static synthetic lambda$fixupAlwaysOnEffectsLocked$2(Landroid/os/VibrationEffect;Lcom/android/server/vibrator/VibratorController;)Landroid/os/VibrationEffect;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$setAlwaysOnEffect$0(ILcom/android/server/vibrator/VibratorController;)V
    .locals 2

    const-wide/16 v0, 0x40

    invoke-virtual {p1, v0, v1}, Lcom/android/server/vibrator/VibratorController;->hasCapability(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/vibrator/VibratorController;->updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V

    :cond_0
    return-void
.end method

.method static native nativeCancelSynced(J)V
.end method

.method static native nativeGetCapabilities(J)J
.end method

.method static native nativeGetFinalizer()J
.end method

.method static native nativeGetVibratorIds(J)[I
.end method

.method static native nativeInit(Lcom/android/server/vibrator/VibratorManagerService$OnSyncedVibrationCompleteListener;)J
.end method

.method static native nativePrepareSynced(J[I)Z
.end method

.method static native nativeTriggerSynced(JJ)Z
.end method

.method private onAllVibratorsLocked(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/vibrator/VibratorController;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onSyncedVibrationComplete(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationThread;->syncedVibrationComplete()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onVibrationComplete(IJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long v1, v1, p2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/VibrationThread;->vibratorComplete(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reportFinishedVibrationLocked(Lcom/android/server/vibrator/Vibration$Status;)V
    .locals 5

    const-wide/32 v0, 0x800000

    const-string v2, "reportFinishVibrationLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string v2, "vibration"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V

    iget v3, v2, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v4, v2, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private setExternalControl(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/VibratorController;->setExternalControl(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private shouldCancelVibration(Landroid/os/VibrationAttributes;I)Z
    .locals 4

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    and-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v3

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method private shouldCancelVibration(Lcom/android/server/vibrator/Vibration;ILandroid/os/IBinder;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->token:Landroid/os/IBinder;

    if-ne v0, p3, :cond_0

    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-direct {p0, v0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelVibration(Landroid/os/VibrationAttributes;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldIgnoreVibrationForCurrentLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$Status;
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/vibrator/Vibration;->isRepeating()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vibrator/Vibration;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    const/16 v2, 0x11

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_ALARM:Lcom/android/server/vibrator/Vibration$Status;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vibrator/Vibration;->isRepeating()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/Vibration$Status;

    return-object v0

    :cond_2
    return-object v1
.end method

.method private shouldIgnoreVibrationLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;
    .locals 4

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p3}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateForPowerMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_POWER:Lcom/android/server/vibrator/Vibration$Status;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p3}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/Vibration$Status;

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {p3}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateForRingerMode(I)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_RINGTONE:Lcom/android/server/vibrator/Vibration$Status;

    return-object v1

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService;->checkAppOpModeLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Would be an error: vibrate from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VibratorManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    return-object v2

    :cond_3
    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    return-object v2

    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method private shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$Status;
    .locals 3

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/Vibration$Status;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget v1, p1, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v2, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateForUid(II)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring incoming vibration as process with uid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/vibrator/Vibration;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is background, attrs= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_BACKGROUND:Lcom/android/server/vibrator/Vibration$Status;

    return-object v0

    :cond_1
    iget v0, p1, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v1, p1, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v0

    return-object v0
.end method

.method private startAppOpModeLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAppOpModeLocked(ILandroid/os/VibrationAttributes;)I

    move-result v0

    return v0
.end method

.method private startVibrationLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$Status;
    .locals 12

    const-wide/32 v0, 0x800000

    const-string v2, "startVibrationLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    new-instance v2, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration;)V

    invoke-virtual {p1, v2}, Lcom/android/server/vibrator/Vibration;->updateEffects(Ljava/util/function/Function;)V

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    iget v4, p1, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v5, p1, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/vibrator/Vibration;->getEffect()Landroid/os/CombinedVibration;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/vibrator/Vibration;->reason:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/vibrator/InputDeviceDelegate;->vibrateIfAvailable(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/server/vibrator/Vibration$Status;->FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/Vibration$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :cond_0
    :try_start_1
    new-instance v11, Lcom/android/server/vibrator/VibrationThread;

    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mDeviceVibrationEffectAdapter:Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget-object v10, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationCallbacks;

    move-object v3, v11

    move-object v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/server/vibrator/VibrationThread;-><init>(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;Landroid/util/SparseArray;Landroid/os/PowerManager$WakeLock;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/vibrator/VibrationThread$VibrationCallbacks;)V

    move-object v3, v11

    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    if-nez v4, :cond_1

    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationThreadLocked(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v4

    :cond_1
    :try_start_2
    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationThread;

    sget-object v4, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v4

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private startVibrationThreadLocked(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/Vibration$Status;
    .locals 7

    const-wide/32 v0, 0x800000

    const-string v2, "startVibrationThreadLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    iget v3, v2, Lcom/android/server/vibrator/Vibration;->uid:I

    iget-object v4, v2, Lcom/android/server/vibrator/Vibration;->opPkg:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/vibrator/VibratorManagerService;->startAppOpModeLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    sget-object v4, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;

    goto :goto_0

    :pswitch_1
    const-string v4, "VibratorManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start AppOpsManager operation errored for uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/vibrator/Vibration;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/Vibration$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v4

    :pswitch_2
    :try_start_1
    const-string v4, "vibration"

    const/4 v5, 0x0

    invoke-static {v0, v1, v4, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationThread;->start()V

    sget-object v4, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v4

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v4

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private transformAllVibratorsLocked(Ljava/util/function/Function;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/vibrator/VibratorController;",
            "TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorController;

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/PrebakedSegment;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget v3, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->uid:I

    iget-object v4, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->opPkg:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(ILjava/lang/String;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    iget-object v5, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v5}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/android/server/vibrator/VibrationScaler;->scale(Landroid/os/vibrator/PrebakedSegment;I)Landroid/os/vibrator/PrebakedSegment;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget v4, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->alwaysOnId:I

    invoke-virtual {v1, v4, v2}, Lcom/android/server/vibrator/VibratorController;->updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public cancelVibrate(ILandroid/os/IBinder;)V
    .locals 8

    const-string v0, "cancelVibrate"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    const-string v4, "cancelVibrate"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationThread;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v5

    invoke-direct {p0, v5, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelVibration(Lcom/android/server/vibrator/Vibration;ILandroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationThread;

    :cond_0
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v5

    invoke-direct {p0, v5, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelVibration(Lcom/android/server/vibrator/Vibration;ILandroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {v5}, Lcom/android/server/vibrator/VibrationThread;->cancel()V

    :cond_1
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    if-eqz v5, :cond_2

    iget-object v5, v5, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v5}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelVibration(Landroid/os/VibrationAttributes;I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    sget-object v7, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {v5, v7}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->end(Lcom/android/server/vibrator/Vibration$Status;)V

    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    invoke-virtual {v5, v7}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->record(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;)V

    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    iget-object v5, v5, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v5}, Landroid/os/ExternalVibration;->mute()Z

    iput-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/vibrator/VibratorManagerService;->setExternalControl(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v5

    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v5

    :catchall_1
    move-exception v3

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "VibratorManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    array-length v3, p3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p3, v4

    const-string v6, "--proto"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {v3, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-virtual {v3, p2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->dumpText(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getVibratorIds()[I
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public getVibratorInfo(I)Landroid/os/VibratorInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public isVibrating(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_VIBRATOR_STATE"

    const-string v2, "isVibrating"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->isVibrating()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic lambda$startVibrationLocked$1$VibratorManagerService(Lcom/android/server/vibrator/Vibration;Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    iget-object v1, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/vibrator/VibrationScaler;->scale(Landroid/os/VibrationEffect;I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;Lcom/android/server/vibrator/VibratorManagerService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_VIBRATOR_STATE"

    const-string v2, "registerVibratorStateListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/vibrator/VibratorController;->registerVibratorStateListener(Landroid/os/IVibratorStateListener;)Z

    move-result v1

    return v1
.end method

.method public setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z
    .locals 15

    move-object v1, p0

    move/from16 v8, p3

    move-object/from16 v9, p4

    const-string v0, "setAlwaysOnEffect"

    const-wide/32 v10, 0x800000

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, v1, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE_ALWAYS_ON"

    const-string v3, "setAlwaysOnEffect"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez v9, :cond_0

    iget-object v2, v1, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iget-object v3, v1, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->delete(I)V

    new-instance v3, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v3, v8}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->onAllVibratorsLocked(Ljava/util/function/Consumer;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/android/server/vibrator/VibratorManagerService;->isEffectValid(Landroid/os/CombinedVibration;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v3, 0x0

    if-nez v2, :cond_1

    nop

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :cond_1
    move-object/from16 v2, p5

    :try_start_4
    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;)Landroid/os/VibrationAttributes;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iget-object v12, v1, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-direct {p0, v9}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAlwaysOnEffectsLocked(Landroid/os/CombinedVibration;)Landroid/util/SparseArray;

    move-result-object v2

    move-object v13, v2

    if-nez v13, :cond_2

    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :cond_2
    :try_start_7
    new-instance v14, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;

    move-object v2, v14

    move/from16 v3, p3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object v7, v13

    invoke-direct/range {v2 .. v7}, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;-><init>(IILjava/lang/String;Landroid/os/VibrationAttributes;Landroid/util/SparseArray;)V

    move-object v2, v14

    iget-object v3, v1, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V

    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    nop

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v6

    goto :goto_0

    :catchall_3
    move-exception v0

    goto :goto_0

    :catchall_4
    move-exception v0

    move-object/from16 v2, p5

    :goto_0
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method systemReady()V
    .locals 6

    const-string v0, "VibratorManager service initialized"

    const-string v1, "VibratorManagerService"

    const-string v2, "Initializing VibratorManager service..."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v2, 0x800000

    const-string v4, "systemReady"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v4}, Lcom/android/server/vibrator/VibrationSettings;->onSystemReady()V

    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    invoke-virtual {v4}, Lcom/android/server/vibrator/InputDeviceDelegate;->onSystemReady()V

    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    new-instance v5, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    invoke-virtual {v4, v5}, Lcom/android/server/vibrator/VibrationSettings;->addListener(Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;)V

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->updateServiceState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v4
.end method

.method public unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_VIBRATOR_STATE"

    const-string v2, "unregisterVibratorStateListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/vibrator/VibratorController;->unregisterVibratorStateListener(Landroid/os/IVibratorStateListener;)Z

    move-result v1

    return v1
.end method

.method updateServiceState()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateInputDevices()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/vibrator/InputDeviceDelegate;->updateInputDeviceVibrators(Z)Z

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;

    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    if-nez v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationThread;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateForPowerMode(I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationThread;->cancel()V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 13

    move-object v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vibrate, reason = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v11, 0x800000

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, v1, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    const-string v4, "vibrate"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-nez p6, :cond_0

    :try_start_1
    const-string v0, "VibratorManagerService"

    const-string v3, "token must not be null"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    goto/16 :goto_1

    :cond_0
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->enforceUpdateAppOpsStatsPermission(I)V

    invoke-static/range {p3 .. p3}, Lcom/android/server/vibrator/VibratorManagerService;->isEffectValid(Landroid/os/CombinedVibration;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-nez v0, :cond_1

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_1
    move-object/from16 v3, p4

    :try_start_3
    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;)Landroid/os/VibrationAttributes;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    new-instance v0, Lcom/android/server/vibrator/Vibration;

    iget-object v3, v1, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibrationId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    move-object v3, v0

    move-object/from16 v4, p6

    move-object/from16 v6, p3

    move v8, p1

    move-object v9, p2

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Lcom/android/server/vibrator/Vibration;-><init>(Landroid/os/IBinder;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v3, v0

    move-object/from16 v4, p3

    :try_start_5
    invoke-direct {p0, v3, v4}, Lcom/android/server/vibrator/VibratorManagerService;->fillVibrationFallbacks(Lcom/android/server/vibrator/Vibration;Landroid/os/CombinedVibration;)V

    iget-object v5, v1, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v3, v0}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_2
    :try_start_7
    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationForCurrentLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-direct {p0, v3, v6}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_3
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    iget-object v0, v1, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationThread;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationThread;->cancel()V

    :cond_4
    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationLocked(Lcom/android/server/vibrator/Vibration;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v0

    sget-object v10, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    if-eq v0, v10, :cond_5

    invoke-direct {p0, v3, v0}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/Vibration;Lcom/android/server/vibrator/Vibration$Status;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_5
    :try_start_a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_1
    move-exception v0

    :try_start_b
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object/from16 v4, p3

    goto :goto_1

    :catchall_5
    move-exception v0

    move-object/from16 v4, p3

    goto :goto_0

    :catchall_6
    move-exception v0

    move-object/from16 v4, p3

    move-object/from16 v3, p4

    :goto_0
    move-object v7, v3

    :goto_1
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
