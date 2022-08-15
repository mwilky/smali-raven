.class public Lcom/android/server/stats/pull/StatsPullAtomService;
.super Lcom/android/server/SystemService;
.source "StatsPullAtomService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;,
        Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;,
        Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;,
        Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;,
        Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    }
.end annotation


# static fields
.field public static final NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

.field public static final RANDOM_SEED:I


# instance fields
.field public final mAppOpsLock:Ljava/lang/Object;

.field public mAppOpsSamplingRate:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAttributedAppOpsLock"
        }
    .end annotation
.end field

.field public final mAppSizeLock:Ljava/lang/Object;

.field public final mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

.field public final mAttributedAppOpsLock:Ljava/lang/Object;

.field public mBaseDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcStatsLock"
        }
    .end annotation
.end field

.field public final mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

.field public final mBinderCallsStatsLock:Ljava/lang/Object;

.field public final mBluetoothActivityInfoLock:Ljava/lang/Object;

.field public final mBluetoothBytesTransferLock:Ljava/lang/Object;

.field public final mBuildInformationLock:Ljava/lang/Object;

.field public final mCategorySizeLock:Ljava/lang/Object;

.field public final mContext:Landroid/content/Context;

.field public final mCooldownDeviceLock:Ljava/lang/Object;

.field public final mCpuActiveTimeLock:Ljava/lang/Object;

.field public final mCpuClusterTimeLock:Ljava/lang/Object;

.field public final mCpuTimePerClusterFreqLock:Ljava/lang/Object;

.field public final mCpuTimePerThreadFreqLock:Ljava/lang/Object;

.field public final mCpuTimePerUidFreqLock:Ljava/lang/Object;

.field public final mCpuTimePerUidLock:Ljava/lang/Object;

.field public mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCpuActiveTimeLock"
        }
    .end annotation
.end field

.field public mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mClusterTimeLock"
        }
    .end annotation
.end field

.field public mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCpuTimePerUidFreqLock"
        }
    .end annotation
.end field

.field public mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCpuTimePerUidLock"
        }
    .end annotation
.end field

.field public final mDangerousAppOpsList:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDangerousAppOpsListLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mDangerousAppOpsListLock:Ljava/lang/Object;

.field public final mDangerousPermissionStateLock:Ljava/lang/Object;

.field public final mDataBytesTransferLock:Ljava/lang/Object;

.field public final mDebugElapsedClockLock:Ljava/lang/Object;

.field public mDebugElapsedClockPreviousValue:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDebugElapsedClockLock"
        }
    .end annotation
.end field

.field public mDebugElapsedClockPullCount:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDebugElapsedClockLock"
        }
    .end annotation
.end field

.field public final mDebugFailingElapsedClockLock:Ljava/lang/Object;

.field public mDebugFailingElapsedClockPreviousValue:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDebugFailingElapsedClockLock"
        }
    .end annotation
.end field

.field public mDebugFailingElapsedClockPullCount:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDebugFailingElapsedClockLock"
        }
    .end annotation
.end field

.field public final mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

.field public final mDirectoryUsageLock:Ljava/lang/Object;

.field public final mDiskIoLock:Ljava/lang/Object;

.field public final mDiskStatsLock:Ljava/lang/Object;

.field public final mExternalStorageInfoLock:Ljava/lang/Object;

.field public final mFaceSettingsLock:Ljava/lang/Object;

.field public final mHealthHalLock:Ljava/lang/Object;

.field public mHealthService:Lcom/android/server/health/HealthServiceWrapper;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHealthHalLock"
        }
    .end annotation
.end field

.field public final mHistoricalSubs:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDataBytesTransferLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/stats/pull/netstats/SubInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mKeystoreLock"
        }
    .end annotation
.end field

.field public final mInstalledIncrementalPackagesLock:Ljava/lang/Object;

.field public final mIonHeapSizeLock:Ljava/lang/Object;

.field public mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCpuTimePerThreadFreqLock"
        }
    .end annotation
.end field

.field public final mKernelWakelockLock:Ljava/lang/Object;

.field public mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mKernelWakelockLock"
        }
    .end annotation
.end field

.field public final mKeystoreLock:Ljava/lang/Object;

.field public final mLooperStatsLock:Ljava/lang/Object;

.field public final mModemActivityInfoLock:Ljava/lang/Object;

.field public final mNetworkStatsBaselines:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDataBytesTransferLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ">;"
        }
    .end annotation
.end field

.field public mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field public mNotificationManagerService:Landroid/app/INotificationManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationStatsLock"
        }
    .end annotation
.end field

.field public final mNotificationRemoteViewsLock:Ljava/lang/Object;

.field public final mNotificationStatsLock:Ljava/lang/Object;

.field public final mNumBiometricsEnrolledLock:Ljava/lang/Object;

.field public final mPowerProfileLock:Ljava/lang/Object;

.field public final mProcStatsLock:Ljava/lang/Object;

.field public final mProcessCpuTimeLock:Ljava/lang/Object;

.field public mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcessCpuTimeLock"
        }
    .end annotation
.end field

.field public final mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

.field public final mProcessMemoryStateLock:Ljava/lang/Object;

.field public mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcStatsLock"
        }
    .end annotation
.end field

.field public final mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

.field public final mRoleHolderLock:Ljava/lang/Object;

.field public final mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

.field public final mSettingsStatsLock:Ljava/lang/Object;

.field public mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

.field public mStatsManager:Landroid/app/StatsManager;

.field public mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

.field public mStorageManager:Landroid/os/storage/StorageManager;

.field public mStorageService:Landroid/os/IStoraged;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStoragedLock"
        }
    .end annotation
.end field

.field public final mStoragedLock:Ljava/lang/Object;

.field public mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDiskIoLock"
        }
    .end annotation
.end field

.field public mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public mSurfaceFlingerProcessCpuThreadReader:Lcom/android/internal/os/SelectedProcessCpuThreadReader;

.field public final mSystemElapsedRealtimeLock:Ljava/lang/Object;

.field public final mSystemIonHeapSizeLock:Ljava/lang/Object;

.field public final mSystemUptimeLock:Ljava/lang/Object;

.field public mTelephony:Landroid/telephony/TelephonyManager;

.field public final mTemperatureLock:Ljava/lang/Object;

.field public final mThermalLock:Ljava/lang/Object;

.field public mThermalService:Landroid/os/IThermalService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mThermalLock"
        }
    .end annotation
.end field

.field public final mTimeZoneDataInfoLock:Ljava/lang/Object;

.field public final mTimeZoneDetectionInfoLock:Ljava/lang/Object;

.field public mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mKernelWakelockLock"
        }
    .end annotation
.end field

