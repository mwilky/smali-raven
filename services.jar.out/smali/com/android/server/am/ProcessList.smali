.class public final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;,
        Lcom/android/server/am/ProcessList$ProcStateMemTracker;,
        Lcom/android/server/am/ProcessList$KillHandler;,
        Lcom/android/server/am/ProcessList$MyProcessMap;,
        Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;,
        Lcom/android/server/am/ProcessList$IsolatedUidRange;
    }
.end annotation


# static fields
.field static final ANDROID_APP_DATA_ISOLATION_ENABLED_PROPERTY:Ljava/lang/String; = "persist.zygote.app_data_isolation"

.field static final ANDROID_VOLD_APP_DATA_ISOLATION_ENABLED_PROPERTY:Ljava/lang/String; = "persist.sys.vold_app_data_isolation_enabled"

.field private static final APP_DATA_DIRECTORY_ISOLATION:J = 0x89450c5L

.field static final BACKUP_APP_ADJ:I = 0x12c

.field static final CACHED_APP_IMPORTANCE_LEVELS:I = 0x5

.field static final CACHED_APP_LMK_FIRST_ADJ:I = 0x3b6

.field static final CACHED_APP_MAX_ADJ:I = 0x3e7

.field static final CACHED_APP_MIN_ADJ:I = 0x384

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field private static final GWP_ASAN:J = 0x8159f9eL

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x190

.field static final HOME_APP_ADJ:I = 0x258

.field static final INVALID_ADJ:I = -0x2710

.field private static final LMKD_RECONNECT_DELAY_MS:J = 0x3e8L

.field static final LMK_ASYNC_EVENT_KILL:I = 0x0

.field static final LMK_ASYNC_EVENT_STAT:I = 0x1

.field static final LMK_GETKILLCNT:B = 0x4t

.field static final LMK_KILL_OCCURRED:B = 0x8t

.field static final LMK_PROCKILL:B = 0x6t

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCPURGE:B = 0x3t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_STATE_CHANGED:B = 0x9t

.field static final LMK_SUBSCRIBE:B = 0x5t

.field static final LMK_TARGET:B = 0x0t

.field static final LMK_UPDATE_PROPS:B = 0x7t

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field private static final MAX_ZYGOTE_UNSOLICITED_MESSAGE_SIZE:I = 0x10

.field static final MIN_CACHED_APPS:I = 0x2

.field static final NATIVE_ADJ:I = -0x3e8

.field private static final NATIVE_HEAP_POINTER_TAGGING:J = 0x81774caL

.field private static final NATIVE_HEAP_ZERO_INIT:J = 0xa9ca600L

.field private static final NATIVE_MEMTAG_ASYNC:J = 0x817bb2cL

.field private static final NATIVE_MEMTAG_SYNC:J = 0xa937ebaL

.field static final NETWORK_STATE_BLOCK:I = 0x1

.field static final NETWORK_STATE_NO_CHANGE:I = 0x0

.field static final NETWORK_STATE_UNBLOCK:I = 0x2

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field static final PERCEPTIBLE_LOW_APP_ADJ:I = 0xfa

.field static final PERCEPTIBLE_MEDIUM_APP_ADJ:I = 0xe1

.field static final PERCEPTIBLE_RECENT_FOREGROUND_APP_ADJ:I = 0x32

.field static final PERSISTENT_PROC_ADJ:I = -0x320

.field static final PERSISTENT_SERVICE_ADJ:I = -0x2bc

.field static final PREVIOUS_APP_ADJ:I = 0x2bc

.field static final PROC_KILL_TIMEOUT:I = 0x7d0

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_NUM:I = 0x5

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field private static final PROPERTY_USE_APP_IMAGE_STARTUP_CACHE:Ljava/lang/String; = "persist.device_config.runtime_native.use_app_image_startup_cache"

.field public static final PSS_ALL_INTERVAL:I = 0x124f80

.field private static final PSS_FIRST_ASLEEP_BACKGROUND_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_ASLEEP_CACHED_INTERVAL:I = 0xea60

.field private static final PSS_FIRST_ASLEEP_PERSISTENT_INTERVAL:I = 0xea60

.field private static final PSS_FIRST_ASLEEP_TOP_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_PERSISTENT_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x36ee80

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_PERSISTENT_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x493e0

.field private static final PSS_SAME_TOP_INTERVAL:I = 0xea60

.field private static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field private static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field private static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field private static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field static final SCHED_GROUP_BACKGROUND:I = 0x0

.field static final SCHED_GROUP_DEFAULT:I = 0x2

.field static final SCHED_GROUP_RESTRICTED:I = 0x1

.field public static final SCHED_GROUP_TOP_APP:I = 0x3

.field static final SCHED_GROUP_TOP_APP_BOUND:I = 0x4

.field static final SERVICE_ADJ:I = 0x1f4

.field static final SERVICE_B_ADJ:I = 0x320

.field static final SYSTEM_ADJ:I = -0x384

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TAG_PROCESS_OBSERVERS:Ljava/lang/String; = "ActivityManager"

.field static final TRIM_CRITICAL_THRESHOLD:I = 0x3

.field static final TRIM_LOW_THRESHOLD:I = 0x5

.field static final UNKNOWN_ADJ:I = 0x3e9

.field private static final UNSOL_ZYGOTE_MSG_SOCKET_PATH:Ljava/lang/String; = "/data/system/unsolzygotesocket"

.field static final VISIBLE_APP_ADJ:I = 0x64

.field static final VISIBLE_APP_LAYER_MAX:I = 0x63

