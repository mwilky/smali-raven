.class public final Lcom/android/server/am/CachedAppOptimizer;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;,
        Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;,
        Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;,
        Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;,
        Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;,
        Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;,
        Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;
    }
.end annotation


# static fields
.field static final ASYNC_RECEIVED_WHILE_FROZEN:I = 0x2

.field static final CACHED_APP_FREEZER_ENABLED_URI:Landroid/net/Uri;

.field private static final COMPACT_ACTION_ANON:I = 0x2

.field private static final COMPACT_ACTION_ANON_FLAG:I = 0x2

.field private static final COMPACT_ACTION_FILE:I = 0x1

.field private static final COMPACT_ACTION_FILE_FLAG:I = 0x1

.field private static final COMPACT_ACTION_FULL:I = 0x3

.field private static final COMPACT_ACTION_NONE:I = 0x0

.field private static final COMPACT_ACTION_STRING:[Ljava/lang/String;

.field static final COMPACT_PROCESS_BFGS:I = 0x4

.field static final COMPACT_PROCESS_FULL:I = 0x2

.field static final COMPACT_PROCESS_MSG:I = 0x1

.field static final COMPACT_PROCESS_PERSISTENT:I = 0x3

.field static final COMPACT_PROCESS_SOME:I = 0x1

.field static final COMPACT_SYSTEM_MSG:I = 0x2

.field static final DEFAULT_COMPACT_ACTION_1:I = 0x1

.field static final DEFAULT_COMPACT_ACTION_2:I = 0x3

.field static final DEFAULT_COMPACT_FULL_DELTA_RSS_THROTTLE_KB:J = 0x1f40L

.field static final DEFAULT_COMPACT_FULL_RSS_THROTTLE_KB:J = 0x2ee0L

.field static final DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

.field static final DEFAULT_COMPACT_THROTTLE_1:J = 0x1388L

.field static final DEFAULT_COMPACT_THROTTLE_2:J = 0x2710L

.field static final DEFAULT_COMPACT_THROTTLE_3:J = 0x1f4L

.field static final DEFAULT_COMPACT_THROTTLE_4:J = 0x2710L

.field static final DEFAULT_COMPACT_THROTTLE_5:J = 0x927c0L

.field static final DEFAULT_COMPACT_THROTTLE_6:J = 0x927c0L

.field static final DEFAULT_COMPACT_THROTTLE_MAX_OOM_ADJ:J = 0x3e7L

.field static final DEFAULT_COMPACT_THROTTLE_MIN_OOM_ADJ:J = 0x384L

.field static final DEFAULT_FREEZER_DEBOUNCE_TIMEOUT:J = 0x927c0L

.field static final DEFAULT_STATSD_SAMPLE_RATE:F = 0.1f

.field static final DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

.field static final DEFAULT_USE_FREEZER:Ljava/lang/Boolean;

.field static final DO_FREEZE:I = 0x1

.field static final KEY_COMPACT_ACTION_1:Ljava/lang/String; = "compact_action_1"

.field static final KEY_COMPACT_ACTION_2:Ljava/lang/String; = "compact_action_2"

.field static final KEY_COMPACT_FULL_DELTA_RSS_THROTTLE_KB:Ljava/lang/String; = "compact_full_delta_rss_throttle_kb"

.field static final KEY_COMPACT_FULL_RSS_THROTTLE_KB:Ljava/lang/String; = "compact_full_rss_throttle_kb"

.field static final KEY_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String; = "compact_proc_state_throttle"

.field static final KEY_COMPACT_STATSD_SAMPLE_RATE:Ljava/lang/String; = "compact_statsd_sample_rate"

.field static final KEY_COMPACT_THROTTLE_1:Ljava/lang/String; = "compact_throttle_1"

.field static final KEY_COMPACT_THROTTLE_2:Ljava/lang/String; = "compact_throttle_2"

.field static final KEY_COMPACT_THROTTLE_3:Ljava/lang/String; = "compact_throttle_3"

.field static final KEY_COMPACT_THROTTLE_4:Ljava/lang/String; = "compact_throttle_4"

.field static final KEY_COMPACT_THROTTLE_5:Ljava/lang/String; = "compact_throttle_5"

.field static final KEY_COMPACT_THROTTLE_6:Ljava/lang/String; = "compact_throttle_6"

.field static final KEY_COMPACT_THROTTLE_MAX_OOM_ADJ:Ljava/lang/String; = "compact_throttle_max_oom_adj"

.field static final KEY_COMPACT_THROTTLE_MIN_OOM_ADJ:Ljava/lang/String; = "compact_throttle_min_oom_adj"

.field static final KEY_FREEZER_DEBOUNCE_TIMEOUT:Ljava/lang/String; = "freeze_debounce_timeout"

.field static final KEY_FREEZER_STATSD_SAMPLE_RATE:Ljava/lang/String; = "freeze_statsd_sample_rate"

.field static final KEY_USE_COMPACTION:Ljava/lang/String; = "use_compaction"

.field static final KEY_USE_FREEZER:Ljava/lang/String; = "use_freezer"

.field static final REPORT_UNFREEZE:I = 0x2

.field static final REPORT_UNFREEZE_MSG:I = 0x4

.field static final SET_FROZEN_PROCESS_MSG:I = 0x3

.field static final SYNC_RECEIVED_WHILE_FROZEN:I = 0x1


# instance fields
.field private final mAm:Lcom/android/server/am/ActivityManagerService;

.field private mBfgsCompactionCount:I

.field final mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

.field volatile mCompactActionFull:Ljava/lang/String;

.field volatile mCompactActionSome:Ljava/lang/String;

.field volatile mCompactStatsdSampleRate:F

.field volatile mCompactThrottleBFGS:J

.field volatile mCompactThrottleFullFull:J

.field volatile mCompactThrottleFullSome:J

.field volatile mCompactThrottleMaxOomAdj:J

.field volatile mCompactThrottleMinOomAdj:J

.field volatile mCompactThrottlePersistent:J

.field volatile mCompactThrottleSomeFull:J

.field volatile mCompactThrottleSomeSome:J

.field mCompactionHandler:Landroid/os/Handler;

.field private mFreezeHandler:Landroid/os/Handler;

.field volatile mFreezerDebounceTimeout:J

.field private mFreezerDisableCount:I

.field private mFreezerOverride:Z

.field volatile mFreezerStatsdSampleRate:F

.field volatile mFullAnonRssThrottleKb:J

.field private mFullCompactionCount:I

.field volatile mFullDeltaRssThrottleKb:J

.field mLastCompactionStats:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mOnNativeBootFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mPendingCompactionProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPersistentCompactionCount:I

.field private final mPhenotypeFlagLock:Ljava/lang/Object;

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private final mProcLocksReader:Lcom/android/internal/os/ProcLocksReader;

.field final mProcStateThrottle:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

.field private final mRandom:Ljava/util/Random;

.field private final mSettingsObserver:Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

.field private mSomeCompactionCount:I

.field private mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

.field private volatile mUseCompaction:Z

.field private volatile mUseFreezer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, ""

    const-string v1, "file"

    const-string v2, "anon"

    const-string v3, "all"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->COMPACT_ACTION_STRING:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_FREEZER:Ljava/lang/Boolean;

    nop

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    const-string v0, "cached_apps_freezer"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->CACHED_APP_FREEZER_ENABLED_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2

    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;-><init>(Lcom/android/server/am/CachedAppOptimizer$1;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/am/CachedAppOptimizer;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/CachedAppOptimizer$1;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/CachedAppOptimizer$2;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnNativeBootFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    nop

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionSome:Ljava/lang/String;

    nop

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionFull:Ljava/lang/String;

    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    const-wide/16 v3, 0x1f4

    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    iput-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    const-wide/32 v1, 0x927c0

    iput-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    iput-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    const-wide/16 v3, 0x384

    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    const-wide/16 v3, 0x3e7

    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    sget-object v3, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;

    const v4, 0x3dcccccd    # 0.1f

    iput v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    iput v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    const-wide/16 v4, 0x2ee0

    iput-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    const-wide/16 v4, 0x1f40

    iput-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    iput-boolean v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    iput-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    new-instance v1, Lcom/android/server/am/CachedAppOptimizer$3;

    invoke-direct {v1, p0}, Lcom/android/server/am/CachedAppOptimizer$3;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    new-instance v1, Lcom/android/server/ServiceThread;

    const-string v2, "CachedAppOptimizerThread"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    iput-object p2, p0, Lcom/android/server/am/CachedAppOptimizer;->mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

    invoke-direct {v0, p0}, Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mSettingsObserver:Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

    new-instance v0, Lcom/android/internal/os/ProcLocksReader;

    invoke-direct {v0}, Lcom/android/internal/os/ProcLocksReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLocksReader:Lcom/android/internal/os/ProcLocksReader;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/CachedAppOptimizer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseCompaction()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateMaxOomAdjThrottle()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerDebounceTimeout()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseFreezer()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->COMPACT_ACTION_STRING:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionActions()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    return-object v0
.end method

.method static synthetic access$2108(Lcom/android/server/am/CachedAppOptimizer;)I
    .locals 2

    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mSomeCompactionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mSomeCompactionCount:I

    return v0
.end method

.method static synthetic access$2208(Lcom/android/server/am/CachedAppOptimizer;)I
    .locals 2

    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullCompactionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullCompactionCount:I

    return v0
.end method

.method static synthetic access$2308(Lcom/android/server/am/CachedAppOptimizer;)I
    .locals 2

    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPersistentCompactionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPersistentCompactionCount:I

    return v0
.end method

.method static synthetic access$2408(Lcom/android/server/am/CachedAppOptimizer;)I
    .locals 2

    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mBfgsCompactionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mBfgsCompactionCount:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->compactSystem()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/internal/os/ProcLocksReader;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLocksReader:Lcom/android/internal/os/ProcLocksReader;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/am/CachedAppOptimizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    return v0
.end method

.method static synthetic access$2900(IZ)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->freezeBinder(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionThrottles()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/am/CachedAppOptimizer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3100(II)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->compactProcess(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactStatsdSampleRate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerStatsdSampleRate()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullRssThrottle()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullDeltaRssThrottle()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateProcStateThrottle()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateMinOomAdjThrottle()V

    return-void
.end method

.method static compactActionIntToString(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_1

    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->COMPACT_ACTION_STRING:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object v0, v0, p0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private static native compactProcess(II)V
.end method

.method private native compactSystem()V
.end method

.method private static native freezeBinder(IZ)V
.end method

.method private static native getBinderFreezeInfo(I)I
.end method

.method private static native getFreezerCheckPath()Ljava/lang/String;
.end method

.method public static isFreezerSupported()Z
    .locals 6

    const-string v0, "ActivityManager"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getFreezerCheckPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    invoke-virtual {v2}, Ljava/io/FileReader;->read()I

    move-result v3

    int-to-char v3, v3

    const/16 v4, 0x31

    if-eq v3, v4, :cond_1

    const/16 v4, 0x30

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "unexpected value in cgroup.freeze"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to read cgroup.freeze: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v4, "cgroup.freeze not present"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    nop

    :goto_2
    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception closing freezer.killable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    return v1
.end method

.method private parseProcStateThrottle(Ljava/lang/String;)Z
    .locals 7

    const-string v0, ","

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse default app compaction proc state: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ActivityManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private updateCompactStatsdSampleRate()V
    .locals 3

    const-string v0, "activity_manager"

    const-string v1, "compact_statsd_sample_rate"

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    return-void
.end method

.method private updateCompactionActions()V
    .locals 4

    const-string v0, "activity_manager"

    const-string v1, "compact_action_1"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "compact_action_2"

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionSome:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionFull:Ljava/lang/String;

    return-void
.end method

.method private updateCompactionThrottles()V
    .locals 13

    const/4 v0, 0x0

    nop

    const-string v1, "activity_manager"

    const-string v2, "compact_throttle_1"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    const-string v3, "compact_throttle_2"

    invoke-static {v1, v3}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    const-string v4, "compact_throttle_3"

    invoke-static {v1, v4}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    const-string v5, "compact_throttle_4"

    invoke-static {v1, v5}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    const-string v6, "compact_throttle_5"

    invoke-static {v1, v6}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    const-string v7, "compact_throttle_6"

    invoke-static {v1, v7}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    nop

    const-string v8, "compact_throttle_min_oom_adj"

    invoke-static {v1, v8}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    nop

    const-string v9, "compact_throttle_max_oom_adj"

    invoke-static {v1, v9}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const-wide/16 v9, 0x1388

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    const-wide/16 v9, 0x2710

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    const-wide/16 v11, 0x1f4

    iput-wide v11, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    const-wide/32 v9, 0x927c0

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    const-wide/16 v9, 0x384

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    const-wide/16 v9, 0x3e7

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    :cond_2
    return-void
.end method

.method private updateFreezerDebounceTimeout()V
    .locals 6

    const-string v0, "activity_manager_native_boot"

    const-string v1, "freeze_debounce_timeout"

    const-wide/32 v2, 0x927c0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    :cond_0
    return-void
.end method

.method private updateFreezerStatsdSampleRate()V
    .locals 3

    const-string v0, "activity_manager"

    const-string v1, "freeze_statsd_sample_rate"

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    return-void
.end method

.method private updateFullDeltaRssThrottle()V
    .locals 6

    const-string v0, "activity_manager"

    const-string v1, "compact_full_delta_rss_throttle_kb"

    const-wide/16 v2, 0x1f40

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    :cond_0
    return-void
.end method

.method private updateFullRssThrottle()V
    .locals 6

    const-string v0, "activity_manager"

    const-string v1, "compact_full_rss_throttle_kb"

    const-wide/16 v2, 0x2ee0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    :cond_0
    return-void
.end method

.method private updateMaxOomAdjThrottle()V
    .locals 4

    const-string v0, "activity_manager"

    const-string v1, "compact_throttle_max_oom_adj"

    const-wide/16 v2, 0x3e7

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    :cond_0
    return-void
.end method

.method private updateMinOomAdjThrottle()V
    .locals 4

    const-string v0, "activity_manager"

    const-string v1, "compact_throttle_min_oom_adj"

    const-wide/16 v2, 0x384

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    :cond_0
    return-void
.end method

.method private updateProcStateThrottle()V
    .locals 5

    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    const-string v1, "activity_manager"

    const-string v2, "compact_proc_state_throttle"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/CachedAppOptimizer;->parseProcStateThrottle(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse app compact proc state throttle \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" falling back to default."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->parseProcStateThrottle(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse default app compact proc state throttle "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateUseCompaction()V
    .locals 3

    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "activity_manager"

    const-string/jumbo v2, "use_compaction"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    :cond_0
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$1;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    :cond_1
    return-void
.end method

.method private updateUseFreezer()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cached_apps_freezer"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "disabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    goto :goto_1

    :cond_0
    const-string v1, "enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_FREEZER:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v3, "activity_manager_native_boot"

    const-string/jumbo v4, "use_freezer"

    invoke-static {v3, v4, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->isFreezerSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerDebounceTimeout()V

    :goto_1
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/CachedAppOptimizer;Z)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method compactAllSystem()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method compactAppBfgs(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setReqCompactAction(I)V

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->hasPendingCompact()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setHasPendingCompact(Z)V

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method compactAppFull(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setReqCompactAction(I)V

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->hasPendingCompact()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setHasPendingCompact(Z)V

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method compactAppPersistent(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setReqCompactAction(I)V

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->hasPendingCompact()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setHasPendingCompact(Z)V

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method compactAppSome(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setReqCompactAction(I)V

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->hasPendingCompact()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setHasPendingCompact(Z)V

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "CachedAppOptimizer settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  use_compaction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_action_1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionSome:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_action_2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionFull:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_5="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_6="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_min_oom_adj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_max_oom_adj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_statsd_sample_rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_full_rss_throttle_kb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_full_delta_rss_throttle_kb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_proc_state_throttle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mSomeCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " some, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " full, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mPersistentCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " persistent, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mBfgsCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " BFGS compactions."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Tracking last compaction stats for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " processes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  use_freezer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  freeze_statsd_sample_rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  freeze_debounce_timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized enableFreezer(Z)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    :try_start_1
    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-lez v2, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    if-gez v2, :cond_3

    :try_start_2
    const-string v0, "ActivityManager"

    const-string/jumbo v2, "unbalanced call to enableFreezer, ignoring"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    monitor-exit p0

    return v1

    :cond_2
    :try_start_3
    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-le v2, v0, :cond_3

    monitor-exit p0

    return v0

    :cond_3
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    if-nez p1, :cond_4

    move v1, v0

    :cond_4
    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    const-string v1, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "freezer override set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v4, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1}, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/CachedAppOptimizer;Z)V

    invoke-virtual {v1, v0, v4}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :goto_0
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    :goto_1
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 7

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setPendingFreeze(Z)V

    return-void
.end method

.method public init()V
    .locals 4

    const-string v0, "activity_manager"

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const-string v0, "activity_manager_native_boot"

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnNativeBootFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/CachedAppOptimizer;->CACHED_APP_FREEZER_ENABLED_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mSettingsObserver:Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseCompaction()V

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionActions()V

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionThrottles()V

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactStatsdSampleRate()V

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerStatsdSampleRate()V

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullRssThrottle()V

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullDeltaRssThrottle()V

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateProcStateThrottle()V

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseFreezer()V

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateMinOomAdjThrottle()V

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateMaxOomAdjThrottle()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$enableFreezer$0$CachedAppOptimizer(ZLcom/android/server/am/ProcessRecord;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->hasFreezerOverride()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezerOverride(Z)V

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezerOverride(Z)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$updateUseFreezer$1$CachedAppOptimizer(Z)V
    .locals 2

    const-string v0, "ActivityManager"

    if-eqz p1, :cond_2

    const-string v1, "Freezer enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$1;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    goto :goto_0

    :cond_2
    const-string v1, "Freezer disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    :goto_0
    return-void
.end method

.method shouldCompactBFGS(Lcom/android/server/am/ProcessRecord;J)Z
    .locals 4

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v0

    sub-long v0, p2, v0

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

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

.method shouldCompactPersistent(Lcom/android/server/am/ProcessRecord;J)Z
    .locals 4

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v0

    sub-long v0, p2, v0

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

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

.method unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 13

    const-string v0, " "

    const-string v1, "ActivityManager"

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v4, v6, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v3, v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setPendingFreeze(Z)V

    :cond_0
    invoke-virtual {v3, v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezerOverride(Z)V

    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    const/4 v4, 0x0

    const/16 v6, 0x13

    const/16 v7, 0xd

    const/4 v8, 0x1

    :try_start_0
    invoke-static {v2}, Lcom/android/server/am/CachedAppOptimizer;->getBinderFreezeInfo(I)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v10, v9, 0x1

    const-string/jumbo v11, "pid "

    if-eqz v10, :cond_2

    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "  received sync transactions while frozen, killing"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "Sync transaction while in frozen state"

    const/16 v12, 0x14

    invoke-virtual {p1, v10, v7, v12, v8}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    const/4 v4, 0x1

    :cond_2
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "  received async transactions while frozen"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to query binder frozen info for pid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ". Killing it. Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "Unable to query binder frozen stats"

    invoke-virtual {p1, v10, v7, v6, v8}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_4

    return-void

    :cond_4
    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getFreezeUnfreezeTime()J

    move-result-wide v9

    :try_start_2
    invoke-static {v2, v5}, Lcom/android/server/am/CachedAppOptimizer;->freezeBinder(IZ)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    nop

    :try_start_3
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2, v6, v5}, Landroid/os/Process;->setProcessFrozen(IIZ)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezeUnfreezeTime(J)V

    invoke-virtual {v3, v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFrozen(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to unfreeze "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". This might cause inconsistency or UI hangs."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sync unfroze "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getFreezeUnfreezeTime()J

    move-result-wide v5

    sub-long/2addr v5, v9

    const-wide/32 v7, 0x7fffffff

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    return-void

    :catch_2
    move-exception v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to unfreeze binder for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Killing it"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Unable to unfreeze"

    invoke-virtual {p1, v0, v7, v6, v8}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    return-void
.end method

.method unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method unscheduleFreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setPendingFreeze(Z)V

    :cond_0
    return-void
.end method

.method public useCompaction()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public useFreezer()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