.field public final mWifiActivityInfoLock:Ljava/lang/Object;

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$-dMA_wHIJeRrUambllf9cllVsmo(Landroid/util/SparseArray;I[I[J[DI[J)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullCpuCyclesPerUidClusterLocked$13(Landroid/util/SparseArray;I[I[J[DI[J)V

    return-void
.end method

.method public static synthetic $r8$lambda$4airjevV6I-rY3ZVOClhggzvBi0(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 0

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$sliceNetworkStatsByUid$8(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7ufbCUPIZ16j8363I6J8khpaPik(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getIStoragedService$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$8a90S49FGj2NCSdhCtdE341rqpw(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 0

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$sliceNetworkStatsByFgbg$9(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BAYJnEfnORxrRs5oNkGdyiczTNE(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullProcessMemorySnapshot$19(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NbrAlAghYL73c1UOsMHAAIIsktk(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getINotificationManagerService$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ri4RS7Y325oMnN_XvuHcgqX08XU(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 0

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$sliceNetworkStatsByUidAndFgbg$10(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TZ5O-rOJ7_PWulVdE8rZI7aJzyM(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getIKeystoreMetricsService$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$V8NkJ_eev1lXgc6QFr6c3nQd480(Landroid/util/SparseArray;I[J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullCpuTimePerUidFreqLocked$14(Landroid/util/SparseArray;I[J)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZNFoUiL8KAgGMt6E_9Wtp0PdUtw(Ljava/util/List;IILjava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullCpuActiveTimeLocked$15(Ljava/util/List;IILjava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fiMc7IS9Em_RLm7xoMmDab3c5BU(Ljava/util/List;II[J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullCpuTimePerUidLocked$12(Ljava/util/List;II[J)V

    return-void
.end method

.method public static synthetic $r8$lambda$g68pOr6Dz_kPD2gMBx6XrW8bpXg(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getIThermalService$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$gAmwYOe_-aER7bHg8mTx3QyeDGk(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullProcessMemoryHighWaterMarkLocked$18(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k66nC0GgsFSmSC1Ioqfar2w3jiQ(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullDataBytesTransferLocked$7(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lR5Ax5WEodQyxPTfiiBAJdF1jus(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullWifiActivityInfoLocked$17(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lcFYrrxgR7DrOgZ9GepvdOVakt8(Ljava/util/List;IIJJJJJJJJJJ)V
    .locals 0

    invoke-static/range {p0 .. p22}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullDiskIOLocked$21(Ljava/util/List;IIJJJJJJJJJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$qr8Jv2m-UgkecfPqtfyd3eS_194(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$onBootPhase$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$rpbVLJ0UCSo9z6kp6-qFEHd-HAo(Ljava/util/List;II[J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullCpuClusterTimeLocked$16(Ljava/util/List;II[J)V

    return-void
.end method

.method public static synthetic $r8$lambda$vvj7FoyrHfZbE54jRu38aDlwLrM(ILjava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$readProcStatsHighWaterMark$20(ILjava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wXD11FXCBadj7SDID3jnJj5RVws(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getIProcessStatsService$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$yIijC9wxGI486UfCqVjt5rR46-0(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$onBootPhase$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$yoS8A9QQejGxc4XFM828SHdVJ50(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$countAccessibilityServices$22(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$z9yaxBWEE8mEWXAuzNe1O0ZYp_U(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 0

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$sliceNetworkStatsByUidTagAndMetered$11(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOpsSamplingRate(Lcom/android/server/stats/pull/StatsPullAtomService;)I
    .locals 0

    iget p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppSizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppsOnExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAttributedAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBinderCallsStatsExceptionsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBinderCallsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBluetoothActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothActivityInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBluetoothBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothBytesTransferLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBuildInformationLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBuildInformationLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCategorySizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCategorySizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCooldownDeviceLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCooldownDeviceLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuActiveTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuActiveTimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuClusterTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuClusterTimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuTimePerClusterFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerClusterFreqLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuTimePerThreadFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerThreadFreqLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuTimePerUidFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidFreqLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuTimePerUidLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDangerousPermissionStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousPermissionStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDataBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDebugElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDebugFailingElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceCalculatedPowerUseLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDirectoryUsageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDirectoryUsageLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDiskIoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskIoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDiskStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mExternalStorageInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFaceSettingsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mFaceSettingsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHealthHalLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthHalLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHistoricalSubs(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstalledIncrementalPackagesLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mInstalledIncrementalPackagesLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIonHeapSizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKernelWakelockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLooperStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mLooperStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModemActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mModemActivityInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetworkStatsBaselines(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationRemoteViewsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationRemoteViewsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNumBiometricsEnrolledLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerProfileLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mPowerProfileLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessCpuTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessMemoryHighWaterMarkLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessMemoryStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRoleHolderLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRoleHolderLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRuntimeAppOpAccessMessageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSettingsStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemElapsedRealtimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemElapsedRealtimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemIonHeapSizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemUptimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemUptimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTelephony(Lcom/android/server/stats/pull/StatsPullAtomService;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTemperatureLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTemperatureLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimeZoneDataInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDataInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimeZoneDetectionInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDetectionInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiActivityInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAppOpsSamplingRate(Lcom/android/server/stats/pull/StatsPullAtomService;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mestimateAppOpsSamplingRate(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->estimateAppOpsSamplingRate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDataUsageBytesTransferSnapshotForSub(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForSub(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mpullDataBytesTransferLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDataBytesTransferLocked(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpullNumBiometricsEnrolledLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullNumBiometricsEnrolledLocked(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpullPendingIntentsPerPackage(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullPendingIntentsPerPackage(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpullProcStatsLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcStatsLocked(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetRANDOM_SEED()I
    .locals 1

    sget v0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    return v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    sput v0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/stats/pull/StatsPullAtomService;->NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsListLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothBytesTransferLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerClusterFreqLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidFreqLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuActiveTimeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuClusterTimeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiActivityInfoLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mModemActivityInfoLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothActivityInfoLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemElapsedRealtimeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemUptimeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryStateLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemIonHeapSizeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIonHeapSizeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTemperatureLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCooldownDeviceLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mLooperStatsLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskStatsLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDirectoryUsageLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppSizeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCategorySizeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskIoLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mPowerProfileLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTimeLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerThreadFreqLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBuildInformationLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRoleHolderLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDataInfoLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDetectionInfoLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mExternalStorageInfoLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mFaceSettingsLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationRemoteViewsLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousPermissionStateLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthHalLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSettingsStatsLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mInstalledIncrementalPackagesLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKeystoreLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static addCpuCyclesPerThreadGroupClusterAtoms(ILjava/util/List;I[J)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;I[J)V"
        }
    .end annotation

    move-object/from16 v0, p3

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClusters()[I

    move-result-object v1

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getClusters()I

    move-result v2

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqs()[J

    move-result-object v3

    new-array v4, v2, [J

    new-array v5, v2, [J

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    array-length v8, v0

    const-wide/16 v9, 0x3e8

    if-ge v7, v8, :cond_0

    aget v8, v1, v7

    aget-wide v11, v4, v8

    aget-wide v13, v3, v7

    aget-wide v15, v0, v7

    mul-long/2addr v13, v15

    div-long/2addr v13, v9

    add-long/2addr v11, v13

    aput-wide v11, v4, v8

    aget-wide v9, v5, v8

    aget-wide v11, v0, v7

    add-long/2addr v9, v11

    aput-wide v9, v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v6, v2, :cond_1

    aget-wide v0, v4, v6

    const-wide/32 v7, 0xf4240

    div-long v14, v0, v7

    aget-wide v0, v5, v6

    div-long v16, v0, v9

    move/from16 v11, p0

    move/from16 v12, p2

    move v13, v6

    invoke-static/range {v11 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/SynchronousResultReceiver;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    iget-object v1, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v2, "controller_activity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-object p0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " stats"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "StatsPullAtomService"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public static convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->isCertain()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    const-wide v3, 0x10e00000001L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->isCertain()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->getZoneIdOrdinals()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    aget v6, v2, v5

    const-wide v7, 0x20500000002L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->getZoneIds()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    array-length v2, p0

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v3, p0, v4

    const-wide v5, 0x20900000003L

    invoke-virtual {v1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static convertToMetricsDetectionMode(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method public static getAllCollapsedRatTypes()[I
    .locals 6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v0, v4

    invoke-static {v5}, Landroid/app/usage/NetworkStatsManager;->getCollapsedRatType(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/app/usage/NetworkStatsManager;->getCollapsedRatType(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/android/net/module/util/CollectionUtils;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method private native initializeNativePullers()V
.end method

.method public static synthetic lambda$countAccessibilityServices$22(I)Z
    .locals 1

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getIKeystoreMetricsService$3()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKeystoreLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$getINotificationManagerService$5()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$getIProcessStatsService$6()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$getIStoragedService$4()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$getIThermalService$2()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$onBootPhase$0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initializeNativePullers()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initializePullersState()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPullers()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerEventListeners()V

    return-void
.end method

.method private synthetic lambda$onBootPhase$1()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initAndRegisterNetworkStatsPullers()V

    return-void
.end method

.method public static synthetic lambda$pullCpuActiveTimeLocked$15(Ljava/util/List;IILjava/lang/Long;)V
    .locals 2

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJ)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$pullCpuClusterTimeLocked$16(Ljava/util/List;II[J)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    aget-wide v1, p3, v0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$pullCpuCyclesPerUidClusterLocked$13(Landroid/util/SparseArray;I[I[J[DI[J)V
    .locals 7

    invoke-static {p5}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p5}, Landroid/os/UserHandle;->isSharedAppGid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const p5, 0xea5f

    goto :goto_0

    :cond_1
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p5

    :goto_0
    invoke-virtual {p0, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    if-nez v0, :cond_2

    mul-int/lit8 p1, p1, 0x3

    new-array v0, p1, [D

    invoke-virtual {p0, p5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    const/4 p0, 0x0

    :goto_1
    array-length p1, p6

    if-ge p0, p1, :cond_3

    aget p1, p2, p0

    aget-wide v1, p6, p0

    mul-int/lit8 p1, p1, 0x3

    aget-wide v3, v0, p1

    aget-wide v5, p3, p0

    mul-long/2addr v5, v1

    long-to-double v5, v5

    add-double/2addr v3, v5

    aput-wide v3, v0, p1

    add-int/lit8 p5, p1, 0x1

    aget-wide v3, v0, p5

    long-to-double v1, v1

    add-double/2addr v3, v1

    aput-wide v3, v0, p5

    add-int/lit8 p1, p1, 0x2

    aget-wide v3, v0, p1

    aget-wide v5, p4, p0

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    aput-wide v3, v0, p1

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static synthetic lambda$pullCpuTimePerUidFreqLocked$14(Landroid/util/SparseArray;I[J)V
    .locals 5

    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->isSharedAppGid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0xea5f

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    if-nez v0, :cond_2

    array-length v0, p2

    new-array v0, v0, [J

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    const/4 p0, 0x0

    :goto_1
    array-length p1, p2

    if-ge p0, p1, :cond_3

    aget-wide v1, v0, p0

    aget-wide v3, p2, p0

    add-long/2addr v1, v3

    aput-wide v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static synthetic lambda$pullCpuTimePerUidLocked$12(Ljava/util/List;II[J)V
    .locals 7

    const/4 v0, 0x0

    aget-wide v3, p3, v0

    const/4 v0, 0x1

    aget-wide v5, p3, v0

    move v1, p1

    move v2, p2

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$pullDataBytesTransferLocked$7(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->hasSameSlicing(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$pullDiskIOLocked$21(Ljava/util/List;IIJJJJJJJJJJ)V
    .locals 2

    invoke-static/range {p1 .. p22}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJJJJJJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object v1, p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$pullProcessMemoryHighWaterMarkLocked$18(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V
    .locals 0

    iget p1, p1, Landroid/app/ProcessMemoryState;->pid:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public static synthetic lambda$pullProcessMemorySnapshot$19(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V
    .locals 0

    iget p1, p1, Landroid/app/ProcessMemoryState;->pid:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public static synthetic lambda$pullWifiActivityInfoLocked$17(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "controller_activity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$readProcStatsHighWaterMark$20(ILjava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5f

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$sliceNetworkStatsByFgbg$9(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 19

    new-instance v18, Landroid/net/NetworkStats$Entry;

    move-object/from16 v0, v18

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-wide/16 v16, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    return-object v18
.end method

.method public static synthetic lambda$sliceNetworkStatsByUid$8(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 19

    new-instance v18, Landroid/net/NetworkStats$Entry;

    move-object/from16 v0, v18

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-wide/16 v16, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    return-object v18
.end method

.method public static synthetic lambda$sliceNetworkStatsByUidAndFgbg$10(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 19

    new-instance v18, Landroid/net/NetworkStats$Entry;

    move-object/from16 v0, v18

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-wide/16 v16, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    return-object v18
.end method

.method public static synthetic lambda$sliceNetworkStatsByUidTagAndMetered$11(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 19

    new-instance v18, Landroid/net/NetworkStats$Entry;

    move-object/from16 v0, v18

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTag()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getMetered()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-wide/16 v16, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    return-object v18
.end method

.method public static readFully(Ljava/io/InputStream;[I)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x4000

    :goto_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    :goto_1
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " of avail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StatsPullAtomService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** FINISHED READING: pos="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " len="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    aput v2, p1, v1

    return-object v0

    :cond_2
    add-int/2addr v2, v3

    array-length v3, v0

    if-lt v2, v3, :cond_1

    add-int/lit16 v3, v2, 0x4000

    new-array v4, v3, [B

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Copying "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bytes to new array len "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    goto :goto_1
.end method

.method public static removeEmptyEntries(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 6

    new-instance v0, Landroid/net/NetworkStats;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    invoke-virtual {p0}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStats$Entry;

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getOperations()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-eqz v4, :cond_0

    :cond_1
    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static unpackStreamedData(ILjava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    invoke-static {v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v0

    aget p2, p2, v1

    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final addBytesTransferByTagAndMeteredAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {p0}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkStats$Entry;

    const/16 v0, 0x2763

    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getMetered()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getTag()I

    move-result v3

    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v10

    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZIJJJJ)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final addDataUsageBytesTransferAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-ne v1, v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-nez v4, :cond_2

    const/16 v5, 0x14

    if-ne v1, v5, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStats$Entry;

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v7

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    if-eqz v4, :cond_3

    const/16 v3, 0xd

    goto :goto_3

    :cond_3
    iget v3, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    :goto_3
    move/from16 v16, v3

    iget-object v3, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    iget-object v5, v3, Lcom/android/server/stats/pull/netstats/SubInfo;->mcc:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/stats/pull/netstats/SubInfo;->mnc:Ljava/lang/String;

    move-object/from16 v17, v6

    iget v6, v3, Lcom/android/server/stats/pull/netstats/SubInfo;->carrierId:I

    iget-boolean v3, v3, Lcom/android/server/stats/pull/netstats/SubInfo;->isOpportunistic:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    goto :goto_4

    :cond_4
    const/4 v3, 0x3

    :goto_4
    move/from16 v20, v3

    move/from16 v19, v6

    move-object/from16 v18, v17

    const/16 v3, 0x2762

    move v6, v3

    move-object/from16 v17, v5

    move/from16 v21, v2

    invoke-static/range {v6 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJJJILjava/lang/String;Ljava/lang/String;IIZ)Landroid/util/StatsEvent;

    move-result-object v3

    move-object/from16 v5, p2

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final addNetworkStats(ILjava/util/List;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStats$Entry;

    iget-boolean v3, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v5

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    move v6, v3

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v7

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v9

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v11

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v13

    move/from16 v4, p1

    invoke-static/range {v4 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZJJJJ)Landroid/util/StatsEvent;

    move-result-object v2

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v4

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v7

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v9

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v11

    move/from16 v3, p1

    invoke-static/range {v3 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJJJ)Landroid/util/StatsEvent;

    move-result-object v2

    :goto_2
    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final addOemDataUsageBytesTransferAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->oemManaged:I

    iget-object v15, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    array-length v12, v15

    const/16 v16, 0x0

    move/from16 v13, v16

    :goto_0
    if-ge v13, v12, :cond_2

    aget v17, v15, v13

    iget-object v1, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStats$Entry;

    const/16 v2, 0x2774

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v3

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    move/from16 v4, v16

    :goto_2
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v6

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v8

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v10

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v19

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v14

    move/from16 v5, v17

    move/from16 v21, v12

    move/from16 v22, v13

    move-wide/from16 v12, v19

    invoke-static/range {v1 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZIIJJJJ)Landroid/util/StatsEvent;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v12, v21

    move/from16 v13, v22

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    move/from16 v21, v12

    move/from16 v22, v13

    add-int/lit8 v13, v22, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x2762

    if-eq p1, v1, :cond_2

    const/16 v1, 0x2763

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    const/16 v1, 0x2774

    if-eq p1, v1, :cond_0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown atomTag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v3, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    new-array p1, v2, [I

    aput v1, p1, v1

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v3, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    new-array p1, v2, [I

    aput v1, p1, v1

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v3, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    new-array p1, v2, [I

    aput v2, p1, v1

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v3, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    new-array p1, v2, [I

    aput v2, p1, v1

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForOemManaged()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    new-instance p1, Landroid/net/NetworkTemplate$Builder;

    const/4 v1, 0x4

    invoke-direct {p1, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object p1

    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {v1, v2}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v1

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p1, v1}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p1

    new-instance v10, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidTagAndMetered(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v2

    const/4 p0, 0x2

    new-array v3, p0, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;I)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/stats/pull/netstats/SubInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForSub(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public final convertToAccessibilityShortcutType(I)I
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0

    :cond_1
    const/4 p0, 0x5

    :cond_2
    return p0
.end method

.method public final countAccessibilityServices(Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda20;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v1

    long-to-int p0, v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p0, 0x1

    :goto_0
    return v0
.end method

.method public final createModeGroups([Landroid/view/Display$Mode;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/Display$Mode;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getAlternativeRefreshRates()[F

    move-result-object v6

    array-length v7, v6

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_2

    aget v9, v6, v8

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v10

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v11

    invoke-virtual {p0, p1, v10, v11, v9}, Lcom/android/server/stats/pull/StatsPullAtomService;->findModeId([Landroid/view/Display$Mode;IIF)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final estimateAppOpsSamplingRate()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "permissions"

    const-string v1, "app_ops_target_collection_size"

    const/16 v2, 0x7d0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v3, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v6, v7, v5}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide v8, 0x7fffffffffffffffL

    invoke-direct {v3, v4, v5, v8, v9}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda7;

    invoke-direct {v5, v2}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda7;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$HistoricalOps;

    const/16 v2, 0x275b

    const/16 v3, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;

    iget-object v8, v5, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x20

    iget-object v5, v5, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mAttributionTag:Ljava/lang/String;

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    :goto_1
    add-int/2addr v8, v5

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    mul-int/2addr v0, v3

    int-to-long v0, v0

    div-long v8, v0, v6

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x64

    invoke-static/range {v8 .. v13}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 4

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/SynchronousResultReceiver;

    const-string v2, "bluetooth"

    invoke-direct {v1, v2}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda8;-><init>()V

    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$1;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    invoke-static {v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    return-object p0

    :cond_0
    const-string p0, "StatsPullAtomService"

    const-string v0, "Failed to get bluetooth adapter!"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final findModeId([Landroid/view/Display$Mode;IIF)I
    .locals 3

    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1, p2, p3, p4}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final getDataUsageBytesTransferSnapshotForOemManaged()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/util/Pair;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2, v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    move v9, v6

    :goto_0
    if-ge v9, v3, :cond_0

    aget v15, v2, v9

    new-instance v10, Landroid/net/NetworkTemplate$Builder;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v10, v15}, Landroid/net/NetworkTemplate$Builder;->setOemManaged(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v10

    invoke-virtual {v0, v10, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v10

    iget-object v11, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    if-eqz v10, :cond_1

    new-instance v14, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {v0, v10}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v12

    new-array v13, v4, [I

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v13, v6

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v10, v14

    move-object v11, v12

    move-object v12, v13

    move/from16 v13, v16

    move-object v3, v14

    move/from16 v14, v17

    move/from16 v21, v15

    move/from16 v15, v18

    move/from16 v16, v19

    move-object/from16 v17, v20

    move/from16 v18, v21

    invoke-direct/range {v10 .. v18}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;I)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x3

    goto :goto_0

    :cond_2
    return-object v5

    nop

    :array_0
    .array-data 4
        0x3
        0x1
        0x2
    .end array-data
.end method

.method public final getDataUsageBytesTransferSnapshotForSub(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/stats/pull/netstats/SubInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/server/stats/pull/StatsPullAtomService;->getAllCollapsedRatTypes()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget v12, v2, v5

    new-instance v6, Landroid/net/NetworkTemplate$Builder;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    move-object/from16 v15, p1

    iget-object v8, v15, Lcom/android/server/stats/pull/netstats/SubInfo;->subscriberId:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/net/NetworkTemplate$Builder;->setRatType(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v14, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {v0, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v8

    new-array v9, v7, [I

    aput v4, v9, v4

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, -0x1

    move-object v6, v14

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    move v11, v13

    move-object/from16 v13, p1

    move-object v4, v14

    move/from16 v14, v16

    invoke-direct/range {v6 .. v14}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final getIKeystoreMetricsService()Landroid/security/metrics/IKeystoreMetrics;
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKeystoreLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    if-nez v1, :cond_0

    const-string v1, "android.security.metrics"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/security/metrics/IKeystoreMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/metrics/IKeystoreMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/security/metrics/IKeystoreMetrics;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with IKeystoreMetrics failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final getINotificationManagerService()Landroid/app/INotificationManager;
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    if-nez v1, :cond_0

    const-string v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    :cond_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/app/INotificationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with notificationManager failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final getIProcessStatsService()Lcom/android/internal/app/procstats/IProcessStats;
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    if-nez v1, :cond_0

    const-string v1, "procstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    :cond_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Lcom/android/internal/app/procstats/IProcessStats;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with ProcessStats failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final getIStoragedService()Landroid/os/IStoraged;
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    if-nez v1, :cond_0

    const-string v1, "storaged"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    :cond_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with storagedService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final getIThermalService()Landroid/os/IThermalService;
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    if-nez v1, :cond_0

    const-string v1, "thermalservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/os/IThermalService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with thermalService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;
    .locals 11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-wide v5, Lcom/android/server/stats/pull/StatsPullAtomService;->NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

    const-string v7, "netstats_uid_bucket_duration"

    invoke-static {v4, v7, v5, v6}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v6}, Landroid/app/usage/NetworkStatsManager;->forceUpdate()V

    :cond_0
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    sub-long v0, v2, v0

    sub-long/2addr v0, v4

    move-object v5, v6

    move-object v6, p1

    move-wide v7, v0

    move-wide v9, v2

    invoke-virtual/range {v5 .. v10}, Landroid/app/usage/NetworkStatsManager;->querySummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object v4

    invoke-static {v4}, Lcom/android/net/module/util/NetworkStatsUtils;->fromPublicNetworkStats(Landroid/app/usage/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v4

    if-nez p2, :cond_1

    return-object v4

    :cond_1
    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    move-object v6, p1

    move-wide v7, v0

    move-wide v9, v2

    invoke-virtual/range {v5 .. v10}, Landroid/app/usage/NetworkStatsManager;->queryTaggedSummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p0

    invoke-static {p0}, Lcom/android/net/module/util/NetworkStatsUtils;->fromPublicNetworkStats(Landroid/app/usage/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const-string p1, "StatsPullAtomService"

    const-string v0, "Unexpected transport."

    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/net/NetworkTemplate$Builder;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {p1, v0}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final initAndRegisterNetworkStatsPullers()V
    .locals 3

    const-string v0, "StatsPullAtomService"

    const-string v1, "Registering NetworkStats pullers with statsd"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v1, 0x2710

    invoke-virtual {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v1, 0x2711

    invoke-virtual {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v1, 0x2712

    invoke-virtual {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v1, 0x2713

    invoke-virtual {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v1, 0x2763

    invoke-virtual {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v1, 0x2762

    invoke-virtual {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v1, 0x2774

    invoke-virtual {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerWifiBytesTransfer()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerWifiBytesTransferBackground()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMobileBytesTransfer()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMobileBytesTransferBackground()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBytesTransferByTagAndMetered()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDataUsageBytesTransfer()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerOemManagedBytesTransfer()V

    return-void
.end method

.method public initializePullersState()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string v1, "stats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-direct {v0, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Landroid/telephony/SubscriptionManager;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    new-instance v0, Lcom/android/internal/os/StoragedUidIoStatsReader;

    invoke-direct {v0}, Lcom/android/internal/os/StoragedUidIoStatsReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "stats_pull"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    new-instance v0, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->getSettingsModifiedReader(Landroid/content/Context;)Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapper;->create(Lcom/android/server/health/HealthInfoCallback;)Lcom/android/server/health/HealthServiceWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthService:Lcom/android/server/health/HealthServiceWrapper;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "StatsPullAtomService"

    const-string v2, "failed to initialize healthHalWrapper"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move v2, v1

    :goto_1
    const/16 v3, 0x79

    if-ge v2, v3, :cond_2

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;

    const-string v1, "/system/bin/surfaceflinger"

    invoke-direct {v0, v1}, Lcom/android/internal/os/SelectedProcessCpuThreadReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSurfaceFlingerProcessCpuThreadReader:Lcom/android/internal/os/SelectedProcessCpuThreadReader;

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIKeystoreMetricsService()Landroid/security/metrics/IKeystoreMetrics;

    return-void
.end method

.method public final isAccessibilityFloatingMenuUser(Landroid/content/Context;I)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "accessibility_button_mode"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const-string v1, "accessibility_button_targets"

    invoke-static {p0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    move v0, p2

    :cond_0
    return v0
.end method

.method public final isAccessibilityShortcutUser(Landroid/content/Context;I)Z
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "accessibility_button_targets"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "accessibility_shortcut_target_service"

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "accessibility_shortcut_dialog_shown"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {p0, v1, v2, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v3, :cond_2

    move p0, v3

    goto :goto_2

    :cond_2
    move p0, v2

    :goto_2
    if-nez p1, :cond_3

    if-nez v0, :cond_3

    if-eqz p0, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    return v2
.end method

.method public final milliAmpHrsToNanoAmpSecs(D)J
    .locals 2

    const-wide v0, 0x41ead27480000000L    # 3.6E9

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-long p0, p1

    return-wide p0
.end method

.method public onBootPhase(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public parseKeystoreAtomWithOverflow([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeystore2AtomWithOverflow()Landroid/security/metrics/Keystore2AtomWithOverflow;

    move-result-object v3

    const/16 v4, 0x2789

    iget v3, v3, Landroid/security/metrics/Keystore2AtomWithOverflow;->atom_id:I

    iget v2, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static {v4, v3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(III)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public parseKeystoreCrashStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v2, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v2}, Landroid/security/metrics/KeystoreAtomPayload;->getCrashStats()Landroid/security/metrics/CrashStats;

    move-result-object v2

    const/16 v3, 0x278d

    iget v2, v2, Landroid/security/metrics/CrashStats;->count_of_crash_events:I

    invoke-static {v3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public parseKeystoreKeyCreationWithAuthInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithAuthInfo()Landroid/security/metrics/KeyCreationWithAuthInfo;

    move-result-object v3

    const/16 v4, 0x2787

    iget v5, v3, Landroid/security/metrics/KeyCreationWithAuthInfo;->user_auth_type:I

    iget v6, v3, Landroid/security/metrics/KeyCreationWithAuthInfo;->log10_auth_key_timeout_seconds:I

    iget v3, v3, Landroid/security/metrics/KeyCreationWithAuthInfo;->security_level:I

    iget v2, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static {v4, v5, v6, v3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public parseKeystoreKeyCreationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithGeneralInfo()Landroid/security/metrics/KeyCreationWithGeneralInfo;

    move-result-object v3

    const/16 v4, 0x2786

    iget v5, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->algorithm:I

    iget v6, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_size:I

    iget v7, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->ec_curve:I

    iget v8, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_origin:I

    iget v9, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->error_code:I

    iget-boolean v10, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->attestation_requested:Z

    iget v11, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static/range {v4 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIZI)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public parseKeystoreKeyCreationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithPurposeAndModesInfo()Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    move-result-object v3

    const/16 v4, 0x2788

    iget v5, v3, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->algorithm:I

    iget v6, v3, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->purpose_bitmap:I

    iget v7, v3, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->padding_mode_bitmap:I

    iget v8, v3, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->digest_bitmap:I

    iget v9, v3, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->block_mode_bitmap:I

    iget v10, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public parseKeystoreKeyOperationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithGeneralInfo()Landroid/security/metrics/KeyOperationWithGeneralInfo;

    move-result-object v3

    const/16 v4, 0x278b

    iget v5, v3, Landroid/security/metrics/KeyOperationWithGeneralInfo;->outcome:I

    iget v6, v3, Landroid/security/metrics/KeyOperationWithGeneralInfo;->error_code:I

    iget-boolean v7, v3, Landroid/security/metrics/KeyOperationWithGeneralInfo;->key_upgraded:Z

    iget v8, v3, Landroid/security/metrics/KeyOperationWithGeneralInfo;->security_level:I

    iget v9, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIZII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public parseKeystoreKeyOperationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithPurposeAndModesInfo()Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    move-result-object v3

    const/16 v4, 0x278a

    iget v5, v3, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->purpose:I

    iget v6, v3, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->padding_mode_bitmap:I

    iget v7, v3, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->digest_bitmap:I

    iget v8, v3, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->block_mode_bitmap:I

    iget v9, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public parseKeystoreStorageStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v2, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v2}, Landroid/security/metrics/KeystoreAtomPayload;->getStorageStats()Landroid/security/metrics/StorageStats;

    move-result-object v2

    const/16 v3, 0x2777

    iget v4, v2, Landroid/security/metrics/StorageStats;->storage_type:I

    iget v5, v2, Landroid/security/metrics/StorageStats;->size:I

    iget v2, v2, Landroid/security/metrics/StorageStats;->unused_size:I

    invoke-static {v3, v4, v5, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public parseRkpErrorStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getRkpErrorStats()Landroid/security/metrics/RkpErrorStats;

    move-result-object v3

    const/16 v4, 0x278c

    iget v5, v3, Landroid/security/metrics/RkpErrorStats;->rkpError:I

    iget v2, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    iget v3, v3, Landroid/security/metrics/RkpErrorStats;->security_level:I

    invoke-static {v4, v5, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public parseRkpPoolStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    return v4

    :cond_0
    iget-object v2, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v2}, Landroid/security/metrics/KeystoreAtomPayload;->getRkpPoolStats()Landroid/security/metrics/RkpPoolStats;

    move-result-object v2

    const/16 v3, 0x2778

    iget v4, v2, Landroid/security/metrics/RkpPoolStats;->security_level:I

    iget v5, v2, Landroid/security/metrics/RkpPoolStats;->expiring:I

    iget v6, v2, Landroid/security/metrics/RkpPoolStats;->unassigned:I

    iget v7, v2, Landroid/security/metrics/RkpPoolStats;->attested:I

    iget v8, v2, Landroid/security/metrics/RkpPoolStats;->total:I

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final processHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOp;",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p6, :cond_0

    invoke-virtual {p6, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    new-instance v7, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;

    if-nez p6, :cond_2

    const/4 p6, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p6

    :goto_1
    move-object v4, p6

    move-object v1, v7

    move-object v2, p0

    move-object v3, p5

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$HistoricalOp;I)V

    iget p0, v7, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mHash:I

    if-ge p0, p4, :cond_3

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            "II)",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;",
            ">;"
        }
    .end annotation

    move/from16 v0, p2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v1

    if-ge v10, v1, :cond_4

    move-object/from16 v11, p1

    invoke-virtual {v11, v10}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v13

    move v14, v9

    :goto_1
    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v1

    if-ge v14, v1, :cond_3

    invoke-virtual {v12, v14}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v15

    const/16 v1, 0x275b

    if-ne v0, v1, :cond_1

    move v7, v9

    :goto_2
    invoke-virtual {v15}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v1

    if-ge v7, v1, :cond_2

    invoke-virtual {v15, v7}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v6

    move v5, v9

    :goto_3
    invoke-virtual {v6}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v1

    if-ge v5, v1, :cond_0

    invoke-virtual {v6, v5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v2

    invoke-virtual {v15}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v6}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v1, p0

    move-object v3, v8

    move v4, v13

    move/from16 v18, v5

    move/from16 v5, p3

    move-object/from16 v19, v6

    move-object/from16 v6, v16

    move/from16 v16, v7

    move-object/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v18, 0x1

    move/from16 v7, v16

    move-object/from16 v6, v19

    goto :goto_3

    :cond_0
    move/from16 v16, v7

    add-int/lit8 v7, v16, 0x1

    goto :goto_2

    :cond_1
    const/16 v1, 0x274c

    if-ne v0, v1, :cond_2

    move v7, v9

    :goto_4
    invoke-virtual {v15}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpCount()I

    move-result v1

    if-ge v7, v1, :cond_2

    invoke-virtual {v15, v7}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v2

    invoke-virtual {v15}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object v3, v8

    move v4, v13

    move/from16 v5, p3

    move/from16 v17, v7

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v17, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v8
.end method

.method public pullAccessibilityFloatingMenuStatsLocked(ILjava/util/List;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    iget-object v7, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->isAccessibilityFloatingMenuUser(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "accessibility_floating_menu_size"

    invoke-static {v4, v7, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const-string v8, "accessibility_floating_menu_icon_type"

    invoke-static {v4, v8, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const-string v9, "accessibility_floating_menu_fade_enabled"

    invoke-static {v4, v9, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v1, :cond_2

    move v6, v1

    :cond_2
    const-string v9, "accessibility_floating_menu_opacity"

    const v10, 0x3f0ccccd    # 0.55f

    invoke-static {v4, v9, v10, v5}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v5

    invoke-static {p1, v7, v8, v6, v5}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIZF)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "StatsPullAtomService"

    const-string p2, "pulling accessibility floating menu stats failed at getUsers"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public pullAccessibilityShortcutStatsLocked(ILjava/util/List;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    iget-object v8, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->isAccessibilityShortcutUser(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "accessibility_button_mode"

    invoke-static {v5, v8, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertToAccessibilityShortcutType(I)I

    move-result v10

    const-string v8, "accessibility_button_targets"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->countAccessibilityServices(Ljava/lang/String;)I

    move-result v11

    const-string v8, "accessibility_shortcut_target_service"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->countAccessibilityServices(Ljava/lang/String;)I

    move-result v13

    const-string v8, "accessibility_display_magnification_enabled"

    invoke-static {v5, v8, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    const/4 v12, 0x2

    const/4 v14, 0x3

    move/from16 v9, p1

    invoke-static/range {v9 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIII)Landroid/util/StatsEvent;

    move-result-object v6

    move-object/from16 v7, p2

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    move-object/from16 v7, p2

    goto :goto_0

    :cond_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "StatsPullAtomService"

    const-string v5, "pulling accessibility shortcuts stats failed at getUsers"

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public pullAppOpsLocked(ILjava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const-string v0, "StatsPullAtomService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v5, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    const-wide/16 v6, 0x0

    const-wide v8, 0x7fffffffffffffffL

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v5

    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda7;

    invoke-direct {v7, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda7;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v3, v5, v6, v7}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    const-wide/16 v5, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, p2, v3, p1, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->sampleAppOps(Ljava/util/List;Ljava/util/List;II)I

    move-result p0

    if-eq p0, v4, :cond_0

    const-string p0, "Atom 10060 downsampled - too many dimensions"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    const-string p1, "Could not read appops"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p0, 0x1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public pullAppSizeLocked(ILjava/util/List;)I
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const-string v0, "StatsPullAtomService"

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "/data/system/diskstats_cache.json"

    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "queryTime"

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v16

    const-string v2, "packageNames"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v6, "appSizes"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    const-string v6, "appDataSizes"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    const-string v6, "cacheSizes"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ne v6, v12, :cond_2

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ne v6, v12, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eq v6, v12, :cond_0

    goto :goto_1

    :cond_0
    const/16 v18, 0x0

    move/from16 v13, v18

    :goto_0
    if-ge v13, v12, :cond_1

    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v13, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v8

    invoke-virtual {v15, v13, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v10

    invoke-virtual {v3, v13, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v19

    move/from16 v6, p1

    move/from16 v21, v12

    move/from16 v22, v13

    move-wide/from16 v12, v19

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    move-wide/from16 v14, v16

    invoke-static/range {v6 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;JJJJ)Landroid/util/StatsEvent;

    move-result-object v6

    move-object/from16 v7, p2

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v22, 0x1

    move-object/from16 v14, v19

    move-object/from16 v15, v20

    move/from16 v12, v21

    goto :goto_0

    :cond_1
    return v18

    :cond_2
    :goto_1
    const-string v2, "formatting error in diskstats cache file!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const-string v2, "Unable to read diskstats cache file within pullAppSize"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public pullAppsOnExternalStorageInfoLocked(ILjava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_5

    move v4, v1

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x2

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isExternal()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x3

    goto :goto_1

    :cond_7
    move v4, v6

    :goto_1
    if-eq v4, v6, :cond_1

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    return v2
.end method

.method public pullAttributedAppOpsLocked(ILjava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v4, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    const-wide/16 v5, 0x0

    const-wide v7, 0x7fffffffffffffffL

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda7;

    invoke-direct {v6, v3}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda7;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v2, v4, v5, v6}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    const-wide/16 v4, 0x7d0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    iget v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/stats/pull/StatsPullAtomService$4;

    invoke-direct {v4, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$4;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const-wide/32 v5, 0xafc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v3, 0x64

    iput v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    :cond_0
    iget v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    invoke-virtual {p0, p2, v2, p1, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->sampleAppOps(Ljava/util/List;Ljava/util/List;II)I

    move-result p1

    iget p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    const-string p1, "StatsPullAtomService"

    const-string p2, "Could not read appops"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p0, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public pullBinderCallsStatsExceptionsLocked(ILjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const-class p0, Lcom/android/server/BinderCallsStatsService$Internal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/BinderCallsStatsService$Internal;

    if-nez p0, :cond_0

    const-string p0, "StatsPullAtomService"

    const-string p1, "failed to get binderStats"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$Internal;->getExportedExceptionStats()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;J)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public pullBinderCallsStatsLocked(ILjava/util/List;)I
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BinderCallsStatsService$Internal;

    if-nez v0, :cond_0

    const-string v0, "StatsPullAtomService"

    const-string v1, "failed to get binderStats"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->getExportedCallStats()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->reset()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    iget v3, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    iget-object v4, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    iget-wide v6, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    iget-wide v8, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    iget-wide v10, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    iget-wide v12, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    iget-wide v14, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    move/from16 p0, v3

    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    move-wide/from16 v16, v2

    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    move-wide/from16 v18, v2

    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    move-wide/from16 v20, v2

    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    move-wide/from16 v22, v2

    iget-boolean v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    move/from16 v24, v2

    iget v1, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    move/from16 v25, v1

    move/from16 v2, p1

    move/from16 v3, p0

    invoke-static/range {v2 .. v25}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;JJJJJJJJJZI)Landroid/util/StatsEvent;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public pullBluetoothActivityInfoLocked(ILjava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getTimestampMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getBluetoothStackState()I

    move-result v3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v8

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v10

    move v0, p1

    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJIJJJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullBluetoothBytesTransferLocked(ILjava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/UidTraffic;

    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v2

    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v5

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public pullBuildInformationLocked(ILjava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE_OR_CODENAME:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v7, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v9, Landroid/os/Build;->TAGS:Ljava/lang/String;

    move v0, p1

    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullCategorySizeLocked(ILjava/util/List;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    :try_start_0
    const-string p0, "/data/system/diskstats_cache.json"

    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "queryTime"

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    const/4 v4, 0x1

    const-string p0, "appSize"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    move v3, p1

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    const-string p0, "appDataSize"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    move v3, p1

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x3

    const-string p0, "cacheSize"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    move v3, p1

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x4

    const-string p0, "photosSize"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    move v3, p1

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x5

    const-string p0, "videosSize"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    move v3, p1

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x6

    const-string p0, "audioSize"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    move v3, p1

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x7

    const-string p0, "downloadsSize"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    move v3, p1

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x8

    const-string p0, "systemSize"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    move v3, p1

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x9

    const-string p0, "otherSize"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    move v3, p1

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    const-string p0, "StatsPullAtomService"

    const-string p1, "Unable to read diskstats cache file within pullCategorySize"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public pullCooldownDeviceLocked(ILjava/util/List;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-interface {p0}, Landroid/os/IThermalService;->getCurrentCoolingDevices()[Landroid/os/CoolingDevice;

    move-result-object p0

    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, p0, v5

    invoke-virtual {v6}, Landroid/os/CoolingDevice;->getType()I

    move-result v7

    invoke-virtual {v6}, Landroid/os/CoolingDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/os/CoolingDevice;->getValue()J

    move-result-wide v9

    long-to-int v6, v9

    invoke-static {p1, v7, v8, v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;I)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p0, "StatsPullAtomService"

    const-string p1, "Disconnected from thermal service. Cannot pull temperatures."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public pullCpuActiveTimeLocked(ILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda9;

    invoke-direct {v0, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda9;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    const/4 p0, 0x0

    return p0
.end method

.method public pullCpuClusterTimeLocked(ILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;

    invoke-direct {v0, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    const/4 p0, 0x0

    return p0
.end method

.method public pullCpuCyclesPerThreadGroupCluster(ILjava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const-class v0, Landroid/os/BatteryStatsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStatsInternal;

    invoke-virtual {v0}, Landroid/os/BatteryStatsInternal;->getSystemServiceCpuThreadTimes()Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    iget-object v3, v0, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->threadCpuTimesUs:[J

    invoke-static {p1, p2, v2, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->addCpuCyclesPerThreadGroupClusterAtoms(ILjava/util/List;I[J)V

    iget-object v0, v0, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->binderThreadCpuTimesUs:[J

    invoke-static {p1, p2, v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->addCpuCyclesPerThreadGroupClusterAtoms(ILjava/util/List;I[J)V

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSurfaceFlingerProcessCpuThreadReader:Lcom/android/internal/os/SelectedProcessCpuThreadReader;

    invoke-virtual {p0}, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->readAbsolute()Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    iget-object v1, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    if-eqz v1, :cond_2

    array-length v1, v1

    new-array v2, v1, [J

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    aget-wide v4, v4, v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    invoke-static {p1, p2, p0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addCpuCyclesPerThreadGroupClusterAtoms(ILjava/util/List;I[J)V

    :cond_2
    return v0
.end method

.method public pullCpuCyclesPerUidClusterLocked(ILjava/util/List;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/internal/os/PowerProfile;

    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClusters()[I

    move-result-object v6

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getClusters()I

    move-result v2

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqs()[J

    move-result-object v7

    array-length v3, v7

    new-array v8, v3, [D

    const/4 v9, 0x0

    const/4 v3, -0x1

    move v4, v9

    move v5, v4

    :goto_0
    array-length v10, v7

    if-ge v4, v10, :cond_1

    aget v10, v6, v4

    if-eq v10, v3, :cond_0

    move v5, v9

    :cond_0
    invoke-virtual {v1, v10, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCore(II)D

    move-result-wide v11

    aput-wide v11, v8, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    move v3, v10

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    new-instance v10, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;

    move-object v3, v10

    move-object v4, v1

    move v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;-><init>(Landroid/util/SparseArray;I[I[J[D)V

    invoke-virtual {v0, v10}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v3, v9

    :goto_1
    if-ge v3, v0, :cond_3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    move v6, v9

    :goto_2
    if-ge v6, v2, :cond_2

    mul-int/lit8 v7, v6, 0x3

    aget-wide v10, v5, v7

    const-wide v12, 0x412e848000000000L    # 1000000.0

    div-double/2addr v10, v12

    double-to-long v13, v10

    add-int/lit8 v8, v7, 0x1

    aget-wide v10, v5, v8

    double-to-long v11, v10

    add-int/lit8 v7, v7, 0x2

    aget-wide v7, v5, v7

    const-wide v15, 0x408f400000000000L    # 1000.0

    div-double/2addr v7, v15

    double-to-long v7, v7

    move/from16 v10, p1

    move-wide v15, v11

    move v11, v4

    move v12, v6

    move-wide/from16 v17, v7

    invoke-static/range {v10 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJJJ)Landroid/util/StatsEvent;

    move-result-object v7

    move-object/from16 v8, p2

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v8, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v9
.end method

.method public pullCpuTimePerClusterFreqLocked(ILjava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClusters()[I

    move-result-object p0

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqs()[J

    move-result-object v0

    invoke-static {}, Lcom/android/internal/os/KernelCpuTotalBpfMapReader;->read()[J

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget v4, p0, v3

    aget-wide v5, v0, v3

    long-to-int v5, v5

    aget-wide v6, v1, v3

    invoke-static {p1, v4, v5, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public pullCpuTimePerThreadFreqLocked(ILjava/util/List;)I
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    const-string v2, "StatsPullAtomService"

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const-string v0, "mKernelCpuThreadReader is null"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->getProcessCpuUsageDiffed()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "processCpuUsages is null"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->getCpuFrequenciesKhz()[I

    move-result-object v0

    array-length v4, v0

    const/16 v5, 0x8

    if-le v4, v5, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected maximum 8 frequencies, but got "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const/4 v4, 0x0

    move v6, v4

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    iget-object v8, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    move v9, v4

    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    iget-object v11, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v11, v11

    array-length v12, v0

    if-eq v11, v12, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected number of usage times, expected "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " but got "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    new-array v11, v5, [I

    new-array v12, v5, [I

    move v13, v4

    :goto_2
    if-ge v13, v5, :cond_5

    array-length v14, v0

    if-ge v13, v14, :cond_4

    aget v14, v0, v13

    aput v14, v11, v13

    iget-object v14, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    aget v14, v14, v13

    aput v14, v12, v13

    goto :goto_3

    :cond_4
    aput v4, v11, v13

    aput v4, v12, v13

    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_5
    iget v15, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->uid:I

    iget v13, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processId:I

    move/from16 v16, v13

    iget v13, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadId:I

    move/from16 v17, v13

    iget-object v13, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processName:Ljava/lang/String;

    move-object/from16 v18, v13

    iget-object v10, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadName:Ljava/lang/String;

    move-object/from16 v19, v10

    aget v20, v11, v4

    aget v21, v12, v4

    aget v22, v11, v3

    aget v23, v12, v3

    const/4 v10, 0x2

    aget v24, v11, v10

    aget v25, v12, v10

    const/4 v10, 0x3

    aget v26, v11, v10

    aget v27, v12, v10

    const/4 v10, 0x4

    aget v28, v11, v10

    aget v29, v12, v10

    const/4 v10, 0x5

    aget v30, v11, v10

    aget v31, v12, v10

    const/4 v10, 0x6

    aget v32, v11, v10

    aget v33, v12, v10

    const/4 v10, 0x7

    aget v34, v11, v10

    aget v35, v12, v10

    move/from16 v14, p1

    invoke-static/range {v14 .. v35}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIILjava/lang/String;Ljava/lang/String;IIIIIIIIIIIIIIII)Landroid/util/StatsEvent;

    move-result-object v10

    move-object/from16 v11, p2

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_6
    move-object/from16 v11, p2

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_7
    return v4
.end method

.method public pullCpuTimePerUidFreqLocked(ILjava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    move v5, v1

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_1

    aget-wide v6, v4, v5

    const-wide/16 v8, 0xa

    cmp-long v8, v6, v8

    if-ltz v8, :cond_0

    invoke-static {p1, v3, v5, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public pullCpuTimePerUidLocked(ILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;

    invoke-direct {v0, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    const/4 p0, 0x0

    return p0
.end method

.method public pullDangerousPermissionStateLocked(ILjava/util/List;)I
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v7, p1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const-string v1, "permissions"

    const-string v2, "dangerous_permission_state_sample_rate"

    const v3, 0x3c75c28f    # 0.015f

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v10

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v15, :cond_9

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    const/16 v0, 0x1000

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_8

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v12, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v12, :cond_1

    :cond_0
    :goto_2
    move/from16 v16, v1

    move/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move/from16 v22, v5

    move/from16 v17, v10

    const/16 v24, 0x0

    move-object/from16 v1, p2

    goto/16 :goto_8

    :cond_1
    iget-object v12, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    iget-object v12, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v12, 0x2753

    if-ne v7, v12, :cond_3

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v12

    cmpl-float v12, v12, v10

    if-lez v12, :cond_3

    goto :goto_2

    :cond_3
    iget-object v12, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v12, v12

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v12, :cond_0

    move/from16 v16, v1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v1, v1, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v17, v10

    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v13, v1, v10}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v18
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v1, v10, v4}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v10
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v19, v2

    :try_start_3
    const-string v2, "android.permission."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_4
    const/16 v2, 0x2742

    if-ne v7, v2, :cond_6

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v20, ""

    move-object/from16 v21, v3

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v6

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    const/16 v22, 0x1

    goto :goto_4

    :cond_5
    const/16 v22, 0x0

    :goto_4
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v18

    or-int v18, v3, v18

    move-object v3, v0

    move/from16 v0, p1

    move-object v7, v3

    move-object/from16 v3, v20

    move-object/from16 v20, v4

    move/from16 v4, v22

    move/from16 v22, v5

    move v5, v10

    move/from16 v23, v6

    const/16 v24, 0x0

    move/from16 v6, v18

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;ILjava/lang/String;ZII)Landroid/util/StatsEvent;

    move-result-object v0

    goto :goto_6

    :cond_6
    move-object v7, v0

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move/from16 v22, v5

    move/from16 v23, v6

    const/16 v24, 0x0

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v0, v0, v23

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    move/from16 v3, v24

    :goto_5
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v4

    or-int v5, v0, v4

    move/from16 v0, p1

    move v4, v10

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;IZII)Landroid/util/StatsEvent;

    move-result-object v0

    :goto_6
    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catch_0
    move-object/from16 v1, p2

    move-object v7, v0

    move/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move/from16 v22, v5

    move/from16 v23, v6

    const/16 v24, 0x0

    goto :goto_7

    :catch_1
    move-object/from16 v1, p2

    move-object v7, v0

    move/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v10

    :goto_7
    add-int/lit8 v6, v23, 0x1

    move-object v0, v7

    move/from16 v1, v16

    move/from16 v10, v17

    move/from16 v2, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    move/from16 v5, v22

    move/from16 v7, p1

    goto/16 :goto_3

    :goto_8
    add-int/lit8 v0, v16, 0x1

    move/from16 v7, p1

    move v1, v0

    move/from16 v10, v17

    move/from16 v2, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    move/from16 v5, v22

    goto/16 :goto_1

    :cond_8
    move-object/from16 v1, p2

    move/from16 v22, v5

    move/from16 v17, v10

    const/16 v24, 0x0

    add-int/lit8 v5, v22, 0x1

    move/from16 v7, p1

    goto/16 :goto_0

    :cond_9
    const/16 v24, 0x0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v24

    :catchall_0
    move-exception v0

    :try_start_4
    const-string v1, "StatsPullAtomService"

    const-string v2, "Could not read permissions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x1

    return v1

    :catchall_1
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final pullDataBytesTransferLocked(ILjava/util/List;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, ", return."

    const-string v6, "StatsPullAtomService"

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current snapshot is null for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    iget-object v8, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda4;

    invoke-direct {v9, v7}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V

    invoke-static {v8, v9}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    if-nez v8, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseline is null for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    new-instance v15, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    iget-object v9, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    iget-object v8, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v9, v8}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->removeEmptyEntries(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v8

    iget-object v9, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    iget-boolean v10, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    iget-boolean v11, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByTag:Z

    iget-boolean v12, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByMetered:Z

    iget v13, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    iget-object v14, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    iget v7, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->oemManaged:I

    move/from16 v16, v7

    move-object v7, v15

    move-object v4, v15

    move/from16 v15, v16

    invoke-direct/range {v7 .. v15}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;I)V

    iget-object v7, v4, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v7}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/16 v7, 0x2762

    if-eq v1, v7, :cond_5

    const/16 v7, 0x2763

    if-eq v1, v7, :cond_4

    const/16 v7, 0x2774

    if-eq v1, v7, :cond_3

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->addNetworkStats(ILjava/util/List;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v4, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addOemDataUsageBytesTransferAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v4, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addBytesTransferByTagAndMeteredAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v4, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addDataUsageBytesTransferAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public pullDebugElapsedClockLocked(ILjava/util/List;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-wide v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    move-wide v14, v4

    goto :goto_0

    :cond_0
    sub-long v2, v12, v2

    move-wide v14, v2

    :goto_0
    iget-wide v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    const/4 v11, 0x1

    move/from16 v2, p1

    move-wide v5, v12

    move-wide v7, v12

    move-wide v9, v14

    invoke-static/range {v2 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJI)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    const-wide/16 v5, 0x2

    rem-long v5, v3, v5

    const-wide/16 v16, 0x1

    cmp-long v2, v5, v16

    if-nez v2, :cond_1

    const/4 v11, 0x2

    move/from16 v2, p1

    move-wide v5, v12

    move-wide v7, v12

    move-wide v9, v14

    invoke-static/range {v2 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJI)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-wide v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    add-long v1, v1, v16

    iput-wide v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    iput-wide v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    const/4 v0, 0x0

    return v0
.end method

.method public pullDebugFailingElapsedClockLocked(ILjava/util/List;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    const-wide/16 v4, 0x5

    rem-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iput-wide v9, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    const-string p0, "StatsPullAtomService"

    const-string p1, "Failing debug elapsed clock"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    move-wide v7, v4

    goto :goto_0

    :cond_1
    sub-long v0, v9, v0

    move-wide v7, v0

    :goto_0
    move v0, p1

    move-wide v1, v2

    move-wide v3, v9

    move-wide v5, v9

    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJ)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-wide v9, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    const/4 p0, 0x0

    return p0
.end method

.method public pullDeviceCalculatedPowerUseLocked(ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/BatteryStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStatsManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/os/BatteryStatsManager;->getBatteryUsageStats()Landroid/os/BatteryUsageStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->milliAmpHrsToNanoAmpSecs(D)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "StatsPullAtomService"

    const-string p2, "Could not obtain battery usage stats"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public pullDirectoryUsageLocked(ILjava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    new-instance p0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getMetadataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v6

    invoke-virtual {p0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v8

    const/4 v5, 0x1

    move v4, p1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    invoke-virtual {v1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v7

    const/4 v4, 0x2

    move v3, p1

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v7

    const/4 v4, 0x3

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v7

    const/4 v4, 0x4

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullDiskIOLocked(ILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/StoragedUidIoStatsReader;->readAbsolute(Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;)V

    const/4 p0, 0x0

    return p0
.end method

.method public pullDiskStatsLocked(ILjava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const/16 v0, 0x200

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    int-to-byte v4, v3

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "system/statsdperftest.tmp"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v6, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v5, v6

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v5, :cond_1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_1
    throw p0

    :catch_2
    move-exception v1

    move-object v6, v5

    :goto_3
    move-object v5, v1

    if-eqz v6, :cond_2

    goto :goto_1

    :catch_3
    :cond_2
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    const-string v0, "StatsPullAtomService"

    if-eqz v5, :cond_4

    const-string v1, "Error performing diskstats latency test"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, -0x1

    :cond_4
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v1

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIStoragedService()Landroid/os/IStoraged;

    move-result-object p0

    if-nez p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    :try_start_4
    invoke-interface {p0}, Landroid/os/IStoraged;->getRecentPerf()I

    move-result v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    const-string p0, "storaged not found"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    invoke-static {p1, v6, v7, v1, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJZI)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method public pullExternalStorageInfoLocked(ILjava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v2

    invoke-static {v2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-nez v2, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    move v1, v5

    :goto_1
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v2

    if-eqz v2, :cond_4

    move v4, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_2
    iget-wide v2, v3, Landroid/os/storage/DiskInfo;->size:J

    invoke-static {p1, v4, v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public pullFaceSettingsLocked(ILjava/util/List;)I
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    if-nez v3, :cond_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_7

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    iget-object v9, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "face_unlock_keyguard_enabled"

    invoke-static {v9, v10, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    iget-object v10, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "face_unlock_dismisses_keyguard"

    invoke-static {v10, v11, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    iget-object v11, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "face_unlock_attention_required"

    invoke-static {v11, v12, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    iget-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "face_unlock_app_enabled"

    invoke-static {v12, v13, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    iget-object v13, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "face_unlock_always_require_confirmation"

    invoke-static {v13, v14, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    iget-object v14, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "face_unlock_diversity_required"

    invoke-static {v14, v15, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v9, :cond_1

    move v15, v4

    goto :goto_1

    :cond_1
    move v15, v6

    :goto_1
    if-eqz v10, :cond_2

    move/from16 v16, v4

    goto :goto_2

    :cond_2
    move/from16 v16, v6

    :goto_2
    if-eqz v11, :cond_3

    move/from16 v17, v4

    goto :goto_3

    :cond_3
    move/from16 v17, v6

    :goto_3
    if-eqz v12, :cond_4

    move/from16 v18, v4

    goto :goto_4

    :cond_4
    move/from16 v18, v6

    :goto_4
    if-eqz v13, :cond_5

    move/from16 v19, v4

    goto :goto_5

    :cond_5
    move/from16 v19, v6

    :goto_5
    if-eqz v8, :cond_6

    move/from16 v20, v4

    goto :goto_6

    :cond_6
    move/from16 v20, v6

    :goto_6
    move/from16 v14, p1

    invoke-static/range {v14 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IZZZZZZ)Landroid/util/StatsEvent;

    move-result-object v8

    move-object/from16 v9, p2

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public pullHealthHalLocked(ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthService:Lcom/android/server/health/HealthServiceWrapper;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapper;->getHealthInfo()Landroid/hardware/health/HealthInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/16 v1, 0x2723

    if-eq p1, v1, :cond_6

    const/16 v1, 0x2724

    if-eq p1, v1, :cond_5

    const/16 v1, 0x272e

    if-eq p1, v1, :cond_4

    const/16 v1, 0x273b

    if-eq p1, v1, :cond_3

    const/16 v1, 0x273d

    if-eq p1, v1, :cond_2

    return v0

    :cond_2
    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    goto :goto_0

    :cond_3
    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    goto :goto_0

    :cond_4
    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    goto :goto_0

    :cond_5
    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    goto :goto_0

    :cond_6
    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    :goto_0
    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0

    :catch_0
    return v0
.end method

.method public pullInstalledIncrementalPackagesLocked(ILjava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.incremental_delivery"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    array-length v4, v0

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    aget v6, v0, v5

    invoke-virtual {p0, v1, v6}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "StatsPullAtomService"

    const-string p2, "failed to pullInstalledIncrementalPackagesLocked"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public pullIonHeapSizeLocked(ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Landroid/os/Debug;->getIonHeapsSizeKb()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullKernelWakelockLocked(ILjava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/KernelWakelockReader;->readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/os/KernelWakelockStats;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget v4, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    iget v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    iget-wide v6, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    move v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;IIJ)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pullKeystoreAtoms(ILjava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIKeystoreMetricsService()Landroid/security/metrics/IKeystoreMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "StatsPullAtomService"

    if-nez v0, :cond_0

    const-string p0, "Keystore service is null"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-interface {v0, p1}, Landroid/security/metrics/IKeystoreMetrics;->pullMetrics(I)[Landroid/security/metrics/KeystoreAtom;

    move-result-object v0

    const/16 v5, 0x2777

    if-eq p1, v5, :cond_2

    const/16 v5, 0x2778

    if-eq p1, v5, :cond_1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported keystore atom: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :pswitch_0
    :try_start_1
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreCrashStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :pswitch_1
    :try_start_2
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseRkpErrorStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :pswitch_2
    :try_start_3
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyOperationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :pswitch_3
    :try_start_4
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyOperationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :pswitch_4
    :try_start_5
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreAtomWithOverflow([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :pswitch_5
    :try_start_6
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyCreationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :pswitch_6
    :try_start_7
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyCreationWithAuthInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :pswitch_7
    :try_start_8
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyCreationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_1
    :try_start_9
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseRkpPoolStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_2
    :try_start_a
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreStorageStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_b
    const-string p1, "pulling keystore metrics failed"

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catch_1
    move-exception p0

    :try_start_c
    const-string p1, "Disconnected from keystore service. Cannot pull."

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x2786
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

.method public pullLooperStatsLocked(ILjava/util/List;)I
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const-class v0, Lcom/android/internal/os/LooperStats;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/LooperStats;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->getEntries()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->reset()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/LooperStats$ExportedEntry;

    iget v3, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->workSourceUid:I

    iget-object v4, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    iget-wide v7, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageCount:J

    iget-wide v9, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->exceptionCount:J

    iget-wide v11, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedMessageCount:J

    iget-wide v13, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->totalLatencyMicros:J

    move/from16 p0, v3

    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->cpuUsageMicros:J

    move-wide v15, v2

    iget-boolean v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->isInteractive:Z

    move/from16 v17, v2

    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxCpuUsageMicros:J

    move-wide/from16 v18, v2

    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxLatencyMicros:J

    move-wide/from16 v20, v2

    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedDelayMessageCount:J

    move-wide/from16 v22, v2

    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->delayMillis:J

    move-wide/from16 v24, v2

    iget-wide v1, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxDelayMillis:J

    move-wide/from16 v26, v1

    move/from16 v2, p1

    move/from16 v3, p0

    invoke-static/range {v2 .. v27}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJZJJJJJ)Landroid/util/StatsEvent;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public pullMediaCapabilitiesStats(ILjava/util/List;)I
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "StatsPullAtomService"

    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.software.leanback"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    return v3

    :cond_0
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getSurroundFormats()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    move-result-object v8

    invoke-virtual {v0}, Landroid/media/AudioManager;->getReportedSurroundFormats()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    move-result-object v9

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    move-result-object v10

    invoke-virtual {v1, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    move-result-object v11

    invoke-virtual {v0}, Landroid/media/AudioManager;->getEncodedSurroundMode()I

    move-result v12

    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/hardware/display/DisplayManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object v6

    new-array v7, v5, [B

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes([I)[B

    move-result-object v6

    move-object v13, v6

    goto :goto_1

    :cond_4
    move-object v13, v7

    :goto_1
    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes([Landroid/view/Display$Mode;)[B

    move-result-object v14

    invoke-static {}, Landroid/media/MediaDrm;->getSupportedCryptoSchemes()Ljava/util/List;

    move-result-object v0

    const/4 v6, -0x1

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v7, Landroid/media/MediaDrm;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    invoke-direct {v7, v0}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v7}, Landroid/media/MediaDrm;->getConnectedHdcpLevel()I

    move-result v0
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_5
    move v0, v6

    :goto_2
    move v15, v0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v7, "pulling hdcp level failed."

    invoke-static {v2, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v15, v6

    :goto_3
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getMatchContentFrameRateUserPreference()I

    move-result v16

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getUserDisabledHdrTypes()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes([I)[B

    move-result-object v17

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getGlobalUserPreferredDisplayMode()Landroid/view/Display$Mode;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    move/from16 v18, v4

    goto :goto_4

    :cond_6
    move/from16 v18, v6

    :goto_4
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    move/from16 v19, v4

    goto :goto_5

    :cond_7
    move/from16 v19, v6

    :goto_5
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    move/from16 v20, v0

    :try_start_1
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "minimal_post_processing_allowed"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    move v3, v5

    :goto_7
    move/from16 v21, v3

    goto :goto_8

    :catch_1
    move-exception v0

    const-string v1, "unable to find setting for MINIMAL_POST_PROCESSING_ALLOWED."

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move/from16 v21, v5

    :goto_8
    move/from16 v7, p1

    invoke-static/range {v7 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B[B[B[BI[B[BII[BIIFZ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v5
.end method

.method public pullModemActivityInfoLocked(ILjava/util/List;)I
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "StatsPullAtomService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    new-instance v6, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda8;

    invoke-direct {v6}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda8;-><init>()V

    new-instance v7, Lcom/android/server/stats/pull/StatsPullAtomService$3;

    invoke-direct {v7, v0, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$3;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x7d0

    const/4 v7, 0x1

    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :cond_0
    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v9

    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v11

    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v13

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v15

    invoke-virtual {v0, v7}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v17

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v19

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v21

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v23

    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis()J

    move-result-wide v25

    const-wide/16 v27, -0x1

    move/from16 v8, p1

    invoke-static/range {v8 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJJJJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v4, p2

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception reading modem stats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeout or interrupt reading modem stats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public pullNotificationRemoteViewsLocked(ILjava/util/List;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const-string v0, "Getting notistats failed: "

    const-string v1, "StatsPullAtomService"

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getINotificationManagerService()Landroid/app/INotificationManager;

    move-result-object v2

    const/4 p0, 0x1

    if-nez v2, :cond_0

    return p0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    sget-object v10, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v10}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v7, v10

    invoke-interface/range {v2 .. v7}, Landroid/app/INotificationManager;->pullStats(JIZLjava/util/List;)J

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, p0, :cond_1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_1
    :try_start_1
    invoke-static {p1, p2, v10}, Lcom/android/server/stats/pull/StatsPullAtomService;->unpackStreamedData(ILjava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catch_1
    move-exception p1

    :try_start_3
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catch_2
    move-exception p1

    :try_start_4
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final pullNumBiometricsEnrolledLocked(IILjava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "android.hardware.biometrics.face"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/face/FaceManager;

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    if-nez v1, :cond_2

    return v0

    :cond_2
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    if-nez v2, :cond_3

    return v0

    :cond_3
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    if-ne p1, v0, :cond_5

    invoke-virtual {v1, v6}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_2

    :cond_5
    if-ne p1, v3, :cond_6

    invoke-virtual {v2, v6}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    :goto_2
    invoke-static {p2, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(III)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final pullPendingIntentsPerPackage(ILjava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getPendingIntentStats()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntentStats;

    iget v1, v0, Landroid/app/PendingIntentStats;->uid:I

    iget v2, v0, Landroid/app/PendingIntentStats;->count:I

    iget v0, v0, Landroid/app/PendingIntentStats;->sizeKb:I

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIII)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pullPowerProfileLocked(ILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    new-instance p0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/os/PowerProfile;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final pullProcStatsLocked(IILjava/util/List;)I
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v8, p1

    const-string v9, "_"

    const-string v10, "/"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIProcessStatsService()Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v1

    const/4 v11, 0x1

    if-nez v1, :cond_0

    return v11

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->readProcStatsHighWaterMark(I)J

    move-result-wide v14

    const/4 v7, 0x5

    new-array v6, v7, [Landroid/util/proto/ProtoOutputStream;

    const/4 v5, 0x0

    move v2, v5

    :goto_0
    if-ge v2, v7, :cond_1

    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v3}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    aput-object v3, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v4, v5}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-wide v2, v14

    move-object/from16 v18, v4

    move/from16 v4, p1

    move/from16 v19, v5

    move/from16 v5, v16

    move-object v11, v6

    move-object/from16 v6, v17

    move-wide/from16 v20, v12

    move v12, v7

    move-object/from16 v7, v18

    :try_start_1
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/app/procstats/IProcessStats;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    move-result-wide v1

    const-wide/32 v3, 0xe666

    move-object/from16 v5, v18

    invoke-virtual {v5, v11, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats;->dumpAggregatedProtoForStatsd([Landroid/util/proto/ProtoOutputStream;J)V

    move/from16 v5, v19

    :goto_1
    if-ge v5, v12, :cond_3

    aget-object v3, v11, v5

    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_2

    move/from16 v4, p2

    invoke-static {v4, v3, v5}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[BI)Landroid/util/StatsEvent;

    move-result-object v3

    move-object/from16 v6, p3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move/from16 v4, p2

    move-object/from16 v6, p3

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v19

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-wide/from16 v20, v12

    goto :goto_4

    :catch_1
    move-exception v0

    move-wide/from16 v20, v12

    :goto_3
    :try_start_2
    const-string v1, "StatsPullAtomService"

    const-string v2, "Getting procstats failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x1

    return v1

    :catchall_1
    move-exception v0

    :goto_4
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public pullProcessCpuTimeLocked(ILjava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v2

    iget v4, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget-object v5, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-wide v6, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    iget-wide v8, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    move v3, p1

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JJ)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public pullProcessDmabufMemory(ILjava/util/List;)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/os/KernelAllocationStats;->getDmabufAllocations()[Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget v6, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->uid:I

    iget-object v7, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->processName:Ljava/lang/String;

    iget v8, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->oomScore:I

    iget v9, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedSizeKb:I

    iget v10, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedBuffersCount:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->surfaceFlingerSizeKb:I

    iget v14, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->surfaceFlingerCount:I

    move/from16 v5, p1

    invoke-static/range {v5 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IIIIIII)Landroid/util/StatsEvent;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public pullProcessMemoryHighWaterMarkLocked(ILjava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, 0x400

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProcessMemoryState;

    iget v4, v1, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v4}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget v6, v1, Landroid/app/ProcessMemoryState;->uid:I

    iget-object v7, v1, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    iget v10, v4, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    int-to-long v4, v10

    mul-long v8, v4, v2

    move v5, p1

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JI)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->getProcessCmdlines()Landroid/util/SparseArray;

    move-result-object v0

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;-><init>(Landroid/util/SparseArray;)V

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, p0, :cond_3

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    iget v7, v5, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget v11, v5, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    int-to-long v5, v11

    mul-long v9, v5, v2

    move v6, p1

    invoke-static/range {v6 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JI)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "sys.rss_hwm_reset.on"

    const-string p1, "1"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public pullProcessMemorySnapshot(ILjava/util/List;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p2

    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/os/KernelAllocationStats;->getGpuAllocations()[Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;

    move-result-object v2

    new-instance v3, Landroid/util/SparseIntArray;

    array-length v4, v2

    invoke-direct {v3, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v2, v6

    iget v8, v7, Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;->pid:I

    iget v7, v7, Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;->gpuMemoryKb:I

    invoke-virtual {v3, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ProcessMemoryState;

    iget v6, v4, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v6}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget v8, v4, Landroid/app/ProcessMemoryState;->uid:I

    iget-object v9, v4, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    iget v10, v4, Landroid/app/ProcessMemoryState;->pid:I

    iget v11, v4, Landroid/app/ProcessMemoryState;->oomScore:I

    iget v12, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    iget v13, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    iget v14, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    add-int v15, v13, v14

    invoke-virtual {v3, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v16

    iget-boolean v4, v4, Landroid/app/ProcessMemoryState;->hasForegroundServices:Z

    move/from16 v7, p1

    move/from16 v17, v4

    invoke-static/range {v7 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IIIIIIIZ)Landroid/util/StatsEvent;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->getProcessCmdlines()Landroid/util/SparseArray;

    move-result-object v2

    new-instance v4, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda8;

    invoke-direct {v4, v2}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda8;-><init>(Landroid/util/SparseArray;)V

    invoke-interface {v1, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v4, v5

    :goto_2
    if-ge v4, v1, :cond_4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    iget v7, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/16 v10, -0x3e9

    iget v11, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    iget v12, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    iget v13, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    add-int v14, v12, v13

    invoke-virtual {v3, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    const/16 v16, 0x0

    move/from16 v6, p1

    invoke-static/range {v6 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IIIIIIIZ)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return v5
.end method

.method public pullProcessMemoryStateLocked(ILjava/util/List;)I
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProcessMemoryState;

    iget v2, v1, Landroid/app/ProcessMemoryState;->uid:I

    iget v3, v1, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v2, v3}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v4, v1, Landroid/app/ProcessMemoryState;->uid:I

    iget-object v5, v1, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    iget v6, v1, Landroid/app/ProcessMemoryState;->oomScore:I

    iget-wide v7, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    iget-wide v9, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    iget-wide v11, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    iget-wide v13, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    iget-wide v1, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    move-wide v15, v1

    const-wide/16 v17, -0x1

    const-wide/16 v19, -0x1

    const/16 v21, -0x1

    move/from16 v3, p1

    invoke-static/range {v3 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IJJJJJJJI)Landroid/util/StatsEvent;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public pullProcessSystemIonHeapSizeLocked(ILjava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/stats/pull/IonMemoryUtil;->readProcessSystemIonHeapSizesFromDebugfs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;

    iget v1, v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    invoke-static {v1}, Landroid/os/Process;->getUidForPid(I)I

    move-result v3

    iget v1, v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    invoke-static {v1}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v1, v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->totalSizeInBytes:J

    const-wide/16 v5, 0x400

    div-long/2addr v1, v5

    long-to-int v1, v1

    iget v7, v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->count:I

    iget-wide v8, v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->maxSizeInBytes:J

    div-long/2addr v8, v5

    long-to-int v0, v8

    move v2, p1

    move v5, v1

    move v6, v7

    move v7, v0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;III)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pullRoleHolderLocked(ILjava/util/List;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-class v3, Lcom/android/role/RoleManagerLocal;

    invoke-static {v3}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/role/RoleManagerLocal;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-interface {v3, v7}, Lcom/android/role/RoleManagerLocal;->getRolesAndHolders(I)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, v11, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v12
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v12, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v12, v11, v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;

    move-result-object v11

    invoke-interface {p2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    const-string p0, "StatsPullAtomService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Role holder "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public pullRuntimeAppOpAccessMessageLocked(ILjava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const-string v0, "StatsPullAtomService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Landroid/app/AppOpsManager;->collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;

    move-result-object p0

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string p0, "No runtime appop access message collected"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/RuntimeAppOpAccessMessage;->getUid()I

    move-result v5

    invoke-virtual {p0}, Landroid/app/RuntimeAppOpAccessMessage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p0}, Landroid/app/RuntimeAppOpAccessMessage;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/RuntimeAppOpAccessMessage;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v8, v4

    invoke-virtual {p0}, Landroid/app/RuntimeAppOpAccessMessage;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/app/RuntimeAppOpAccessMessage;->getSamplingStrategy()I

    move-result v10

    invoke-virtual {p0}, Landroid/app/RuntimeAppOpAccessMessage;->getOp()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v11

    move v4, p1

    invoke-static/range {v4 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception p0

    :try_start_2
    const-string p1, "Could not read runtime appop access message"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p0, 0x1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public pullSettingsStatsLocked(ILjava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, v5}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logGlobalSettings(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logSystemSettings(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logSecureSettings(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "StatsPullAtomService"

    const-string p2, "failed to pullSettingsStats"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public pullSystemElapsedRealtimeLocked(ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullSystemIonHeapSizeLocked(ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/stats/pull/IonMemoryUtil;->readSystemIonHeapSizeFromDebugfs()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullSystemMemory(ILjava/util/List;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/stats/pull/SystemMemoryUtil;->getMetrics()Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;

    move-result-object p0

    iget v1, p0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->unreclaimableSlabKb:I

    iget v2, p0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->vmallocUsedKb:I

    iget v3, p0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->pageTablesKb:I

    iget v4, p0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->kernelStackKb:I

    iget v5, p0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->totalIonKb:I

    iget v6, p0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->unaccountedKb:I

    iget v7, p0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->gpuTotalUsageKb:I

    iget v8, p0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->gpuPrivateAllocationsKb:I

    iget v9, p0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->dmaBufTotalExportedKb:I

    iget v10, p0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->shmemKb:I

    move v0, p1

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIIIIII)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullSystemServerPinnerStats(ILjava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const-class p0, Lcom/android/server/PinnerService;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/PinnerService;

    invoke-virtual {p0}, Lcom/android/server/PinnerService;->dumpDataForStatsd()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService$PinnedFileStats;

    iget v1, v0, Lcom/android/server/PinnerService$PinnedFileStats;->uid:I

    iget-object v2, v0, Lcom/android/server/PinnerService$PinnedFileStats;->filename:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/PinnerService$PinnedFileStats;->sizeKb:I

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;I)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pullSystemUptimeLocked(ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullTemperatureLocked(ILjava/util/List;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-interface {p0}, Landroid/os/IThermalService;->getCurrentTemperatures()[Landroid/os/Temperature;

    move-result-object p0

    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, p0, v5

    invoke-virtual {v6}, Landroid/os/Temperature;->getType()I

    move-result v7

    invoke-virtual {v6}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/os/Temperature;->getValue()F

    move-result v9

    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v6}, Landroid/os/Temperature;->getStatus()I

    move-result v6

    invoke-static {p1, v7, v8, v9, v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p0, "StatsPullAtomService"

    const-string p1, "Disconnected from thermal service. Cannot pull temperatures."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public pullTimeZoneDataInfoLocked(ILjava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "StatsPullAtomService"

    const-string p2, "Getting tzdb version failed: "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public pullTimeZoneDetectorStateLocked(ILjava/util/List;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    const-class v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;->generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isTelephonyDetectionSupported()Z

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isGeoDetectionSupported()Z

    move-result v5

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getUserLocationEnabledSetting()Z

    move-result v6

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getAutoDetectionEnabledSetting()Z

    move-result v7

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getGeoDetectionEnabledSetting()Z

    move-result v8

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getDetectionMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertToMetricsDetectionMode(I)I

    move-result v9

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getDeviceTimeZoneIdOrdinal()I

    move-result v10

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getLatestManualSuggestion()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B

    move-result-object v11

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getLatestTelephonySuggestion()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B

    move-result-object v12

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getLatestGeolocationSuggestion()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B

    move-result-object v13

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isTelephonyTimeZoneFallbackSupported()Z

    move-result v14

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getDeviceTimeZoneId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isEnhancedMetricsCollectionEnabled()Z

    move-result v16

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getGeoDetectionRunInBackgroundEnabled()Z

    move-result v17

    move/from16 v3, p1

    invoke-static/range {v3 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IZZZZZII[B[B[BZLjava/lang/String;ZZ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v3, p2

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "StatsPullAtomService"

    const-string v4, "Getting time zone detection state failed: "

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public pullVmStat(ILjava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readVmStat()Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;->oomKillCount:I

    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pullWifiActivityInfoLocked(ILjava/util/List;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Landroid/os/SynchronousResultReceiver;

    const-string v5, "wifi"

    invoke-direct {v4, v5}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v6, Lcom/android/server/stats/pull/StatsPullAtomService$2;

    invoke-direct {v6, v0}, Lcom/android/server/stats/pull/StatsPullAtomService$2;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;

    invoke-direct {v0, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;-><init>(Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v5, v6, v0}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    invoke-static {v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/connectivity/WifiActivityEnergyInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getStackState()I

    move-result v7

    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v8

    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v10

    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v12

    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v14

    move/from16 v4, p1

    invoke-static/range {v4 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJIJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v4, p2

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v4, "StatsPullAtomService"

    const-string v5, "failed to getWifiActivityEnergyInfoAsync"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final readProcStatsHighWaterMark(I)J
    .locals 5

    const-string v0, "StatsPullAtomService"

    const-wide/16 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda19;

    invoke-direct {v3, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda19;-><init>(I)V

    invoke-virtual {p0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length p1, p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    array-length p1, p0

    const/4 v3, 0x1

    if-le p1, v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only 1 file expected for high water mark. Found "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :cond_2
    :goto_0
    return-wide v1

    :catch_0
    move-exception p0

    const-string p1, "Failed to parse file name."

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "Failed to get procstats high watermark file."

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-wide v1
.end method

.method public final registerAccessibilityFloatingMenuStats()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2790

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerAccessibilityShortcutStats()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x278f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerAppOps()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x274c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerAppSize()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerAppsOnExternalStorageInfo()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2749

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerAttributedAppOps()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x275b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBatteryCycleCount()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x273d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBatteryLevel()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x273b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBatteryVoltage()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBinderCallsStats()V
    .locals 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2726

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x5
        0x6
        0x8
        0xc
    .end array-data
.end method

.method public final registerBinderCallsStatsExceptions()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2727

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBluetoothActivityInfo()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2717

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBluetoothBytesTransfer()V
    .locals 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2716

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method public final registerBuildInformation()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x273c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBytesTransferByTagAndMetered()V
    .locals 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2763

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public final registerCategorySize()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCoolingDevice()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x274b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCpuActiveTime()V
    .locals 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2720

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCpuClusterTime()V
    .locals 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2721

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCpuCyclesPerThreadGroupCluster()V
    .locals 4

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2772

    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x4
    .end array-data
.end method

.method public final registerCpuCyclesPerUidCluster()V
    .locals 4

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getClusters()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/16 v0, 0x2770

    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public final registerCpuTimePerClusterFreq()V
    .locals 5

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x276f

    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    :cond_0
    return-void
.end method

.method public final registerCpuTimePerThreadFreq()V
    .locals 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2735

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    :array_0
    .array-data 4
        0x7
        0x9
        0xb
        0xd
        0xf
        0x11
        0x13
        0x15
    .end array-data
.end method

.method public final registerCpuTimePerUid()V
    .locals 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2719

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method public final registerCpuTimePerUidFreq()V
    .locals 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x271a

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDangerousPermissionState()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2742

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDangerousPermissionStateSampled()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2753

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDataUsageBytesTransfer()V
    .locals 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2762

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public final registerDebugElapsedClock()V
    .locals 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x273e

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public final registerDebugFailingElapsedClock()V
    .locals 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x273f

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public final registerDeviceCalculatedPowerUse()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2737

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDirectoryUsage()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDiskIO()V
    .locals 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2730

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data
.end method

.method public final registerDiskStats()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2729

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public registerEventListeners()V
    .locals 5

    const-string v0, "StatsPullAtomService"

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback-IA;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;

    invoke-direct {v1, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener-IA;)V

    invoke-interface {p0, v1}, Landroid/os/IThermalService;->registerThermalEventListener(Landroid/os/IThermalEventListener;)Z

    const-string p0, "register thermal listener successfully"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "failed to register thermal listener"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final registerExternalStorageInfo()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2745

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerFaceSettings()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x274a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerFullBatteryCapacity()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2724

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerInstalledIncrementalPackages()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2782

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerIonHeapSize()V
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/kernel/ion/total_heaps_kb"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2756

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v1, v0, v2, v3, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKernelWakelock()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2714

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreAtomWithOverflow()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2789

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreCrashStats()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x278d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreKeyCreationWithAuthInfo()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2787

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreKeyCreationWithGeneralInfo()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2786

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreKeyCreationWithPurposeModesInfo()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2788

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreKeyOperationWithGeneralInfo()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x278b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreKeyOperationWithPurposeAndModesInfo()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x278a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreStorageStats()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2777

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerLooperStats()V
    .locals 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2728

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method public final registerMediaCapabilitiesStats()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2792

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerMobileBytesTransfer()V
    .locals 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2712

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public final registerMobileBytesTransferBackground()V
    .locals 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2713

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public final registerModemActivityInfo()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x271c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerNotificationRemoteViews()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2752

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerNumFacesEnrolled()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2740

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerNumFingerprintsEnrolled()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerOemManagedBytesTransfer()V
    .locals 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2774

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method public final registerPendingIntentsPerPackagePuller()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27a7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerPinnerServiceStats()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27a6

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerPowerProfile()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2731

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcStats()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcStatsPkgProc()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2732

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessCpuTime()V
    .locals 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2733

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessDmabufMemory()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2779

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessMemoryHighWaterMark()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x273a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessMemorySnapshot()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2750

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessMemoryState()V
    .locals 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x271d

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method public final registerProcessSystemIonHeapSize()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x274d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public registerPullers()V
    .locals 2

    const-string v0, "StatsPullAtomService"

    const-string v1, "Registering pullers with statsd"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl-IA;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBluetoothBytesTransfer()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKernelWakelock()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerClusterFreq()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerUid()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuCyclesPerUidCluster()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerUidFreq()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuCyclesPerThreadGroupCluster()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuActiveTime()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuClusterTime()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerWifiActivityInfo()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerModemActivityInfo()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBluetoothActivityInfo()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemElapsedRealtime()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemUptime()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessMemoryState()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessMemoryHighWaterMark()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessMemorySnapshot()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemIonHeapSize()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerIonHeapSize()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessSystemIonHeapSize()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemMemory()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessDmabufMemory()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerVmStat()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerTemperature()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCoolingDevice()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBinderCallsStats()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBinderCallsStatsExceptions()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerLooperStats()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDiskStats()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDirectoryUsage()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAppSize()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCategorySize()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerNumFingerprintsEnrolled()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerNumFacesEnrolled()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcStats()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcStatsPkgProc()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDiskIO()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPowerProfile()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessCpuTime()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerThreadFreq()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDeviceCalculatedPowerUse()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDebugElapsedClock()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDebugFailingElapsedClock()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBuildInformation()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRoleHolder()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerTimeZoneDataInfo()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerTimeZoneDetectorState()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerExternalStorageInfo()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAppsOnExternalStorageInfo()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerFaceSettings()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAppOps()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAttributedAppOps()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRuntimeAppOpAccessMessage()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerNotificationRemoteViews()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDangerousPermissionState()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDangerousPermissionStateSampled()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryLevel()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRemainingBatteryCapacity()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerFullBatteryCapacity()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryVoltage()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryCycleCount()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSettingsStats()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerInstalledIncrementalPackages()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreStorageStats()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRkpPoolStats()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyCreationWithGeneralInfo()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyCreationWithAuthInfo()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyCreationWithPurposeModesInfo()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreAtomWithOverflow()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyOperationWithPurposeAndModesInfo()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyOperationWithGeneralInfo()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRkpErrorStats()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreCrashStats()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAccessibilityShortcutStats()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAccessibilityFloatingMenuStats()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMediaCapabilitiesStats()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPendingIntentsPerPackagePuller()V

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPinnerServiceStats()V

    return-void
.end method

.method public final registerRemainingBatteryCapacity()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2723

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerRkpErrorStats()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x278c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerRkpPoolStats()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2778

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerRoleHolder()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2741

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerRuntimeAppOpAccessMessage()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2755

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerSettingsStats()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2760

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerSystemElapsedRealtime()V
    .locals 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setTimeoutMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x271e

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerSystemIonHeapSize()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2748

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerSystemMemory()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x276c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerSystemUptime()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x271f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerTemperature()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2725

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerTimeZoneDataInfo()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2744

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerTimeZoneDetectorState()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2776

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerVmStat()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2785

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerWifiActivityInfo()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x271b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerWifiBytesTransfer()V
    .locals 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2710

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public final registerWifiBytesTransferBackground()V
    .locals 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2711

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public final sampleAppOps(Ljava/util/List;Ljava/util/List;II)I
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;",
            ">;II)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v14, p4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v15, :cond_2

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;

    iget v4, v10, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mHash:I

    if-lt v4, v14, :cond_0

    move/from16 v22, v13

    move/from16 v23, v15

    goto/16 :goto_2

    :cond_0
    const/16 v4, 0x275b

    const/16 v11, 0x9

    if-ne v3, v4, :cond_1

    iget v4, v10, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mUid:I

    iget-object v5, v10, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    iget-object v6, v10, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mAttributionTag:Ljava/lang/String;

    iget-object v7, v10, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v7

    iget-object v8, v10, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v8, v11}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessCount(I)J

    move-result-wide v8

    iget-object v12, v10, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v12, v11}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessCount(I)J

    move-result-wide v17

    move-object v12, v10

    move v3, v11

    move-wide/from16 v10, v17

    move/from16 v17, v13

    iget-object v13, v12, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v13, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundRejectCount(I)J

    move-result-wide v18

    move-object v3, v12

    move/from16 v22, v17

    const/4 v2, 0x0

    move-wide/from16 v12, v18

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    const/16 v1, 0x9

    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundRejectCount(I)J

    move-result-wide v16

    move v2, v14

    move/from16 v23, v15

    move-wide/from16 v14, v16

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessDuration(I)J

    move-result-wide v16

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessDuration(I)J

    move-result-wide v18

    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v20

    move/from16 v1, p3

    move/from16 v3, p3

    move/from16 v21, p4

    invoke-static/range {v3 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;IJJJJJJZI)Landroid/util/StatsEvent;

    move-result-object v2

    goto :goto_1

    :cond_1
    move v1, v3

    move-object v3, v10

    move/from16 v22, v13

    move/from16 v23, v15

    iget v4, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mUid:I

    iget-object v5, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v6

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    const/16 v15, 0x9

    invoke-virtual {v2, v15}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessCount(I)J

    move-result-wide v7

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v2, v15}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessCount(I)J

    move-result-wide v9

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v2, v15}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundRejectCount(I)J

    move-result-wide v11

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v2, v15}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundRejectCount(I)J

    move-result-wide v13

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v2, v15}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessDuration(I)J

    move-result-wide v16

    move v2, v15

    move-wide/from16 v15, v16

    iget-object v1, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v1, v2}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessDuration(I)J

    move-result-wide v17

    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v19

    move/from16 v3, p3

    invoke-static/range {v3 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IJJJJJJZ)Landroid/util/StatsEvent;

    move-result-object v2

    :goto_1
    move-object/from16 v1, p1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v13, v22, 0x1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v14, p4

    move/from16 v15, v23

    goto/16 :goto_0

    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x320

    if-le v2, v3, :cond_3

    move/from16 v2, p4

    mul-int/lit16 v3, v2, 0x1f4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v3, v4

    add-int/lit8 v2, v2, -0x1

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->sampleAppOps(Ljava/util/List;Ljava/util/List;II)I

    move-result v0

    return v0

    :cond_3
    move/from16 v2, p4

    return v2
.end method

.method public final sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Ljava/util/function/Function<",
            "Landroid/net/NetworkStats$Entry;",
            "Landroid/net/NetworkStats$Entry;",
            ">;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    new-instance p0, Landroid/net/NetworkStats;

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    invoke-virtual {p1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats$Entry;

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats$Entry;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final sliceNetworkStatsByFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda18;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final sliceNetworkStatsByUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final sliceNetworkStatsByUidTagAndMetered(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final toBytes(Ljava/util/List;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    new-instance p0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-wide v1, 0x20e00000001L

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public final toBytes([I)[B
    .locals 5

    new-instance p0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    const-wide v3, 0x20e00000001L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public final toBytes([Landroid/view/Display$Mode;)[B
    .locals 8

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->createModeGroups([Landroid/view/Display$Mode;)Ljava/util/Map;

    move-result-object p0

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    new-instance v4, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v4}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v5, 0x10500000001L

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000002L

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10200000003L

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v5, 0x10500000004L

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x20b00000001L

    invoke-virtual {v4}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method