.field private static final sFirstAsleepPssTimes:[J

.field private static final sFirstAwakePssTimes:[J

.field static sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

.field static sKillThread:Lcom/android/server/ServiceThread;

.field private static sLmkdConnection:Lcom/android/server/am/LmkdConnection;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAsleepPssTimes:[J

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstPssTimes:[J

.field private static final sTestSamePssTimes:[J


# instance fields
.field private mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

.field mActiveUids:Lcom/android/server/am/ActiveUids;

.field private mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppDataIsolationEnabled:Z

.field final mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

.field mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

.field final mAppZygoteProcesses:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/AppZygote;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final mAppZygotes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/os/AppZygote;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailProcessChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedRestoreLevel:J

.field final mDyingProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

.field private mHaveDisplaySize:Z

.field mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

.field final mIsolatedProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLruProcessActivityStart:I

.field private mLruProcessServiceStart:I

.field private final mLruProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLruSeq:I

.field private final mOomAdj:[I

.field private mOomLevelsSet:Z

.field private final mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeLow:[I

.field private final mPendingProcessChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingStarts:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private mProcStartSeqCounter:J

.field mProcStateSeqCounter:J

.field private final mProcessChangeLock:Ljava/lang/Object;

.field private final mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

.field private final mProcessObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IProcessObserver;",
            ">;"
        }
    .end annotation
.end field

.field final mRemovedProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field mService:Lcom/android/server/am/ActivityManagerService;

.field final mStringBuilder:Ljava/lang/StringBuilder;

.field private mSystemServerSocketForZygote:Landroid/net/LocalSocket;

.field private final mTotalMemMb:J

.field private mVoldAppDataIsolationEnabled:Z

.field private final mZygoteSigChldMessage:[I

.field private final mZygoteUnsolicitedMessage:[B


# direct methods
.method public static synthetic $r8$lambda$eEVoHjWPClUsVDRm3xBMVJVcgcw(Lcom/android/server/am/ProcessList;Ljava/io/FileDescriptor;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessList;->handleZygoteMessages(Ljava/io/FileDescriptor;I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    sput-object v0, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    new-array v0, v0, [J

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x1
        0x2
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_1
    .array-data 8
        0x7530
        0x2710
        0x4e20
        0x4e20
        0x4e20
    .end array-data

    :array_2
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_3
    .array-data 8
        0xea60
        0x4e20
        0x7530
        0x7530
        0xea60
    .end array-data

    :array_4
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_5
    .array-data 8
        0xbb8
        0xbb8
        0x1388
        0x1388
        0x1388
    .end array-data

    :array_6
    .array-data 8
        0x3a98
        0x2710
        0x2710
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    new-array v3, v1, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    array-length v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v2}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {v2}, Lcom/android/server/am/AppExitInfoTracker;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    const v2, 0x182b8

    const v3, 0x1869f

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/am/ProcessList$IsolatedUidRange;-><init>(Lcom/android/server/am/ProcessList;II)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    const v2, 0x15f90

    const v3, 0x182b7

    const/16 v4, 0x64

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;-><init>(Lcom/android/server/am/ProcessList;III)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessList$MyProcessMap;-><init>(Lcom/android/server/am/ProcessList;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    invoke-direct {p0, v1, v1, v1}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x64
        0xc8
        0xfa
        0x384
        0x3b6
    .end array-data

    :array_1
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    :array_2
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method static synthetic access$000()Lcom/android/server/am/LmkdConnection;
    .locals 1

    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    return-object v0
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0xa

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v1, 0xa

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 3

    sub-int v0, p3, p4

    if-nez v0, :cond_2

    if-eqz p5, :cond_0

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const/16 v1, 0xa

    const-string v2, "+"

    if-ge v0, v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "+ "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private checkSlow(JLjava/lang/String;)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p1

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slow operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v3, v0, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms so far, now at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 1

    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method private computeGidsForProcess(II[IZ)[I
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v1

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getCacheAppGid(I)I

    move-result v2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v3

    array-length v4, p3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget v6, p3, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eq v2, v4, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eq v3, v4, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v4, 0x4

    const/4 v5, 0x3

    const/16 v6, 0x437

    if-eq p1, v4, :cond_4

    if-ne p1, v5, :cond_5

    :cond_4
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v7, 0x3f7

    invoke-static {v4, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x436

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 v4, 0x2

    if-ne p1, v4, :cond_6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-ne p1, v5, :cond_7

    const/16 v4, 0x3ff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz p4, :cond_8

    const/16 v4, 0x435

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [I

    const/4 v5, 0x0

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_9

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_9
    return-object v4
.end method

.method public static computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J
    .locals 9

    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    if-eqz p1, :cond_3

    iget v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    if-ge v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v2, v2, v0

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput v0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iput v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    if-eqz v2, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    move v4, v3

    iput v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    goto :goto_2

    :cond_2
    iget-object v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v4, v3, v0

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    iput v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    :goto_2
    goto :goto_3

    :cond_3
    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_3
    if-eqz p2, :cond_5

    if-eqz v2, :cond_4

    sget-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    goto :goto_4

    :cond_4
    sget-object v1, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    goto :goto_4

    :cond_5
    if-eqz v2, :cond_7

    if-eqz p3, :cond_6

    sget-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    goto :goto_4

    :cond_6
    sget-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_4

    :cond_7
    if-eqz p3, :cond_8

    sget-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    goto :goto_4

    :cond_8
    sget-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    :goto_4
    nop

    aget-wide v5, v1, v0

    long-to-float v3, v5

    mul-float/2addr v3, v4

    float-to-long v5, v3

    const-wide/32 v7, 0x36ee80

    cmp-long v3, v5, v7

    if-lez v3, :cond_9

    const-wide/32 v5, 0x36ee80

    :cond_9
    add-long v7, p4, v5

    return-wide v7
.end method

.method private createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AppZygote;

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v3

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget v5, v3, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    invoke-static {v4, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    iget v6, v3, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    invoke-static {v4, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    new-instance v7, Landroid/content/pm/ApplicationInfo;

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v7, v8}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/HostingRecord;->getDefiningPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput v1, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v8, Landroid/os/AppZygote;

    invoke-direct {v8, v7, v1, v5, v6}, Landroid/os/AppZygote;-><init>(Landroid/content/pm/ApplicationInfo;III)V

    move-object v2, v8

    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9, v1, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x47

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object v8, v3

    :goto_0
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private createSystemServerSocketForZygote()Landroid/net/LocalSocket;
    .locals 5

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/unsolzygotesocket"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/net/LocalSocket;-><init>(I)V

    move-object v2, v3

    new-instance v3, Landroid/net/LocalSocketAddress;

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v1, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->bind(Landroid/net/LocalSocketAddress;)V

    const/16 v3, 0x1b6

    invoke-static {v1, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    :goto_0
    const/4 v2, 0x0

    :cond_1
    :goto_1
    return-object v2
.end method

.method private decideGwpAsanLevel(Lcom/android/server/am/ProcessRecord;)I
    .locals 7

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x400000

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v0, v0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v0, v0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    if-ne v0, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v2

    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getGwpAsanMode()I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getGwpAsanMode()I

    move-result v0

    if-ne v0, v4, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    nop

    :goto_1
    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v5, 0x8159f9e

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    :cond_4
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_5

    const/high16 v0, 0x200000

    return v0

    :cond_5
    return v2
.end method

.method private decideTaggingLevel(Lcom/android/server/am/ProcessRecord;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessList;->getRequestedMemtagLevel(Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsMemoryTagging()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsTaggedPointers()Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x100000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x180000

    if-ne v0, v1, :cond_3

    :cond_1
    const/high16 v0, 0x80000

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method private dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const/16 v0, 0x20

    const/16 v1, 0xa

    if-ge p2, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v1

    invoke-static {p1, v1}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/io/PrintWriter;I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_1
    const-string v1, " act:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "activities"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->hasRecentTasks()Z

    move-result v2

    const-string/jumbo v3, "|"

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v2, "recents"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v1, :cond_5

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    const-string v2, "client"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_6
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v1, :cond_7

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    const-string/jumbo v2, "treated"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private static dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->sortProcessOomList(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    return v6

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    move-object/from16 v5, p1

    iget-wide v9, v5, Lcom/android/server/am/ActivityManagerService;->mLastPowerCheckUptime:J

    sub-long v9, v7, v9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    :goto_0
    if-ltz v11, :cond_f

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v15, v13, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v12

    invoke-static {v12, v6}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    const/16 v17, 0x3f

    move/from16 v6, v17

    goto :goto_1

    :pswitch_0
    const/16 v17, 0x42

    move/from16 v6, v17

    goto :goto_1

    :pswitch_1
    const/16 v17, 0x54

    move/from16 v6, v17

    goto :goto_1

    :pswitch_2
    const/16 v17, 0x46

    move/from16 v6, v17

    goto :goto_1

    :pswitch_3
    const/16 v17, 0x52

    move/from16 v6, v17

    goto :goto_1

    :pswitch_4
    const/16 v17, 0x62

    move/from16 v6, v17

    :goto_1
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v17

    if-eqz v17, :cond_1

    const/16 v17, 0x41

    move/from16 v2, v17

    goto :goto_2

    :cond_1
    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x53

    move/from16 v2, v17

    goto :goto_2

    :cond_2
    const/16 v17, 0x20

    move/from16 v2, v17

    :goto_2
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v5, p5

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " #"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    const/16 v16, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v4

    move-object/from16 v4, v17

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v5, v4

    const/16 v4, 0xa

    move-wide/from16 v19, v7

    const/16 v7, 0x20

    if-ge v5, v4, :cond_4

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    :cond_4
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, ": "

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(C)V

    const/16 v8, 0x2f

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v8

    invoke-static {v0, v8}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/io/PrintWriter;I)V

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    const-string v8, " t:"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v8

    if-ge v8, v4, :cond_5

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    :cond_5
    iget-object v8, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " ("

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v8, 0x29

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(C)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v8

    const-string v4, "    "

    if-nez v8, :cond_7

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v21, v2

    goto :goto_6

    :cond_7
    :goto_4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Landroid/content/ComponentName;

    move/from16 v21, v2

    const-string/jumbo v2, "{null}"

    if-eqz v8, :cond_8

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_5
    const-string v8, "<="

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_a

    const-string v2, "Proc{"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_6
    if-eqz p6, :cond_e

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "oom: max="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " curRaw="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " setRaw="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetRawAdj()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " cur="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " set="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "state: cur="

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " lastPss="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v22

    const-wide/16 v24, 0x400

    move-object v8, v3

    mul-long v2, v22, v24

    invoke-static {v0, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, " lastSwapPss="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getLastSwapPss()J

    move-result-wide v2

    mul-long v2, v2, v24

    invoke-static {v0, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, " lastCachedPss="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getLastCachedPss()J

    move-result-wide v2

    mul-long v2, v2, v24

    invoke-static {v0, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "cached="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " empty="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->isEmpty()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " hasAboveClient="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->hasAboveClient()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_d

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v22, 0x0

    cmp-long v17, v2, v22

    if-eqz v17, :cond_c

    cmp-long v17, v9, v22

    if-lez v17, :cond_c

    move/from16 v17, v5

    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v22

    move/from16 v24, v6

    sub-long v5, v22, v2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "run cpu over "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v9, v10, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v4, " used "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v5, v6, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v22, 0x64

    mul-long v22, v22, v5

    move-wide/from16 v25, v2

    div-long v1, v22, v9

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, "%)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    move-wide/from16 v25, v2

    move/from16 v17, v5

    move/from16 v24, v6

    goto :goto_7

    :cond_d
    move/from16 v17, v5

    move/from16 v24, v6

    goto :goto_7

    :cond_e
    move-object v8, v3

    move/from16 v17, v5

    move/from16 v24, v6

    :goto_7
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v5, p1

    move-object/from16 v2, p2

    move-object/from16 v1, p3

    move-object/from16 v3, p7

    move-object/from16 v4, v18

    move-wide/from16 v7, v19

    const/4 v6, 0x0

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private enableNativeHeapZeroInit(Lcom/android/server/am/ProcessRecord;)Z
    .locals 6

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v0, v0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v0, v0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    if-ne v0, v3, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getNativeHeapZeroInitialized()I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getNativeHeapZeroInitialized()I

    move-result v0

    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v4, 0xa9ca600

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    :cond_4
    return v2
.end method

.method public static final getLmkdKillCount(II)Ljava/lang/Integer;
    .locals 4

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    if-ne v3, v2, :cond_0

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .locals 3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getOrCreateIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    return-object v0
.end method

.method private getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManagerInternal;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    array-length v1, p2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    const-string v6, "ActivityManager"

    if-nez v5, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getCeDataInode(Ljava/lang/String;I)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " inode == 0 (b/152760674)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getRequestedMemtagLevel(Lcom/android/server/am/ProcessRecord;)I
    .locals 5

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v0, v0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v0, v0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessList;->memtagModeToZygoteMemtagLevel(I)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getMemtagMode()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getMemtagMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessList;->memtagModeToZygoteMemtagLevel(I)I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v1, 0xa937eba

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x180000

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v1, 0x817bb2c

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x100000

    return v0

    :cond_3
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->allowsNativeHeapPointerTagging()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v2, 0x81774ca

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v0, 0x80000

    return v0

    :cond_5
    return v1
.end method

.method private handleProcessStart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 19

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v12, p10

    iget-object v11, v15, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    const/4 v10, 0x0

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->getDyingPid()I

    move-result v0

    move v1, v0

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long/2addr v4, v2

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v6

    :try_start_0
    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    const/16 v0, 0x7d0

    invoke-static {v1, v0}, Landroid/os/Process;->waitForProcessDeath(II)V

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v2, v7

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    sub-long v7, v4, v2

    :try_start_2
    invoke-virtual {v11, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v0, v7, v4

    if-ltz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has died but its obituary delivery is slow."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has died, but its cleanup isn\'t done"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :goto_1
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_6
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " refused to die, but we need to launch "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    nop

    goto :goto_1

    :goto_2
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v0

    :cond_2
    :goto_3
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getSeInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v16
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object v10, v0

    move-object/from16 v18, v11

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-wide/from16 v14, v16

    :try_start_8
    invoke-direct/range {v1 .. v15}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    move-object v1, v0

    move-object/from16 v2, p0

    :try_start_9
    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v4, p1

    move-wide/from16 v5, p10

    :try_start_b
    invoke-direct {v2, v4, v1, v5, v6}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v4, p1

    move-wide/from16 v5, p10

    :goto_4
    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v2, p0

    :goto_5
    move-object/from16 v4, p1

    move-wide/from16 v5, p10

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v18, v11

    move-wide v5, v12

    move-object v2, v14

    move-object v4, v15

    :goto_6
    move-object v1, v0

    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string v0, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure starting process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    iget-object v8, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget v0, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v17, "start failure"

    move/from16 v16, v0

    invoke-virtual/range {v8 .. v17}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :goto_7
    return-void

    :catchall_4
    move-exception v0

    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    iget v1, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget v3, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v4, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z

    move-result v0

    return v0
.end method

.method private handleZygoteMessages(Ljava/io/FileDescriptor;I)I
    .locals 8

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    array-length v5, v3

    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    invoke-static {v6, v1, v3}, Lcom/android/internal/os/Zygote;->nativeParseSigChld([BI[I)I

    move-result v3

    if-ne v5, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    aget v4, v5, v4

    aget v6, v5, v2

    const/4 v7, 0x2

    aget v5, v5, v7

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/am/AppExitInfoTracker;->handleZygoteSigChld(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in reading unsolicited zygote message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v2
.end method

.method private isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    :cond_0
    const-string/jumbo v1, "killedByAm=true;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_3

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    :cond_2
    const-string v1, "No entry in mProcessNames;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    :cond_4
    const-string/jumbo v1, "pendingStart=false;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-lez v1, :cond_7

    if-nez v0, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz v2, :cond_9

    if-nez v0, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    :cond_8
    const-string v2, "Package is frozen;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    throw v1

    :catch_1
    move-exception v1

    :goto_0
    nop

    :goto_1
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_2

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method static killProcessGroup(II)V
    .locals 2

    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-eqz v0, :cond_0

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/am/ProcessList$KillHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$KillHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string v0, "ActivityManager"

    const-string v1, "Asked to kill process group before system bringup!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Landroid/os/Process;->killProcessGroup(II)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$updateApplicationInfoLOSP$1(ZLjava/util/List;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    invoke-interface {p1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x400

    iget v2, p2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-interface {v0, p4, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IApplicationThread;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "Failed to update %s ApplicationInfo for %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public static makeOomAdjString(IZ)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x384

    if-lt p0, v0, :cond_0

    const/16 v5, 0x384

    const-string v1, "cch"

    const-string v2, "cch"

    const-string v3, "   "

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x320

    if-lt p0, v0, :cond_1

    const/4 v3, 0x0

    const/16 v5, 0x320

    const-string/jumbo v1, "svcb  "

    const-string/jumbo v2, "svcb"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x2bc

    if-lt p0, v0, :cond_2

    const/4 v3, 0x0

    const/16 v5, 0x2bc

    const-string/jumbo v1, "prev  "

    const-string/jumbo v2, "prev"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v0, 0x258

    if-lt p0, v0, :cond_3

    const/4 v3, 0x0

    const/16 v5, 0x258

    const-string v1, "home  "

    const-string v2, "home"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_4

    const/4 v3, 0x0

    const/16 v5, 0x1f4

    const-string/jumbo v1, "svc   "

    const-string/jumbo v2, "svc"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v0, 0x190

    if-lt p0, v0, :cond_5

    const/4 v3, 0x0

    const/16 v5, 0x190

    const-string v1, "hvy   "

    const-string v2, "hvy"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_6

    const/4 v3, 0x0

    const/16 v5, 0x12c

    const-string v1, "bkup  "

    const-string v2, "bkup"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    const/16 v0, 0xfa

    if-lt p0, v0, :cond_7

    const/4 v3, 0x0

    const/16 v5, 0xfa

    const-string/jumbo v1, "prcl  "

    const-string/jumbo v2, "prcl"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    const/16 v0, 0xe1

    if-lt p0, v0, :cond_8

    const/4 v3, 0x0

    const/16 v5, 0xe1

    const-string/jumbo v1, "prcm  "

    const-string/jumbo v2, "prcm"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_9

    const/4 v3, 0x0

    const/16 v5, 0xc8

    const-string/jumbo v1, "prcp  "

    const-string/jumbo v2, "prcp"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const/16 v0, 0x64

    if-lt p0, v0, :cond_a

    const/16 v5, 0x64

    const-string/jumbo v1, "vis"

    const-string/jumbo v2, "vis"

    const-string v3, "   "

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    if-ltz p0, :cond_b

    const/4 v5, 0x0

    const-string v1, "fg "

    const-string v2, "fg "

    const-string v3, "   "

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const/16 v0, -0x2bc

    if-lt p0, v0, :cond_c

    const/4 v3, 0x0

    const/16 v5, -0x2bc

    const-string/jumbo v1, "psvc  "

    const-string/jumbo v2, "psvc"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    const/16 v0, -0x320

    if-lt p0, v0, :cond_d

    const/4 v3, 0x0

    const/16 v5, -0x320

    const-string/jumbo v1, "pers  "

    const-string/jumbo v2, "pers"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    const/16 v0, -0x384

    if-lt p0, v0, :cond_e

    const/4 v3, 0x0

    const/16 v5, -0x384

    const-string/jumbo v1, "sys   "

    const-string/jumbo v2, "sys"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    const/16 v0, -0x3e8

    if-lt p0, v0, :cond_f

    const/4 v3, 0x0

    const/16 v5, -0x3e8

    const-string/jumbo v1, "ntv  "

    const-string/jumbo v2, "ntv"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeProcStateProtoEnum(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x3e6

    return v0

    :pswitch_0
    const/16 v0, 0x3fb

    return v0

    :pswitch_1
    const/16 v0, 0x3fa

    return v0

    :pswitch_2
    const/16 v0, 0x3f9

    return v0

    :pswitch_3
    const/16 v0, 0x3f8

    return v0

    :pswitch_4
    const/16 v0, 0x3f7

    return v0

    :pswitch_5
    const/16 v0, 0x3f6

    return v0

    :pswitch_6
    const/16 v0, 0x3f5

    return v0

    :pswitch_7
    const/16 v0, 0x3f4

    return v0

    :pswitch_8
    const/16 v0, 0x3f3

    return v0

    :pswitch_9
    const/16 v0, 0x3f2

    return v0

    :pswitch_a
    const/16 v0, 0x3f1

    return v0

    :pswitch_b
    const/16 v0, 0x3f0

    return v0

    :pswitch_c
    const/16 v0, 0x3ef

    return v0

    :pswitch_d
    const/16 v0, 0x3ee

    return v0

    :pswitch_e
    const/16 v0, 0x3ed

    return v0

    :pswitch_f
    const/16 v0, 0x3ec

    return v0

    :pswitch_10
    const/16 v0, 0x3eb

    return v0

    :pswitch_11
    const/16 v0, 0x3fc

    return v0

    :pswitch_12
    const/16 v0, 0x3ea

    return v0

    :pswitch_13
    const/16 v0, 0x3e9

    return v0

    :pswitch_14
    const/16 v0, 0x3e8

    return v0

    :pswitch_15
    const/16 v0, 0x3e7

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private memtagModeToZygoteMemtagLevel(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/high16 v0, 0x180000

    return v0

    :pswitch_1
    const/high16 v0, 0x100000

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static minTimeFromStateChange(Z)J
    .locals 2

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x2710

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3a98

    :goto_0
    return-wide v0
.end method

.method private needsStorageDataIsolation(Landroid/os/storage/StorageManagerInternal;Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getMountMode()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v1}, Landroid/os/storage/StorageManagerInternal;->isExternalStorageService(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x20

    if-ltz p3, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const/16 v1, 0xa

    if-ge p3, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    :cond_0
    const/16 v1, -0xa

    if-le p3, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    :cond_1
    :goto_0
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    const/16 v2, 0x400

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->stringifySize(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static procStateToImportance(IILandroid/app/ActivityManager$RunningAppProcessInfo;I)I
    .locals 2

    invoke-static {p0, p3}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForTargetSdk(II)I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    iput p1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    :goto_0
    return v0
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 2

    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v0, p0

    aget v0, v0, p1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final remove(I)V
    .locals 2

    if-gtz p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    return-void
.end method

.method private removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AppZygote;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static setOomAdj(III)V
    .locals 9

    if-gtz p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v5, v3, v0

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SLOW OOM ADJ: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v3, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private static sortProcessOomList(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Landroid/util/Pair;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/server/am/ProcessList$2;

    invoke-direct {v1}, Lcom/android/server/am/ProcessList$2;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;
    .locals 40

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v15, p4

    move-wide/from16 v13, p13

    const-wide/16 v11, 0x40

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start proc: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string/jumbo v0, "startProcess: asking zygote to start proc"

    invoke-direct {v1, v13, v14, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->isTopApp()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    :cond_0
    const/4 v4, 0x0

    iget-boolean v5, v1, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, v1, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v7, 0x89450c5

    iget-object v9, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v6

    :goto_0
    iget-object v7, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v7

    move-object v10, v7

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v10, v7, v8}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    move-object v9, v7

    array-length v7, v9

    if-nez v7, :cond_3

    new-array v7, v3, [Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v8, v7, v6

    goto :goto_1

    :cond_3
    move-object v7, v9

    :goto_1
    move-object v8, v7

    invoke-direct {v1, v10, v8, v15}, Lcom/android/server/am/ProcessList;->getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez v7, :cond_4

    const/4 v5, 0x0

    :cond_4
    :try_start_1
    new-instance v11, Landroid/util/ArraySet;

    iget-object v12, v1, Lcom/android/server/am/ProcessList;->mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;

    invoke-direct {v11, v12}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v12, v11

    array-length v11, v8

    move v3, v6

    :goto_2
    if-ge v3, v11, :cond_5

    aget-object v19, v8, v3

    move-object/from16 v20, v19

    move-object/from16 v6, v20

    invoke-interface {v12, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    new-array v6, v3, [Ljava/lang/String;

    invoke-interface {v12, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v1, v10, v3, v15}, Lcom/android/server/am/ProcessList;->getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_6

    const/4 v5, 0x0

    move/from16 v26, v5

    goto :goto_3

    :cond_6
    move/from16 v26, v5

    :goto_3
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move v11, v5

    const-class v5, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManagerInternal;

    move-object v6, v5

    invoke-direct {v1, v6, v2}, Lcom/android/server/am/ProcessList;->needsStorageDataIsolation(Landroid/os/storage/StorageManagerInternal;Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v7, :cond_7

    invoke-virtual {v6, v11}, Landroid/os/storage/StorageManagerInternal;->isFuseMounted(I)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v4, 0x1

    move/from16 v27, v4

    goto :goto_4

    :cond_7
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/server/am/ProcessRecord;->setBindMountPending(Z)V

    const/4 v4, 0x0

    move/from16 v27, v4

    goto :goto_4

    :cond_8
    move/from16 v27, v4

    :goto_4
    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v4, :cond_9

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object/from16 v28, v3

    move-object/from16 v29, v7

    goto :goto_5

    :cond_9
    move-object/from16 v28, v3

    move-object/from16 v29, v7

    :goto_5
    const/16 v30, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesWebviewZygote()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const-string/jumbo v4, "seq="

    if-eqz v3, :cond_a

    :try_start_2
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v21, v3

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getDisabledCompatChanges()[J

    move-result-object v22

    move-object/from16 v23, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v18, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v25, v7

    move-object/from16 v24, v8

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v3

    move-object/from16 v3, p2

    move-object v4, v5

    move/from16 v5, p4

    move-object/from16 v8, v18

    move/from16 v6, p4

    move/from16 v18, v25

    move-object/from16 v7, p5

    move-object/from16 v32, v8

    move-object/from16 v31, v24

    move/from16 v8, p6

    move-object/from16 v33, v9

    move/from16 v9, p8

    move-object/from16 v34, v10

    move/from16 v10, v18

    move/from16 v35, v11

    const-wide/16 v36, 0x40

    move-object/from16 v11, p9

    move-object/from16 v38, v12

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, v19

    move-object/from16 v15, v20

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    :try_start_3
    invoke-static/range {v3 .. v18}, Landroid/os/Process;->startWebView(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v3

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    const-wide/16 v36, 0x40

    goto/16 :goto_9

    :cond_a
    move-object/from16 v32, v6

    move-object/from16 v31, v8

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move/from16 v35, v11

    move-object/from16 v38, v12

    const-wide/16 v36, 0x40

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {v1, v2}, Lcom/android/server/am/ProcessList;->createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;

    move-result-object v3

    move-object/from16 v39, v3

    invoke-virtual/range {v39 .. v39}, Landroid/os/AppZygote;->getProcess()Landroid/os/ChildZygoteProcess;

    move-result-object v3

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v20, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getDisabledCompatChanges()[J

    move-result-object v21

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v6, 0x1

    new-array v13, v6, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v13, v6

    move-object/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p8

    move-object/from16 v12, p9

    move-object/from16 v25, v13

    move-object/from16 v13, p10

    move-object/from16 v17, v14

    move-object/from16 v14, p11

    move/from16 v18, v20

    move/from16 v19, v0

    move-object/from16 v20, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v28

    invoke-virtual/range {v3 .. v25}, Landroid/os/ChildZygoteProcess;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v3

    goto :goto_6

    :cond_b
    const/16 v30, 0x1

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getDisabledCompatChanges()[J

    move-result-object v20

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v13, v4

    move-object/from16 v3, p2

    move-object v4, v5

    move/from16 v5, p4

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v24, v13

    move-object/from16 v13, p11

    move-object/from16 v16, v15

    move-object/from16 v15, p12

    move/from16 v17, p7

    move/from16 v18, v0

    move-object/from16 v19, v20

    move-object/from16 v20, v29

    move-object/from16 v21, v28

    move/from16 v22, v26

    move/from16 v23, v27

    invoke-static/range {v3 .. v24}, Landroid/os/Process;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v3

    :goto_6
    if-nez v30, :cond_c

    iget v4, v3, Landroid/os/Process$ProcessStartResult;->pid:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move/from16 v5, p4

    :try_start_4
    invoke-static {v5, v4}, Landroid/os/Process;->createProcessGroup(II)I

    move-result v4

    if-gez v4, :cond_d

    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create process group for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_c
    move/from16 v5, p4

    :cond_d
    :goto_7
    if-eqz v27, :cond_e

    invoke-interface/range {v29 .. v29}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v8, v32

    move/from16 v7, v35

    invoke-virtual {v8, v7, v4, v6}, Landroid/os/storage/StorageManagerInternal;->prepareStorageDirs(ILjava/util/Set;Ljava/lang/String;)Z

    goto :goto_8

    :cond_e
    move-object/from16 v8, v32

    move/from16 v7, v35

    :goto_8
    const-string/jumbo v4, "startProcess: returned from zygote!"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-wide/from16 v9, p13

    :try_start_5
    invoke-direct {v1, v9, v10, v4}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    nop

    invoke-static/range {v36 .. v37}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :catchall_1
    move-exception v0

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_a

    :catchall_3
    move-exception v0

    :goto_9
    move/from16 v5, p4

    :goto_a
    move-wide/from16 v9, p13

    goto :goto_b

    :catchall_4
    move-exception v0

    move-wide v9, v13

    move v5, v15

    const-wide/16 v36, 0x40

    goto :goto_b

    :catchall_5
    move-exception v0

    move-wide/from16 v36, v11

    move-wide v9, v13

    move v5, v15

    :goto_b
    invoke-static/range {v36 .. v37}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_d

    :cond_0
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v6

    move/from16 v7, p4

    move v8, v7

    move v7, v6

    move/from16 v6, p4

    :goto_0
    if-lt v8, v2, :cond_6

    iget-object v9, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v11

    invoke-virtual {v10}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v12

    iget-object v13, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v13, v4, :cond_4

    if-ne v11, v5, :cond_4

    if-ne v8, v6, :cond_1

    if-lt v12, v7, :cond_1

    add-int/lit8 v6, v6, -0x1

    move v7, v12

    goto :goto_3

    :cond_1
    const/4 v13, 0x0

    move/from16 v14, p2

    :goto_1
    if-le v14, v6, :cond_3

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v1

    if-gt v12, v1, :cond_2

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v14, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v13, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v1, p1

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v13, :cond_4

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v6, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, -0x1

    move v1, v12

    move v7, v1

    :cond_4
    :goto_3
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v1, p1

    goto :goto_0

    :cond_5
    move/from16 v6, p4

    :cond_6
    move v1, v6

    :goto_4
    if-lt v1, v2, :cond_14

    iget-object v7, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v9

    iget-object v10, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v10, v4, :cond_13

    if-ge v1, v6, :cond_e

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_5
    if-lt v1, v2, :cond_e

    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v13, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    if-ge v1, v2, :cond_7

    goto :goto_8

    :cond_7
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v7, v13

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v13

    if-nez v13, :cond_b

    invoke-virtual {v8}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v8}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v13

    if-eqz v13, :cond_d

    if-eqz v10, :cond_a

    if-eqz v11, :cond_e

    iget-object v13, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v11, v13, :cond_9

    goto :goto_8

    :cond_9
    if-eqz v12, :cond_e

    if-eq v12, v9, :cond_d

    goto :goto_8

    :cond_a
    const/4 v10, 0x1

    iget-object v13, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    move v12, v9

    goto :goto_7

    :cond_b
    :goto_6
    if-eqz v10, :cond_c

    goto :goto_8

    :cond_c
    const/4 v10, 0x1

    :cond_d
    :goto_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_e
    :goto_8
    add-int/lit8 v6, v6, -0x1

    if-lt v6, v2, :cond_10

    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v11, v4, :cond_f

    goto :goto_9

    :cond_f
    goto :goto_8

    :cond_10
    :goto_9
    if-lt v6, v2, :cond_12

    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v12

    :goto_a
    add-int/lit8 v6, v6, -0x1

    if-lt v6, v2, :cond_12

    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v14}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v14

    iget-object v15, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v15, v4, :cond_12

    if-eq v14, v12, :cond_11

    goto :goto_b

    :cond_11
    goto :goto_a

    :cond_12
    :goto_b
    move v1, v6

    goto :goto_c

    :cond_13
    add-int/lit8 v1, v1, -0x1

    :goto_c
    goto/16 :goto_4

    :cond_14
    return-void

    :cond_15
    :goto_d
    return-void
.end method

.method private updateLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I
    .locals 3

    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->setLastActivityTime(J)V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    return p4

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding dependent process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not on LRU list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    :cond_1
    if-lt v0, p4, :cond_2

    return p4

    :cond_2
    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-lt v0, v1, :cond_3

    if-ge p4, v1, :cond_3

    return p4

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-lez p4, :cond_4

    add-int/lit8 p4, p4, -0x1

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, p4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1, p5}, Lcom/android/server/am/ProcessRecord;->setLruSeq(I)V

    return p4
.end method

.method private updateLruProcessLSP(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)V
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const/4 v12, 0x1

    add-int/2addr v0, v12

    iput v0, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    iget-object v15, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v10, v13, v14}, Lcom/android/server/am/ProcessRecord;->setLastActivityTime(J)V

    if-eqz p3, :cond_1

    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_0

    return-void

    :cond_0
    goto :goto_0

    :cond_1
    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-lez v0, :cond_2

    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    sub-int/2addr v0, v12

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_2

    return-void

    :cond_2
    :goto_0
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ltz v8, :cond_3

    return-void

    :cond_3
    if-ltz v8, :cond_6

    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v8, v0, :cond_4

    sub-int/2addr v0, v12

    iput v0, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    :cond_4
    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v8, v0, :cond_5

    sub-int/2addr v0, v12

    iput v0, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    :cond_5
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6
    const/4 v0, -0x1

    if-eqz p3, :cond_b

    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v3

    if-nez v3, :cond_a

    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_a

    add-int/lit8 v3, v1, -0x1

    :goto_1
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-le v3, v4, :cond_8

    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_7

    goto :goto_2

    :cond_7
    nop

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_8
    :goto_2
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v3, -0x1

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v4, v5, :cond_9

    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    :cond_9
    move v0, v4

    invoke-direct {v9, v10, v3, v5, v4}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V

    goto :goto_3

    :cond_a
    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v12

    move v0, v3

    :goto_3
    goto :goto_4

    :cond_b
    if-eqz p4, :cond_c

    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    invoke-virtual {v1, v2, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/2addr v1, v12

    iput v1, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    goto :goto_4

    :cond_c
    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-eqz v11, :cond_e

    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    if-gt v2, v8, :cond_d

    move v2, v8

    :cond_d
    if-ltz v2, :cond_e

    if-le v1, v2, :cond_e

    move v1, v2

    :cond_e
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v1, -0x1

    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/2addr v3, v12

    iput v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    add-int/2addr v3, v12

    iput v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-le v1, v12, :cond_f

    sub-int/2addr v3, v12

    const/4 v4, 0x0

    add-int/lit8 v5, v1, -0x1

    invoke-direct {v9, v10, v3, v4, v5}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V

    :cond_f
    :goto_4
    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    invoke-virtual {v10, v1}, Lcom/android/server/am/ProcessRecord;->setLruSeq(I)V

    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v1

    sub-int/2addr v1, v12

    move/from16 v16, v0

    move v7, v1

    move/from16 v17, v2

    :goto_5
    if-ltz v7, :cond_15

    invoke-virtual {v15, v7}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v6

    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v0, :cond_14

    iget-boolean v0, v6, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v0, :cond_14

    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_14

    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_14

    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getLruSeq()I

    move-result v0

    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v0, v1, :cond_13

    iget v0, v6, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v1, 0x40000130    # 2.0000725f

    and-int/2addr v0, v1

    if-nez v0, :cond_13

    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v0

    if-eqz v0, :cond_11

    if-ltz v16, :cond_10

    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v18, "service connection"

    move-object/from16 v0, p0

    move-wide v2, v13

    move/from16 v4, v16

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    move/from16 v18, v7

    move-object/from16 v7, v19

    move/from16 v20, v8

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    move/from16 v16, v0

    goto :goto_6

    :cond_10
    move-object/from16 v19, v6

    move/from16 v18, v7

    move/from16 v20, v8

    goto :goto_6

    :cond_11
    move-object/from16 v19, v6

    move/from16 v18, v7

    move/from16 v20, v8

    move-object/from16 v8, v19

    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v6, "service connection"

    move-object/from16 v0, p0

    move-wide v2, v13

    move/from16 v4, v17

    move-object v7, v8

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    move/from16 v17, v0

    goto :goto_6

    :cond_12
    move-object/from16 v19, v6

    move/from16 v18, v7

    move/from16 v20, v8

    goto :goto_6

    :cond_13
    move-object/from16 v19, v6

    move/from16 v18, v7

    move/from16 v20, v8

    goto :goto_6

    :cond_14
    move-object/from16 v19, v6

    move/from16 v18, v7

    move/from16 v20, v8

    :goto_6
    add-int/lit8 v7, v18, -0x1

    move/from16 v8, v20

    goto/16 :goto_5

    :cond_15
    move/from16 v18, v7

    move/from16 v20, v8

    iget-object v8, v10, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v0

    sub-int/2addr v0, v12

    move v12, v0

    :goto_7
    if-ltz v12, :cond_17

    invoke-virtual {v8, v12}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v0

    iget-object v7, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_16

    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getLruSeq()I

    move-result v0

    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v0, v1, :cond_16

    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v1, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v6, "provider reference"

    move-object/from16 v0, p0

    move-wide v2, v13

    move/from16 v4, v17

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    move/from16 v17, v0

    goto :goto_8

    :cond_16
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    :goto_8
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v8, v19

    goto :goto_7

    :cond_17
    return-void
.end method

.method private updateOomLevels(IIZ)V
    .locals 16

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v3, 0x15e

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x43af0000    # 350.0f

    div-float/2addr v1, v2

    const v2, 0x5dc00

    const v3, 0xfa000

    mul-int v4, p1, p2

    int-to-float v4, v4

    int-to-float v5, v2

    sub-float/2addr v4, v5

    sub-int v5, v3, v2

    int-to-float v5, v5

    div-float/2addr v4, v5

    cmpl-float v5, v1, v4

    if-lez v5, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_2
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e007f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e007e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    sget-object v8, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v8, v8

    const/4 v10, 0x1

    if-lez v8, :cond_3

    move v8, v10

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    const/4 v11, 0x0

    :goto_3
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v12, v12

    const/4 v13, 0x4

    if-ge v11, v12, :cond_6

    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    aget v12, v12, v11

    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    aget v14, v14, v11

    if-eqz v8, :cond_5

    if-ne v11, v13, :cond_4

    mul-int/lit8 v13, v14, 0x3

    div-int/lit8 v14, v13, 0x2

    goto :goto_4

    :cond_4
    const/4 v15, 0x5

    if-ne v11, v15, :cond_5

    mul-int/lit8 v15, v14, 0x7

    div-int/lit8 v14, v15, 0x4

    :cond_5
    :goto_4
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v15, v12

    sub-int v9, v14, v12

    int-to-float v9, v9

    mul-float/2addr v9, v5

    add-float/2addr v15, v9

    float-to-int v9, v15

    aput v9, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    if-ltz v7, :cond_7

    const/4 v9, 0x0

    :goto_5
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v12, v11

    if-ge v9, v12, :cond_7

    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v14, v7

    aget v15, v12, v9

    int-to-float v15, v15

    mul-float/2addr v14, v15

    array-length v11, v11

    sub-int/2addr v11, v10

    aget v11, v12, v11

    int-to-float v11, v11

    div-float/2addr v14, v11

    float-to-int v11, v14

    aput v11, v12, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_7
    if-eqz v6, :cond_9

    const/4 v9, 0x0

    :goto_6
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v12, v11

    if-ge v9, v12, :cond_9

    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v14, v12, v9

    int-to-float v15, v6

    aget v13, v12, v9

    int-to-float v13, v13

    mul-float/2addr v15, v13

    array-length v11, v11

    sub-int/2addr v11, v10

    aget v11, v12, v11

    int-to-float v11, v11

    div-float/2addr v15, v11

    float-to-int v11, v15

    add-int/2addr v14, v11

    aput v14, v12, v9

    aget v11, v12, v9

    if-gez v11, :cond_8

    const/4 v11, 0x0

    aput v11, v12, v9

    :cond_8
    add-int/lit8 v9, v9, 0x1

    const/4 v13, 0x4

    goto :goto_6

    :cond_9
    const/16 v9, 0x3e7

    invoke-virtual {v0, v9}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v11

    const-wide/16 v13, 0x400

    div-long/2addr v11, v13

    const-wide/16 v13, 0x3

    div-long/2addr v11, v13

    iput-wide v11, v0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    mul-int v9, p1, p2

    const/4 v11, 0x4

    mul-int/2addr v9, v11

    mul-int/lit8 v9, v9, 0x3

    div-int/lit16 v9, v9, 0x400

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e0062

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10e0061

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    if-ltz v12, :cond_a

    move v9, v12

    :cond_a
    if-eqz v11, :cond_b

    add-int/2addr v9, v11

    if-gez v9, :cond_b

    const/4 v9, 0x0

    :cond_b
    if-eqz p3, :cond_d

    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v13, v13

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v10

    const/4 v14, 0x4

    mul-int/2addr v13, v14

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v14, 0x0

    :goto_7
    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v15, v15

    if-ge v14, v15, :cond_c

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v15, v15, v14

    mul-int/lit16 v15, v15, 0x400

    div-int/lit16 v15, v15, 0x1000

    invoke-virtual {v13, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v15, v15, v14

    invoke-virtual {v13, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_c
    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "sys.sysctl.extra_free_kbytes"

    invoke-static {v15, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v10, v0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    :cond_d
    return-void
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 3

    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    invoke-virtual {v0}, Lcom/android/server/am/LmkdConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$KillHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$KillHandler;->sendMessage(Landroid/os/Message;)Z

    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/LmkdConnection;->waitForConnection(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/LmkdConnection;->exchange(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method private static writeProcessOomListToProto(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/am/ActivityManagerService;Ljava/util/List;ZLjava/lang/String;)Z
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;Z",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    invoke-static {v1, v2}, Lcom/android/server/am/ProcessList;->sortProcessOomList(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    return v4

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_0
    if-ltz v6, :cond_d

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v10, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v13

    invoke-static {v13, v7}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object v13

    const-wide v14, 0x10800000001L

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v7

    invoke-virtual {v0, v14, v15, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v14, 0x1

    sub-int/2addr v7, v14

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int/2addr v7, v14

    const-wide v14, 0x10500000002L

    invoke-virtual {v0, v14, v15, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v14, 0x10900000003L

    invoke-virtual {v0, v14, v15, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v7, -0x1

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const/4 v7, 0x3

    goto :goto_1

    :pswitch_2
    const/4 v7, 0x2

    goto :goto_1

    :pswitch_3
    const/4 v7, 0x1

    goto :goto_1

    :pswitch_4
    const/4 v7, 0x0

    nop

    :goto_1
    const/4 v14, -0x1

    if-eq v7, v14, :cond_1

    const-wide v14, 0x10e00000004L

    invoke-virtual {v0, v14, v15, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_1
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v14

    if-eqz v14, :cond_2

    const-wide v14, 0x10800000005L

    const/4 v1, 0x1

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v10}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v14

    if-eqz v14, :cond_3

    const-wide v14, 0x10800000006L

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    :cond_3
    :goto_2
    nop

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v1

    const-wide v14, 0x10e00000007L

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v14, 0x10500000008L

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v1

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v14, 0x10b00000009L

    invoke-virtual {v8, v0, v14, v15}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v1

    const-wide v14, 0x1090000000aL

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    :cond_4
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/content/ComponentName;

    if-eqz v1, :cond_5

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    const-wide v14, 0x10b0000000bL

    invoke-virtual {v1, v0, v14, v15}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_3

    :cond_5
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    const-wide v14, 0x1090000000cL

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_4

    :cond_6
    :goto_3
    nop

    :goto_4
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_7

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    const-wide v14, 0x10b0000000dL

    invoke-virtual {v1, v0, v14, v15}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_5

    :cond_7
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    const-wide v14, 0x1090000000eL

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_6

    :cond_8
    :goto_5
    nop

    :cond_9
    :goto_6
    if-eqz p5, :cond_c

    const-wide v14, 0x10b0000000fL

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v14, 0x10500000001L

    move-object/from16 v24, v3

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v3

    const-wide v14, 0x10500000002L

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v14, 0x10500000003L

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetRawAdj()I

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v14, 0x10500000004L

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v14, 0x10500000005L

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v3

    const-wide v14, 0x10e00000007L

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v14, 0x10e00000008L

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v16

    const-wide/16 v18, 0x400

    mul-long v14, v16, v18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14, v15, v3}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const-wide v14, 0x10900000009L

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastSwapPss()J

    move-result-wide v14

    mul-long v14, v14, v18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14, v15, v3}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const-wide v14, 0x1090000000aL

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastCachedPss()J

    move-result-wide v16

    mul-long v14, v16, v18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14, v15, v3}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const-wide v14, 0x1090000000bL

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v14, 0x1080000000cL

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v14, 0x1080000000dL

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isEmpty()Z

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v14, 0x1080000000eL

    invoke-virtual {v10}, Lcom/android/server/am/ProcessServiceRecord;->hasAboveClient()Z

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    const/16 v14, 0xa

    if-lt v3, v14, :cond_b

    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v14

    move-object/from16 v3, p3

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    iget-wide v9, v3, Lcom/android/server/am/ActivityManagerService;->mLastPowerCheckUptime:J

    sub-long v9, v4, v9

    const-wide/16 v18, 0x0

    cmp-long v20, v14, v18

    if-eqz v20, :cond_a

    cmp-long v18, v9, v18

    if-lez v18, :cond_a

    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v18

    move-wide/from16 v20, v4

    sub-long v3, v18, v14

    move/from16 v18, v7

    move-object v5, v8

    const-wide v7, 0x10b0000000fL

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    move-object/from16 v19, v13

    move-wide/from16 v22, v14

    const-wide v13, 0x10300000001L

    invoke-virtual {v0, v13, v14, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v13, 0x10300000002L

    invoke-virtual {v0, v13, v14, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide/high16 v25, 0x4059000000000000L    # 100.0

    long-to-double v13, v3

    mul-double v13, v13, v25

    move-wide/from16 v25, v3

    long-to-double v3, v9

    div-double/2addr v13, v3

    const-wide v3, 0x10200000003L

    invoke-virtual {v0, v3, v4, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_7

    :cond_a
    move-wide/from16 v20, v4

    move/from16 v18, v7

    move-object v5, v8

    move-object/from16 v19, v13

    move-wide/from16 v22, v14

    goto :goto_7

    :cond_b
    move-wide/from16 v20, v4

    move/from16 v18, v7

    move-object v5, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v19, v13

    :goto_7
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_8

    :cond_c
    move-object/from16 v24, v3

    move-wide/from16 v20, v4

    move/from16 v18, v7

    move-object v5, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v19, v13

    :goto_8
    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    move-wide/from16 v4, v20

    move-object/from16 v3, v24

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Re-adding persistent process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Existing proc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " was killed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getKillTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms ago when adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Already have existing proc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " when adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    if-nez v2, :cond_5

    new-instance v3, Lcom/android/server/am/UidRecord;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v3, v4, v5}, Lcom/android/server/am/UidRecord;-><init>(ILcom/android/server/am/ActivityManagerService;)V

    move-object v2, v3

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempAllowlist:[I

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingTempAllowlist:Lcom/android/server/am/PendingTempAllowlists;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/PendingTempAllowlists;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_4

    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/am/UidRecord;->setCurAllowListed(Z)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/UidRecord;->setSetAllowListed(Z)V

    :cond_4
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->updateHasInternetPermission()V

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/EventLogTags;->writeAmUidRunning(I)V

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    :cond_5
    invoke-virtual {p1, v2}, Lcom/android/server/am/ProcessRecord;->setUidRecord(Lcom/android/server/am/UidRecord;)V

    invoke-virtual {v2, p1}, Lcom/android/server/am/UidRecord;->addProcess(Lcom/android/server/am/ProcessRecord;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/am/ProcessRecord;->setRenderThreadTid(I)V

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/server/am/ProcessList$MyProcessMap;->put(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    nop

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    :cond_0
    return-void
.end method

.method clearAllDnsCacheLOSP()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to clear dns cache for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method collectProcessesLOSP(IZ[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_5

    array-length v0, p3

    if-le v0, p1, :cond_5

    aget-object v0, p3, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    :try_start_0
    aget-object v2, p3, p1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-ne v4, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    aget-object v5, p3, p1

    invoke-virtual {v4, v5}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aget-object v5, p3, p1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_4

    const/4 v2, 0x0

    return-object v2

    :cond_4
    goto :goto_3

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_3
    return-object v0
.end method

.method dispatchProcessDied(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/IProcessObserver;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/app/IProcessObserver;->onProcessDied(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :cond_0
    :goto_1
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method dispatchProcessesChanged()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    array-length v2, v2

    if-ge v2, v1, :cond_0

    new-array v2, v1, [Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    move v2, v0

    :goto_0
    if-lez v2, :cond_4

    add-int/lit8 v2, v2, -0x1

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IProcessObserver;

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    aget-object v4, v4, v3

    iget v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    iget v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    iget v6, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    iget-boolean v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    invoke-interface {v0, v5, v6, v7}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V

    :cond_1
    iget v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    iget v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    iget v6, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    iget v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundServiceTypes:I

    invoke-interface {v0, v5, v6, v7}, Landroid/app/IProcessObserver;->onForegroundServicesChanged(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    nop

    :cond_3
    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_5

    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method doStopUidForIdleUidsLocked()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method dumpLruListHeaderLocked(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "  Process LRU list (sorted by oom_adj, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " total, non-act at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ", non-svc at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method dumpLruLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez p3, :cond_0

    const-string v1, "ACTIVITY MANAGER LRU PROCESSES (dumpsys activity lru)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  "

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    nop

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    const/4 v2, 0x0

    return v2

    :cond_3
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Raw LRU list (dumpsys activity lru):"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    :goto_1
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    :goto_2
    iget v4, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-lt v3, v4, :cond_6

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_4

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Activities:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_5
    invoke-direct {p0, p1, v3, v4, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    :goto_4
    iget v4, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-lt v3, v4, :cond_9

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_7

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_5

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Services:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_8
    invoke-direct {p0, p1, v3, v4, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_9
    const/4 v2, 0x1

    :goto_6
    if-ltz v3, :cond_c

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_a

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_7

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Other:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_b
    invoke-direct {p0, p1, v3, v4, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_c
    const/4 v4, 0x1

    return v4
.end method

.method dumpOomLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z[Ljava/lang/String;IZLjava/lang/String;Z)Z
    .locals 11

    move-object v1, p0

    move-object v10, p2

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_0
    const/4 v0, 0x1

    const-string v2, "  OOM levels:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "SYSTEM_ADJ"

    const/16 v3, -0x384

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v2, "PERSISTENT_PROC_ADJ"

    const/16 v3, -0x320

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v2, "PERSISTENT_SERVICE_ADJ"

    const/16 v3, -0x2bc

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v2, "FOREGROUND_APP_ADJ"

    const/4 v3, 0x0

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v2, "VISIBLE_APP_ADJ"

    const/16 v3, 0x64

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v2, "PERCEPTIBLE_APP_ADJ"

    const/16 v3, 0xc8

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v2, "PERCEPTIBLE_MEDIUM_APP_ADJ"

    const/16 v3, 0xe1

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v2, "PERCEPTIBLE_LOW_APP_ADJ"

    const/16 v3, 0xfa

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v2, "BACKUP_APP_ADJ"

    const/16 v3, 0x12c

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v2, "HEAVY_WEIGHT_APP_ADJ"

    const/16 v3, 0x190

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v2, "SERVICE_ADJ"

    const/16 v3, 0x1f4

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v2, "HOME_APP_ADJ"

    const/16 v3, 0x258

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v2, "PREVIOUS_APP_ADJ"

    const/16 v3, 0x2bc

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v2, "SERVICE_B_ADJ"

    const/16 v3, 0x320

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v2, "CACHED_APP_MIN_ADJ"

    const/16 v3, 0x384

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v2, "CACHED_APP_MAX_ADJ"

    const/16 v3, 0x3e7

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_1
    const-string v2, "  Process OOM control ("

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " total, non-act at "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v2

    iget v3, v1, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ", non-svc at "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v2

    iget v3, v1, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, "):"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    const-string v5, "    "

    const-string v6, "Proc"

    const-string v7, "PERS"

    const/4 v8, 0x1

    move-object v2, p2

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lcom/android/server/am/ProcessList;->dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    const/4 v0, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, p3

    :goto_0
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v4, p7

    :try_start_1
    invoke-virtual {v0, p2, v2, v4}, Lcom/android/server/am/AppProfiler;->dumpProcessesToGc(Ljava/io/PrintWriter;ZLjava/lang/String;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->dumpForOom(Ljava/io/PrintWriter;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    move-object/from16 v4, p7

    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method dumpProcessesLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;I)V
    .locals 14

    move-object v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "ACTIVITY MANAGER RUNNING PROCESSES (dumpsys activity processes)"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez p5, :cond_1

    if-eqz v11, :cond_0

    goto :goto_0

    :cond_0
    move v12, v1

    goto/16 :goto_5

    :cond_1
    :goto_0
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_7

    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    :goto_2
    if-ge v5, v6, :cond_6

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_2

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_4

    :cond_2
    if-nez v0, :cond_3

    const-string v8, "  All known processes:"

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "  *PERS*"

    goto :goto_3

    :cond_4
    const-string v8, "  *APP*"

    :goto_3
    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, " UID "

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " "

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v8, "    "

    invoke-virtual {v7, v10, v8}, Lcom/android/server/am/ProcessRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    move v12, v1

    :goto_5
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_b

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_6
    if-ge v2, v3, :cond_b

    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_8

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_7

    :cond_8
    if-nez v1, :cond_a

    if-eqz v0, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_9
    const-string v5, "  Isolated process list (sorted by uid):"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v0, 0x1

    :cond_a
    const-string v5, "    Isolated #"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_b
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v10, v11, v0}, Lcom/android/server/am/ActivityManagerService;->dumpActiveInstruments(Ljava/io/PrintWriter;Ljava/lang/String;Z)Z

    move-result v13

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move v3, v13

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->dumpOomLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z[Ljava/lang/String;IZLjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v13, 0x1

    :cond_c
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const-string v4, "UID states:"

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v3, p7

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveUids;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    or-int/2addr v13, v0

    :cond_d
    if-eqz p5, :cond_e

    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    const-string v4, "UID validation:"

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v3, p7

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UidObserverController;->dumpValidateUids(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    or-int/2addr v13, v0

    :cond_e
    if-eqz v13, :cond_f

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_f
    const-string v0, "  "

    invoke-virtual {p0, v10, v11, v0}, Lcom/android/server/am/ProcessList;->dumpLruLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v13, 0x1

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v0

    if-lez v0, :cond_12

    if-eqz v13, :cond_11

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_11
    invoke-virtual {p0, v10}, Lcom/android/server/am/ProcessList;->dumpLruListHeaderLocked(Ljava/io/PrintWriter;)V

    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    const/4 v6, 0x0

    const-string v3, "    "

    const-string v4, "Proc"

    const-string v5, "PERS"

    move-object/from16 v0, p2

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    const/4 v13, 0x1

    :cond_12
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move v6, v12

    move v7, v13

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->dumpOtherProcessesInfoLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;IIZ)V

    return-void
.end method

.method enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-object v2, v3

    iget v3, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gez v1, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-object v2, v4

    goto :goto_2

    :cond_2
    new-instance v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    invoke-direct {v4}, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;-><init>()V

    move-object v2, v4

    :goto_2
    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    iput p1, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    iput p2, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v5, 0x1f

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method fillInProcMemInfoLOSP(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isHeavyWeightProcess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/2addr v0, v1

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v0

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-static {v3, v2, p2, p3}, Lcom/android/server/am/ProcessList;->procStateToImportance(IILandroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v4

    iput v4, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getAdjTypeCode()I

    move-result v4

    iput v4, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    iput v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    if-ne p1, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v4

    iput-wide v4, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    return-void
.end method

.method findAppProcessLOSP(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v7, p1, :cond_0

    return-object v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find mystery application for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method getBlockStateForUid(Lcom/android/server/am/UidRecord;)I
    .locals 5

    nop

    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    nop

    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v4

    invoke-static {v3, v4}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v3

    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v2

    :goto_3
    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    return v2

    :cond_4
    if-eqz v3, :cond_5

    if-nez v0, :cond_5

    const/4 v1, 0x2

    return v1

    :cond_5
    return v1
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getIsolatedProcessesLocked(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p1, :cond_1

    if-nez v0, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method getLRURecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method getLruProcessServiceStartLOSP()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    return v0
.end method

.method getLruProcessesLOSP()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    return-object v0
.end method

.method getLruProcessesLSP()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    return-object v0
.end method

.method getLruSeqLOSP()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    return v0
.end method

.method getLruSizeLOSP()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getMemLevel(I)J
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v1, v1

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    return-wide v0
.end method

.method getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .locals 10

    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    const/16 v2, 0x384

    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    iget-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long v6, v2, v0

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    add-long/2addr v6, v0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    iput-boolean v4, p1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    iput-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    const/16 v4, 0x1f4

    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v6

    iput-wide v6, p1, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    const/16 v4, 0x64

    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v6

    iput-wide v6, p1, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    invoke-virtual {p0, v5}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    return-void
.end method

.method getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    return-object v0
.end method

.method getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .locals 5

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3, p2}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    return-object v4

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method getProcessesWithPendingBindMounts(I)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isBindMountPending()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Pending process is not started yet,retry later"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-object v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v2
.end method

.method getRunningAppProcessesLOSP(ZIZII)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZII)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_7

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    if-nez p1, :cond_0

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v5, p2, :cond_6

    :cond_0
    if-nez p3, :cond_1

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v5, p4, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v5

    if-nez v5, :cond_6

    new-instance v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    invoke-virtual {p0, v2, v5, p5}, Lcom/android/server/am/ProcessList;->fillInProcMemInfoLOSP(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    iput v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    nop

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSourceProcState()I

    move-result v6

    invoke-static {v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v6

    iput v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v6, :cond_3

    nop

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->getActivityPid()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    iput v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    :cond_3
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/content/ComponentName;

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    iput-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    :cond_4
    if-nez v0, :cond_5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    :cond_5
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method getUidProcStateLOSP(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x14

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    :goto_0
    return v1
.end method

.method getUidProcessCapabilityLOSP(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v1

    :goto_0
    return v1
.end method

.method getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    return-object v0
.end method

.method handleAllTrustStorageUpdateLOSP()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Landroid/app/IApplicationThread;->handleTrustStorageUpdate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to handle trust storage update for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method handleDyingAppDeathLocked(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got obituary of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->unlinkDeathRecipient()V

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->handlePrecedingAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method handlePrecedingAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    const/4 v0, 0x0

    monitor-exit p1

    return v0

    :cond_1
    monitor-exit p1

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-wide/from16 v13, p4

    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v13, v14}, Landroid/util/LongSparseArray;->remove(J)V

    invoke-direct {v1, v2, v13, v14}, Lcom/android/server/am/ProcessList;->isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;

    move-result-object v15

    const/4 v10, 0x0

    if-eqz v15, :cond_0

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " start not valid, killing pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    invoke-static/range {p2 .. p2}, Landroid/os/Process;->killProcessQuiet(I)V

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-static {v0, v3}, Landroid/os/Process;->killProcessGroup(II)I

    const/16 v0, 0xd

    invoke-virtual {v1, v2, v0, v0, v15}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    return v10

    :cond_0
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessStart(Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v3

    const-string/jumbo v0, "startProcess: done updating battery stats"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    const/16 v0, 0x753e

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v16, 0x1

    aput-object v4, v3, v16

    const/4 v4, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string v5, ""

    :goto_0
    aput-object v5, v3, v4

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getSeInfo()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move/from16 v9, p2

    invoke-interface/range {v3 .. v9}, Landroid/content/pm/IPackageManager;->logAppProcessStartIfNeeded(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3, v11}, Lcom/android/server/Watchdog;->processStarted(Ljava/lang/String;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v3

    const-string/jumbo v0, "startProcess: building log message"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    iget-object v9, v1, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "Start proc "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v0

    invoke-static {v9, v0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, " ["

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, " for "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, " "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "ActivityManager"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v3

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    invoke-virtual {v2, v12}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v3

    const-string/jumbo v0, "startProcess: starting to update pids map"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v4

    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    move-object v10, v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v10, :cond_4

    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_4

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleProcessStartedLocked process:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " startSeq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " belongs to another existing app:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " startSeq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v0, 0x1

    const/16 v17, 0x0

    move-object v4, v10

    move/from16 v5, p2

    move-object/from16 v18, v9

    move v9, v0

    move-object/from16 v19, v10

    move/from16 v10, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityManagerService;->cleanUpApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;IZZIZZ)Z

    goto :goto_2

    :cond_4
    move-object/from16 v18, v9

    move-object/from16 v19, v10

    :goto_2
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->addPidLocked(Lcom/android/server/am/ProcessRecord;)V

    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v3

    if-nez p6, :cond_6

    :try_start_3
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    if-eqz v12, :cond_5

    const-wide/32 v5, 0x124f80

    goto :goto_3

    :cond_5
    sget v5, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    int-to-long v5, v5

    :goto_3
    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_6
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v3

    const-string/jumbo v0, "startProcess: done updating pids map"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    return v16

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    move-object/from16 v18, v9

    :goto_4
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v18, v9

    :goto_5
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_5
.end method

.method haveBackgroundProcessLOSP()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerService;->mWaitForNetworkTimeoutMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_9

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$Injector;->isNetworkRestrictedForUid(I)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, v3, Lcom/android/server/am/UidRecord;->hasInternetPermission:Z

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v5

    if-ne v4, v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessList;->getBlockStateForUid(Lcom/android/server/am/UidRecord;)I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, v3, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-wide v6, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    iput-wide v6, v3, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    if-ne v4, v2, :cond_6

    if-nez v0, :cond_5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    :cond_5
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-boolean v6, v3, Lcom/android/server/am/UidRecord;->waitingForNetwork:Z

    if-eqz v6, :cond_7

    iget-object v6, v3, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    :cond_7
    :goto_1
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_8
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_9
    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_3
    if-ltz v1, :cond_d

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v4

    if-nez v4, :cond_c

    if-eqz v3, :cond_c

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object v4

    if-eqz v4, :cond_c

    :try_start_1
    iget-wide v5, v4, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-interface {v3, v5, v6}, Landroid/app/IApplicationThread;->setNetworkBlockSeq(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    nop

    :cond_c
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_d
    return-void
.end method

.method init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActiveUids;Lcom/android/server/compat/PlatformCompat;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iput-object p3, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    nop

    const-string/jumbo v0, "persist.zygote.app_data_isolation"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    const-string/jumbo v0, "persist.sys.vold_app_data_isolation_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SystemConfig;->getAppDataIsolationWhitelistedApps()Landroid/util/ArraySet;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v2, 0xa

    const-string v3, "ActivityManager:kill"

    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/am/ProcessList$KillHandler;

    sget-object v2, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/ProcessList$KillHandler;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    new-instance v0, Lcom/android/server/am/LmkdConnection;

    sget-object v2, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/ProcessList$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/ProcessList$1;-><init>(Lcom/android/server/am/ProcessList;)V

    invoke-direct {v0, v2, v3}, Lcom/android/server/am/LmkdConnection;-><init>(Landroid/os/MessageQueue;Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    invoke-direct {p0}, Lcom/android/server/am/ProcessList;->createSystemServerSocketForZygote()Landroid/net/LocalSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$KillHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessList;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->init(Lcom/android/server/am/ActivityManagerService;)V

    new-instance v0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    sget-object v1, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    :cond_1
    return-void
.end method

.method isInLruListLOSP(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method killAllBackgroundProcessesExceptLSP(II)V
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_1

    if-ltz p1, :cond_0

    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v7, p1, :cond_2

    :cond_0
    if-ltz p2, :cond_1

    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v7

    if-le v7, p2, :cond_2

    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0xd

    const/16 v10, 0xa

    const-string/jumbo v11, "kill all background except"

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->freeUidRangeLocked(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {p1}, Landroid/os/AppZygote;->stopZygote()V

    :cond_1
    return-void
.end method

.method killAppZygotesLocked(Ljava/lang/String;IIZ)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq p3, v5, :cond_0

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq v5, p3, :cond_0

    goto :goto_2

    :cond_0
    if-ltz p2, :cond_1

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v5, p2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/AppZygote;

    if-eqz p1, :cond_2

    invoke-virtual {v5}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AppZygote;

    invoke-virtual {p0, v2, p4}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method killPackageProcessesLSP(Ljava/lang/String;IIIIILjava/lang/String;)Z
    .locals 13

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/ProcessList;->killPackageProcessesLSP(Ljava/lang/String;IIIZZZZZIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method killPackageProcessesLSP(Ljava/lang/String;IIIZZZZZIILjava/lang/String;)Z
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    iget-object v0, v7, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v0, 0x0

    :goto_0
    const/4 v14, 0x1

    if-ge v0, v12, :cond_d

    iget-object v1, v7, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_c

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p8, :cond_0

    move/from16 v15, p4

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p7, :cond_1

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v15, p4

    goto/16 :goto_3

    :cond_1
    move/from16 v15, p4

    goto/16 :goto_3

    :cond_2
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v5

    move/from16 v15, p4

    if-ge v5, v15, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, -0x1

    if-nez v8, :cond_5

    if-eq v10, v5, :cond_4

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v5, v10, :cond_4

    goto :goto_3

    :cond_4
    if-ltz v9, :cond_9

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v5, v9, :cond_9

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v14

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_7

    iget v13, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    if-eq v13, v9, :cond_7

    goto :goto_3

    :cond_7
    if-eq v10, v5, :cond_8

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v5, v10, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    if-nez v6, :cond_9

    goto :goto_3

    :cond_9
    if-nez p7, :cond_a

    return v14

    :cond_a
    if-eqz p9, :cond_b

    invoke-virtual {v4, v14}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    :cond_b
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_c
    move/from16 v15, p4

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_d
    move/from16 v15, p4

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v0, 0x0

    move v6, v0

    :goto_4
    if-ge v6, v13, :cond_e

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p10

    move/from16 v5, p11

    move/from16 v16, v6

    move-object/from16 v6, p12

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    add-int/lit8 v6, v16, 0x1

    goto :goto_4

    :cond_e
    move/from16 v16, v6

    const/4 v0, 0x0

    invoke-virtual {v7, v8, v9, v10, v0}, Lcom/android/server/am/ProcessList;->killAppZygotesLocked(Ljava/lang/String;IIZ)V

    iget-object v1, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_processEnd"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    if-lez v13, :cond_f

    goto :goto_5

    :cond_f
    move v14, v0

    :goto_5
    return v14
.end method

.method killProcessesWhenImperceptible([ILjava/lang/String;I)V
    .locals 5

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    aget v4, p1, v1

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->enqueueLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    :cond_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$startProcessLocked$0$ProcessList(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lcom/android/server/am/ProcessList;->handleProcessStart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZILcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;
    .locals 8

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    :goto_0
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x1

    if-eqz p3, :cond_4

    if-nez p4, :cond_3

    invoke-direct {p0, p1, p5}, Lcom/android/server/am/ProcessList;->getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    return-object v5

    :cond_1
    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->allocateIsolatedUidLocked(I)I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_2

    return-object v5

    :cond_2
    goto :goto_1

    :cond_3
    move v2, p4

    :goto_1
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v4, v4, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2, v5}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->addIsolatedUid(II)V

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManagerInternal;->addIsolatedUid(II)V

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2, v5}, Lcom/android/server/am/BatteryStatsService;->addIsolatedUid(II)V

    const/16 v4, 0x2b

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4, v5, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    :cond_4
    new-instance v4, Lcom/android/server/am/ProcessRecord;

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v5, p1, v0, v2}, Lcom/android/server/am/ProcessRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v6, :cond_5

    if-nez v1, :cond_5

    iget v6, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v7, 0x9

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessRecord;->setPersistent(Z)V

    const/16 v3, -0x320

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setMaxAdj(I)V

    :cond_5
    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    const/16 v3, -0x2bc

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setMaxAdj(I)V

    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V

    return-object v4
.end method

.method noteAppKill(IIIILjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    iget v0, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, p2, :cond_0

    iget-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2, p2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(IIIILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    return-void
.end method

.method noteProcessDiedLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Watchdog;->processDied(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteProcessDied(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public onLmkdConnect(Ljava/io/OutputStream;)Z
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    iget-boolean v3, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    mul-int/2addr v3, v0

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v2, v0

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v3, v3, v0

    mul-int/lit16 v3, v3, 0x400

    div-int/lit16 v3, v3, 0x1000

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    :cond_1
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v2, v3

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {p1, v5, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return v4

    :catch_0
    move-exception v0

    return v1
.end method

.method onSystemReady()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v0}, Lcom/android/server/am/AppExitInfoTracker;->onSystemReady()V

    return-void
.end method

.method registerProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing persistent process that hasn\'t been killed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing process that hasn\'t been killed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcessQuiet(I)V

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    const/16 v3, 0xd

    const/16 v4, 0x10

    const-string v5, "hasn\'t been killed"

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    :cond_2
    :goto_0
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v0, v3, :cond_3

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    :cond_3
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v0, v3, :cond_4

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/am/ActivityManagerService;->removeOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;Z)V

    return-void
.end method

.method removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v9, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1, v8, v9}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x0

    if-eq v10, v7, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring remove of inactive process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v11

    if-lez v11, :cond_1

    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v11, v3, :cond_2

    :cond_1
    if-nez v11, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_2
    if-lez v11, :cond_3

    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v11, v7}, Lcom/android/server/am/ActivityManagerService;->removePidLocked(ILcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord;->setBindMountPending(Z)V

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x14

    invoke-virtual {v1, v3, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessFinish(Ljava/lang/String;I)V

    iget-boolean v1, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v3, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/BatteryStatsService;->removeIsolatedUid(II)V

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget v3, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManagerInternal;->removeIsolatedUid(I)V

    :cond_3
    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v3, :cond_5

    if-nez p2, :cond_4

    const/4 v1, 0x1

    move v12, v1

    move v13, v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    move v12, v1

    move v13, v2

    goto :goto_0

    :cond_5
    move v12, v1

    move v13, v2

    :goto_0
    const/4 v1, 0x1

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v6, p6

    invoke-virtual {v7, v6, v14, v15, v1}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move v3, v11

    move v4, v12

    move/from16 v5, p3

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;IZZZ)V

    if-eqz v12, :cond_6

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/am/ActivityManagerService;->addAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZLjava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    :cond_6
    move v2, v13

    goto :goto_2

    :cond_7
    move/from16 v14, p4

    move/from16 v15, p5

    goto :goto_1

    :cond_8
    move/from16 v14, p4

    move/from16 v15, p5

    :goto_1
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return v2
.end method

.method removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    return-object v0
.end method

.method removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    if-eqz p3, :cond_1

    if-ne v0, p3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->remove(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, v1}, Lcom/android/server/am/UidRecord;->removeProcess(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getNumOfProcs()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    invoke-static {p2}, Lcom/android/server/am/EventLogTags;->writeAmUidStopped(I)V

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v4, p2}, Lcom/android/server/am/ActiveUids;->remove(I)V

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFgsStartTempAllowList:Lcom/android/server/am/FgsTempAllowList;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/FgsTempAllowList;->removeUid(I)V

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-virtual {v4, p2, v5, v6}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/am/ProcessRecord;->setUidRecord(Lcom/android/server/am/UidRecord;)V

    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    invoke-virtual {v2, p2}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    if-eqz v1, :cond_5

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    if-eqz v2, :cond_5

    invoke-direct {p0, v1}, Lcom/android/server/am/ProcessList;->removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_5
    return-object v0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v3
.end method

.method scheduleDispatchProcessDiedLocked(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    if-lez p1, :cond_0

    iget v3, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method searchEachLruProcessesLOSP(ZLjava/util/function/Function;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/util/function/Function<",
            "Lcom/android/server/am/ProcessRecord;",
            "TR;>;)TR;"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method sendPackageBroadcastLocked(I[Ljava/lang/String;I)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v4, -0x1

    if-eq p3, v4, :cond_0

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p3, :cond_3

    :cond_0
    :try_start_0
    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_2

    if-nez v0, :cond_2

    aget-object v5, p2, v4

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    invoke-interface {v3, p1, p2}, Landroid/app/IApplicationThread;->dispatchPackageBroadcast(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/content/pm/IPackageManager;->notifyPackagesReplacedReceived([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    :cond_5
    :goto_3
    return-void
.end method

.method setAllHttpProxy()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v5, :cond_0

    if-eqz v3, :cond_0

    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    :try_start_1
    invoke-interface {v3}, Landroid/app/IApplicationThread;->updateHttpProxy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to update http proxy for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method setLruProcessServiceStartLSP(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    return-void
.end method

.method startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/server/am/ProcessRecord;
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    if-nez v9, :cond_1

    iget v0, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7, v0}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    const-string/jumbo v1, "startProcess: after getProcessRecord"

    invoke-direct {v6, v10, v11, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_0

    iget-object v1, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v7, v2}, Lcom/android/server/am/AppErrors;->isBadProcess(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v12

    :cond_0
    iget-object v1, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v7, v2}, Lcom/android/server/am/AppErrors;->resetProcessCrashTime(Ljava/lang/String;I)V

    iget-object v1, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v7, v2}, Lcom/android/server/am/AppErrors;->isBadProcess(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x7540

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v5, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    iget-object v5, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v1, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v7, v2}, Lcom/android/server/am/AppErrors;->clearBadProcess(Ljava/lang/String;I)V

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ProcessErrorStateRecord;->setBad(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    const/4 v1, 0x0

    const-string v13, "ActivityManager"

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    if-lez v2, :cond_7

    if-nez p3, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v3, v8, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v5, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    const-string/jumbo v2, "startProcess: done, added package to proc"

    invoke-direct {v6, v10, v11, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    return-object v0

    :cond_5
    const-string/jumbo v2, "startProcess: bad proc running, killing"

    invoke-direct {v6, v10, v11, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    const-string/jumbo v2, "startProcess: done killing old proc"

    invoke-direct {v6, v10, v11, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v2

    const-string v3, " is attached to a previous process"

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v1, v0

    const/4 v0, 0x0

    move-object v14, v0

    move-object v15, v1

    goto :goto_2

    :cond_7
    if-nez v9, :cond_a

    iget-object v2, v6, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget v3, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v7, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    iput-object v1, v0, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is attached to a previous process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getDyingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object v14, v0

    move-object v15, v1

    goto :goto_2

    :cond_a
    move-object v14, v0

    move-object v15, v1

    :goto_2
    if-nez v14, :cond_d

    const-string/jumbo v0, "startProcess: creating new process record"

    invoke-direct {v6, v10, v11, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZILcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v14

    if-nez v14, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed making new process record for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isolated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :cond_b
    iget-object v0, v14, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashHandler(Ljava/lang/Runnable;)V

    move-object/from16 v0, p11

    invoke-virtual {v14, v0}, Lcom/android/server/am/ProcessRecord;->setIsolatedEntryPoint(Ljava/lang/String;)V

    move-object/from16 v2, p12

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessRecord;->setIsolatedEntryPointArgs([Ljava/lang/String;)V

    if-eqz v15, :cond_c

    iput-object v15, v14, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    iput-object v14, v15, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    :cond_c
    const-string/jumbo v3, "startProcess: done creating new process record"

    invoke-direct {v6, v10, v11, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    goto :goto_3

    :cond_d
    move-object/from16 v0, p11

    move-object/from16 v2, p12

    move-object/from16 v1, p13

    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v4, v8, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v13, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v14, v3, v4, v5, v13}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    const-string/jumbo v3, "startProcess: added package to existing proc"

    invoke-direct {v6, v10, v11, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    :goto_3
    iget-object v3, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v3, :cond_f

    iget-object v3, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v8}, Lcom/android/server/am/ActivityManagerService;->isAllowedWhileBooting(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_f

    if-nez p7, :cond_f

    iget-object v3, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, v6, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const-string/jumbo v3, "startProcess: returning with proc on hold"

    invoke-direct {v6, v10, v11, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    return-object v14

    :cond_f
    const-string/jumbo v3, "startProcess: stepping in to startProcess"

    invoke-direct {v6, v10, v11, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    nop

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p10

    invoke-virtual {v6, v14, v3, v4, v5}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z

    move-result v13

    const-string/jumbo v12, "startProcess: done starting proc!"

    invoke-direct {v6, v10, v11, v12}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    if-eqz v13, :cond_10

    move-object v12, v14

    goto :goto_4

    :cond_10
    const/4 v12, 0x0

    :goto_4
    return-object v12
.end method

.method startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z

    return-void
.end method

.method startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 29

    move-object/from16 v14, p0

    move-object/from16 v15, p3

    const/4 v12, 0x1

    invoke-virtual {v15, v12}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    iget-object v1, v14, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    invoke-virtual {v15, v8}, Lcom/android/server/am/ProcessRecord;->setKilledByAm(Z)V

    invoke-virtual {v15, v8}, Lcom/android/server/am/ProcessRecord;->setKilled(Z)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startProcessLocked processName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with non-zero startSeq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startProcessLocked processName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with non-zero pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessRecord;->setDisabledCompatChanges([J)V

    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    if-eqz v0, :cond_2

    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/compat/PlatformCompat;->getDisabledChanges(Landroid/content/pm/ApplicationInfo;)[J

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessRecord;->setDisabledCompatChanges([J)V

    :cond_2
    iget-wide v0, v14, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, v14, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    move-wide v10, v0

    invoke-virtual {v15, v10, v11}, Lcom/android/server/am/ProcessRecord;->setStartSeq(J)V

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p1

    move-object/from16 v4, p9

    move-wide/from16 v5, p13

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessRecord;->setStartParams(ILcom/android/server/am/HostingRecord;Ljava/lang/String;J)V

    if-nez p12, :cond_4

    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/os/Zygote;->getWrapProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v8

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v12

    :goto_1
    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v10, v11, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz v0, :cond_5

    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda1;

    move-object v1, v13

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p10

    move-wide/from16 v16, v10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v18, v12

    move-object v14, v13

    move-wide/from16 v12, v16

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v18

    :cond_5
    move-wide/from16 v16, v10

    move/from16 v18, v12

    :try_start_1
    invoke-direct/range {p0 .. p14}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    iget v3, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v4, v0, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v2, p0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure starting process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v15, v8}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    move-object/from16 v2, p0

    iget-object v1, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    iget v4, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v28, "start failure"

    move-object/from16 v19, v1

    move-object/from16 v20, v3

    move/from16 v27, v4

    invoke-virtual/range {v19 .. v28}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_6

    move/from16 v12, v18

    goto :goto_3

    :cond_6
    move v12, v8

    :goto_3
    return v12

    :catchall_0
    move-exception v0

    move-object v2, v14

    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Z
    .locals 31

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    const/4 v11, 0x0

    if-lez v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v2, :cond_1

    const-string/jumbo v0, "startProcess: removing from pids map"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v0, v2, v15}, Lcom/android/server/am/ActivityManagerService;->removePidLocked(ILcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v15, v11}, Lcom/android/server/am/ProcessRecord;->setBindMountPending(Z)V

    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v15}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    const-string/jumbo v0, "startProcess: done removing from pids map"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    invoke-virtual {v15, v11}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v15, v2, v3}, Lcom/android/server/am/ProcessRecord;->setStartSeq(J)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->unlinkDeathRecipient()V

    invoke-virtual {v15, v11}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v0, "startProcess: starting to update cpu stats"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    const-string/jumbo v0, "startProcess: done updating cpu stats"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    :try_start_0
    iget v0, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_9

    move v9, v0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2, v9}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_9

    nop

    :try_start_2
    iget v0, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    move v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-boolean v0, v15, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_9

    if-nez v0, :cond_5

    const/4 v6, 0x0

    :try_start_3
    const-string/jumbo v0, "startProcess: getting gids from package manager"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/high16 v8, 0x10000000

    iget v10, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-interface {v0, v7, v8, v10}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;II)[I

    move-result-object v7

    move-object v6, v7

    const-class v7, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManagerInternal;

    iget-object v8, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/os/storage/StorageManagerInternal;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v8

    move v4, v8

    iget-object v8, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/os/storage/StorageManagerInternal;->hasExternalStorageAccess(ILjava/lang/String;)Z

    move-result v8

    move v5, v8

    const-string v8, "android.permission.INSTALL_PACKAGES"

    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v8, v10, v9}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v11, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is exempt from freezer"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v15, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezeExempt(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    nop

    :try_start_5
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    if-eqz v0, :cond_4

    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v0, v0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-eqz v0, :cond_4

    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v0, v0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v7, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v8, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v8, v8, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget v10, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v7, v8, v10}, Landroid/content/pm/PackageManagerInternal;->getPermissionGids(Ljava/lang/String;I)[I

    move-result-object v7

    if-eqz v7, :cond_3

    array-length v8, v7

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_3

    aget v11, v7, v10

    invoke-static {v6, v11}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v17

    move-object/from16 v6, v17

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    invoke-direct {v14, v4, v2, v6, v5}, Lcom/android/server/am/ProcessList;->computeGidsForProcess(II[IZ)[I

    move-result-object v0

    move-object v3, v0

    move-object v11, v3

    move v8, v4

    move/from16 v17, v5

    goto :goto_2

    :catch_0
    move-exception v0

    move/from16 v28, v11

    move-wide/from16 v29, v12

    goto/16 :goto_f

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    move-wide/from16 v29, v12

    const/16 v28, 0x0

    goto/16 :goto_f

    :cond_5
    move-object v11, v3

    move v8, v4

    move/from16 v17, v5

    :goto_2
    :try_start_6
    invoke-virtual {v15, v8}, Lcom/android/server/am/ProcessRecord;->setMountMode(I)V

    const-string/jumbo v0, "startProcess: building args"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isFactoryTestProcess(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    move/from16 v18, v2

    goto :goto_3

    :cond_6
    move/from16 v18, v2

    :goto_3
    const/4 v0, 0x0

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_7

    or-int/lit8 v0, v0, 0x1

    or-int/lit16 v0, v0, 0x100

    or-int/lit8 v0, v0, 0x2

    :try_start_7
    iget-object v2, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "art_verifier_verify_debuggable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_7

    or-int/lit16 v0, v0, 0x200

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": ART verification disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_7
    :try_start_8
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_6

    and-int/lit16 v2, v2, 0x4000

    if-nez v2, :cond_8

    :try_start_9
    iget-object v2, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mSafeMode:Z
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    if-eqz v2, :cond_9

    :cond_8
    or-int/lit8 v0, v0, 0x8

    :cond_9
    :try_start_a
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-eqz v2, :cond_a

    const v2, 0x8000

    or-int/2addr v0, v2

    :cond_a
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    :cond_b
    const-string v1, "1"

    const-string v2, "debug.checkjni"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    or-int/lit8 v0, v0, 0x2

    :cond_c
    const-string v1, "debug.generate-debug-info"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    const-string v1, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_6

    if-nez v1, :cond_d

    :try_start_b
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    if-eqz v1, :cond_e

    :cond_d
    or-int/lit8 v0, v0, 0x20

    :cond_e
    :try_start_c
    const-string v1, "dalvik.vm.minidebuginfo"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    const-string v1, "1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_6

    if-nez v1, :cond_f

    :try_start_d
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2

    if-eqz v1, :cond_10

    :cond_f
    or-int/lit16 v0, v0, 0x800

    :cond_10
    :try_start_e
    const-string v1, "1"

    const-string v2, "debug.jni.logging"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    or-int/lit8 v0, v0, 0x10

    :cond_11
    const-string v1, "1"

    const-string v2, "debug.assert"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    or-int/lit8 v0, v0, 0x4

    :cond_12
    const-string v1, "1"

    const-string v2, "debug.ignoreappsignalhandler"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    :cond_13
    iget-object v1, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_6

    if-eqz v1, :cond_14

    :try_start_f
    iget-object v1, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    or-int/lit8 v0, v0, 0x40

    or-int/lit8 v0, v0, 0x20

    or-int/lit16 v0, v0, 0x80

    iget-object v1, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2

    move v1, v0

    goto :goto_4

    :cond_14
    move v1, v0

    :goto_4
    :try_start_10
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isEmbeddedDexUsed()Z

    move-result v0

    if-eqz v0, :cond_15

    or-int/lit16 v1, v1, 0x400

    goto :goto_5

    :cond_15
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_6

    if-eqz v0, :cond_17

    :try_start_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    move-object v2, v0

    monitor-enter v2
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_2

    nop

    :try_start_12
    invoke-virtual {v2}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_16

    or-int/lit16 v1, v1, 0x400

    :cond_16
    monitor-exit v2

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    throw v0

    :cond_17
    :goto_5
    if-nez p4, :cond_19

    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->getPolicy()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->maybeUpdateHiddenApiEnforcementPolicy(I)V

    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v0

    sget v2, Lcom/android/internal/os/Zygote;->API_ENFORCEMENT_POLICY_SHIFT:I

    shl-int v2, v0, v2

    and-int/lit16 v4, v2, 0x3000

    if-ne v4, v2, :cond_18

    or-int/2addr v1, v2

    if-eqz p5, :cond_19

    const/high16 v4, 0x40000

    or-int/2addr v1, v4

    goto :goto_6

    :cond_18
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid API policy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_2

    :cond_19
    :goto_6
    :try_start_14
    const-string/jumbo v0, "persist.device_config.runtime_native.use_app_image_startup_cache"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_6

    if-nez v0, :cond_1a

    :try_start_15
    const-string v0, "false"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_2

    if-nez v0, :cond_1a

    const/high16 v0, 0x10000

    or-int/2addr v1, v0

    :cond_1a
    :try_start_16
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->decideGwpAsanLevel(Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    or-int/2addr v1, v0

    const/4 v2, 0x0

    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_6

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1c

    :try_start_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/wrap.sh"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_2

    move-object v10, v0

    :try_start_18
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/bin/logwrapper "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    move-object v2, v0

    :cond_1b
    :try_start_19
    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v0, v2

    goto :goto_7

    :catchall_1
    move-exception v0

    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    throw v0
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_2

    :cond_1c
    move-object v0, v2

    :goto_7
    if-eqz p6, :cond_1d

    move-object/from16 v2, p6

    goto :goto_8

    :cond_1d
    :try_start_1a
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_6

    :goto_8
    if-nez v2, :cond_1e

    :try_start_1b
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_4

    const/16 v16, 0x0

    :try_start_1c
    aget-object v3, v3, v16
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_3

    move-object v2, v3

    move-object v4, v2

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    const/16 v16, 0x0

    :goto_9
    move-wide/from16 v29, v12

    move/from16 v28, v16

    goto/16 :goto_f

    :cond_1e
    const/16 v16, 0x0

    move-object v4, v2

    :goto_a
    const/4 v2, 0x0

    :try_start_1d
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_5

    if-eqz v3, :cond_1f

    :try_start_1e
    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_3

    move-object v2, v3

    goto :goto_b

    :cond_1f
    move-object v3, v2

    :goto_b
    :try_start_1f
    invoke-virtual {v15, v11}, Lcom/android/server/am/ProcessRecord;->setGids([I)V

    invoke-virtual {v15, v4}, Lcom/android/server/am/ProcessRecord;->setRequiredAbi(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessRecord;->setInstructionSet(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_5

    if-eqz v3, :cond_20

    :try_start_20
    const-string v2, "arm64"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_3

    if-eqz v2, :cond_21

    :cond_20
    :try_start_21
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->decideTaggingLevel(Lcom/android/server/am/ProcessRecord;)I

    move-result v2

    or-int/2addr v1, v2

    :cond_21
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->enableNativeHeapZeroInit(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    move/from16 v19, v1

    goto :goto_c

    :cond_22
    move/from16 v19, v1

    :goto_c
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_5

    if-eqz v1, :cond_23

    :try_start_22
    const-string v1, "ActivityManager"

    const-string v2, "SELinux tag not defined"

    new-instance v10, Ljava/lang/IllegalStateException;

    move-object/from16 v20, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v4

    const-string v4, "SELinux tag not defined for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_3

    goto :goto_d

    :cond_23
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    :goto_d
    :try_start_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_5

    if-eqz v2, :cond_24

    :try_start_24
    const-string v2, ""
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_3

    goto :goto_e

    :cond_24
    :try_start_25
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    :goto_e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v1, "android.app.ActivityThread"

    move-object/from16 v22, v1

    const-string v3, "android.app.ActivityThread"
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    move-object/from16 v23, v5

    move/from16 v5, v18

    move-object/from16 v24, v6

    move-object v6, v11

    move-object/from16 v25, v7

    move/from16 v7, v19

    move/from16 v26, v8

    move/from16 v8, p3

    move/from16 v27, v9

    move/from16 v9, v26

    move/from16 v28, v16

    move-object/from16 v16, v11

    move-object/from16 v11, v21

    move-wide/from16 v29, v12

    move-object/from16 v12, v20

    move-object v13, v0

    move-wide/from16 v14, v29

    :try_start_26
    invoke-virtual/range {v1 .. v15}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    return v1

    :catch_5
    move-exception v0

    move-wide/from16 v29, v12

    move/from16 v28, v16

    goto :goto_f

    :catch_6
    move-exception v0

    move-wide/from16 v29, v12

    const/16 v28, 0x0

    goto :goto_f

    :catch_7
    move-exception v0

    move/from16 v27, v9

    move/from16 v28, v11

    move-wide/from16 v29, v12

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_8

    :catch_8
    move-exception v0

    goto :goto_f

    :catch_9
    move-exception v0

    move/from16 v28, v11

    move-wide/from16 v29, v12

    :goto_f
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure starting process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v1, p0

    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v13, "start failure"

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    return v28
.end method

.method unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method updateAllTimePrefsLOSP(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->updateTimePrefs(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update preferences for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method updateApplicationInfoLOSP(Ljava/util/List;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v3, p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;

    invoke-direct {v4, p3, p1, v2, v0}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;-><init>(ZLjava/util/List;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/Consumer;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v0, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateAssetConfiguration(Ljava/util/List;Z)V

    return-void
.end method

.method updateCoreSettingsLOSP(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_0
    :goto_1
    nop

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V
    .locals 5

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v3, 0x0

    if-nez p2, :cond_2

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v4

    if-nez v4, :cond_3

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    invoke-direct {p0, p1, p3, v1, v2}, Lcom/android/server/am/ProcessList;->updateLruProcessLSP(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v2
.end method

.method writeProcessesToProtoLSP(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v2, 0x0

    move v11, v1

    :goto_0
    if-ge v2, v10, :cond_3

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_2

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_0

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    const-wide v6, 0x20b00000001L

    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v5, v8, v6, v7, v12}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v11, v11, 0x1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_5

    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_4

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    const-wide v4, 0x20b00000002L

    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v3, v8, v4, v5, v6}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v9}, Lcom/android/server/am/ActivityManagerService;->getAppId(Ljava/lang/String;)I

    move-result v12

    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const-wide v5, 0x20b00000004L

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveUids;->dumpProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    if-lez v1, :cond_6

    const-wide v1, 0x10b00000006L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v15

    const-wide v1, 0x10500000001L

    invoke-virtual {v8, v1, v2, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000002L

    iget v3, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int v3, v15, v3

    invoke-virtual {v8, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000003L

    iget v3, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int v3, v15, v3

    invoke-virtual {v8, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x20b00000004L

    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    invoke-static/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->writeProcessOomListToProto(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/am/ActivityManagerService;Ljava/util/List;ZLjava/lang/String;)Z

    invoke-virtual {v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_6
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v8, v9, v12, v11}, Lcom/android/server/am/ActivityManagerService;->writeOtherProcessesInfoToProtoLSP(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;II)V

    return-void
.end method
