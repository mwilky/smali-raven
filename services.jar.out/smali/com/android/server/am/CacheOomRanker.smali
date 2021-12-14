.class public Lcom/android/server/am/CacheOomRanker;
.super Ljava/lang/Object;
.source "CacheOomRanker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CacheOomRanker$ProcessDependenciesImpl;,
        Lcom/android/server/am/CacheOomRanker$ProcessDependencies;,
        Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;,
        Lcom/android/server/am/CacheOomRanker$LastRssComparator;,
        Lcom/android/server/am/CacheOomRanker$RssComparator;,
        Lcom/android/server/am/CacheOomRanker$CacheUseComparator;,
        Lcom/android/server/am/CacheOomRanker$LastActivityTimeComparator;,
        Lcom/android/server/am/CacheOomRanker$ScoreComparator;
    }
.end annotation


# static fields
.field private static final CACHE_USE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_OOM_RE_RANKING_LRU_WEIGHT:F = 0.35f

.field static final DEFAULT_OOM_RE_RANKING_NUMBER_TO_RE_RANK:I = 0x8

.field static final DEFAULT_OOM_RE_RANKING_RSS_WEIGHT:F = 0.15f

.field static final DEFAULT_OOM_RE_RANKING_USES_WEIGHT:F = 0.5f

.field static final DEFAULT_PRESERVE_TOP_N_APPS:I = 0x3

.field static final DEFAULT_RSS_UPDATE_RATE_MS:J = 0x2710L

.field static final DEFAULT_USE_FREQUENT_RSS:Z = true

.field private static final DEFAULT_USE_OOM_RE_RANKING:Z = false

.field static final KEY_OOM_RE_RANKING_LRU_WEIGHT:Ljava/lang/String; = "oom_re_ranking_lru_weight"

.field static final KEY_OOM_RE_RANKING_NUMBER_TO_RE_RANK:Ljava/lang/String; = "oom_re_ranking_number_to_re_rank"

.field static final KEY_OOM_RE_RANKING_PRESERVE_TOP_N_APPS:Ljava/lang/String; = "oom_re_ranking_preserve_top_n_apps"

.field static final KEY_OOM_RE_RANKING_RSS_UPDATE_RATE_MS:Ljava/lang/String; = "oom_re_ranking_rss_update_rate_ms"

.field static final KEY_OOM_RE_RANKING_RSS_WEIGHT:Ljava/lang/String; = "oom_re_ranking_rss_weight"

.field static final KEY_OOM_RE_RANKING_USES_WEIGHT:Ljava/lang/String; = "oom_re_ranking_uses_weight"

.field static final KEY_OOM_RE_RANKING_USE_FREQUENT_RSS:Ljava/lang/String; = "oom_re_ranking_rss_use_frequent_rss"

.field static final KEY_USE_OOM_RE_RANKING:Ljava/lang/String; = "use_oom_re_ranking"

.field private static final LAST_ACTIVITY_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAST_RSS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final RSS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCORED_PROCESS_RECORD_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLruPositions:[I

.field mLruWeight:F

.field private final mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mPhenotypeFlagLock:Ljava/lang/Object;

.field mPreserveTopNApps:I

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private final mProcessDependencies:Lcom/android/server/am/CacheOomRanker$ProcessDependencies;

.field private final mProfilerLock:Ljava/lang/Object;

.field mRssUpdateRateMs:J

.field mRssWeight:F

.field private mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field mUseFrequentRss:Z

.field private mUseOomReRanking:Z

.field mUsesWeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/CacheOomRanker$ScoreComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$ScoreComparator;-><init>(Lcom/android/server/am/CacheOomRanker$1;)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->SCORED_PROCESS_RECORD_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/am/CacheOomRanker$CacheUseComparator;

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$CacheUseComparator;-><init>(Lcom/android/server/am/CacheOomRanker$1;)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->CACHE_USE_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/am/CacheOomRanker$RssComparator;

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$RssComparator;-><init>(Lcom/android/server/am/CacheOomRanker$1;)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->RSS_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/am/CacheOomRanker$LastRssComparator;

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$LastRssComparator;-><init>(Lcom/android/server/am/CacheOomRanker$1;)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->LAST_RSS_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/am/CacheOomRanker$LastActivityTimeComparator;

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$LastActivityTimeComparator;-><init>(Lcom/android/server/am/CacheOomRanker$1;)V

    sput-object v0, Lcom/android/server/am/CacheOomRanker;->LAST_ACTIVITY_TIME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2

    new-instance v0, Lcom/android/server/am/CacheOomRanker$ProcessDependenciesImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$ProcessDependenciesImpl;-><init>(Lcom/android/server/am/CacheOomRanker$1;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/CacheOomRanker;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CacheOomRanker$ProcessDependencies;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CacheOomRanker$ProcessDependencies;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mPreserveTopNApps:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/CacheOomRanker;->mUseFrequentRss:Z

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/server/am/CacheOomRanker;->mRssUpdateRateMs:J

    const v0, 0x3eb33333    # 0.35f

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    new-instance v0, Lcom/android/server/am/CacheOomRanker$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/CacheOomRanker$1;-><init>(Lcom/android/server/am/CacheOomRanker;)V

    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    iput-object p1, p0, Lcom/android/server/am/CacheOomRanker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mProfilerLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/CacheOomRanker;->mProcessDependencies:Lcom/android/server/am/CacheOomRanker$ProcessDependencies;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updateRssUpdateRateMs()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updateLruWeight()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updateUsesWeight()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updateRssWeight()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/CacheOomRanker;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updateUseOomReranking()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updateNumberToReRank()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updatePreserveTopNApps()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updateUseFrequentRss()V

    return-void
.end method

.method private static addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V
    .locals 4

    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object v1, p0, v0

    iget v2, v1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    int-to-float v3, v0

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static appCanBeReRanked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    const/16 v1, 0x3e9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateLruWeight()V
    .locals 3

    const-string v0, "activity_manager"

    const-string/jumbo v1, "oom_re_ranking_lru_weight"

    const v2, 0x3eb33333    # 0.35f

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    return-void
.end method

.method private updateNumberToReRank()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->getNumberToReRank()I

    move-result v0

    const-string v1, "activity_manager"

    const-string/jumbo v2, "oom_re_ranking_number_to_re_rank"

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_1

    new-array v2, v1, [Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    iput-object v2, p0, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    new-instance v4, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;-><init>(Lcom/android/server/am/CacheOomRanker$1;)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/server/am/CacheOomRanker;->mLruPositions:[I

    :cond_1
    return-void
.end method

.method private updatePreserveTopNApps()V
    .locals 3

    const-string v0, "activity_manager"

    const-string/jumbo v1, "oom_re_ranking_preserve_top_n_apps"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found negative value for preserveTopNApps, setting to default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OomAdjuster"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    :cond_0
    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mPreserveTopNApps:I

    return-void
.end method

.method private updateRssUpdateRateMs()V
    .locals 4

    const-string v0, "activity_manager"

    const-string/jumbo v1, "oom_re_ranking_rss_update_rate_ms"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CacheOomRanker;->mRssUpdateRateMs:J

    return-void
.end method

.method private updateRssWeight()V
    .locals 3

    const-string v0, "activity_manager"

    const-string/jumbo v1, "oom_re_ranking_rss_weight"

    const v2, 0x3e19999a    # 0.15f

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    return-void
.end method

.method private updateUseFrequentRss()V
    .locals 3

    const-string v0, "activity_manager"

    const-string/jumbo v1, "oom_re_ranking_rss_use_frequent_rss"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/CacheOomRanker;->mUseFrequentRss:Z

    return-void
.end method

.method private updateUseOomReranking()V
    .locals 3

    const-string v0, "activity_manager"

    const-string/jumbo v1, "use_oom_re_ranking"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    return-void
.end method

.method private updateUsesWeight()V
    .locals 3

    const-string v0, "activity_manager"

    const-string/jumbo v1, "oom_re_ranking_uses_weight"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "CacheOomRanker settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  use_oom_re_ranking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  oom_re_ranking_number_to_re_rank="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->getNumberToReRank()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  oom_re_ranking_lru_weight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  oom_re_ranking_uses_weight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  oom_re_ranking_rss_weight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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

.method getNumberToReRank()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public init(Ljava/util/concurrent/Executor;)V
    .locals 2

    const-string v0, "activity_manager"

    iget-object v1, p0, Lcom/android/server/am/CacheOomRanker;->mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0, p1, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updateUseOomReranking()V

    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updateNumberToReRank()V

    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updateLruWeight()V

    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updateUsesWeight()V

    invoke-direct {p0}, Lcom/android/server/am/CacheOomRanker;->updateRssWeight()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method reRankLruCachedAppsLSP(Ljava/util/ArrayList;I)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    iget-object v4, v1, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget v0, v1, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    move v5, v0

    iget v0, v1, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    move v6, v0

    iget v0, v1, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    move v7, v0

    iget v0, v1, Lcom/android/server/am/CacheOomRanker;->mPreserveTopNApps:I

    move v8, v0

    iget-boolean v0, v1, Lcom/android/server/am/CacheOomRanker;->mUseFrequentRss:Z

    move v9, v0

    iget-wide v10, v1, Lcom/android/server/am/CacheOomRanker;->mRssUpdateRateMs:J

    iget-object v0, v1, Lcom/android/server/am/CacheOomRanker;->mLruPositions:[I

    move-object v12, v0

    iget-object v0, v1, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    move-object v13, v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v12, :cond_10

    if-nez v13, :cond_0

    move/from16 v18, v8

    move-wide/from16 v22, v10

    move-object v8, v2

    goto/16 :goto_b

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    array-length v15, v13

    if-ge v4, v15, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    invoke-static {v15}, Lcom/android/server/am/CacheOomRanker;->appCanBeReRanked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v16

    if-eqz v16, :cond_1

    aget-object v14, v13, v4

    iput-object v15, v14, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    aget-object v14, v13, v4

    move-object/from16 v17, v15

    const/4 v15, 0x0

    iput v15, v14, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    aput v0, v12, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v17, v15

    :goto_1
    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    move v15, v14

    move v14, v0

    :goto_2
    if-ge v14, v3, :cond_4

    if-ge v15, v8, :cond_4

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-static {v0}, Lcom/android/server/am/CacheOomRanker;->appCanBeReRanked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v17

    if-eqz v17, :cond_3

    add-int/lit8 v15, v15, 0x1

    :cond_3
    nop

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    if-ge v15, v8, :cond_5

    sub-int v0, v8, v15

    sub-int/2addr v4, v0

    if-gez v4, :cond_5

    const/4 v4, 0x0

    :cond_5
    if-eqz v9, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/16 v18, 0x0

    move/from16 v3, v18

    :goto_3
    if-ge v3, v4, :cond_9

    move/from16 v18, v8

    aget-object v8, v13, v3

    move/from16 v19, v14

    iget-object v14, v8, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCacheOomRankerRssTimeMs()J

    move-result-wide v20

    sub-long v20, v0, v20

    iget-object v14, v8, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCacheOomRankerRss()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v14, v22, v24

    if-eqz v14, :cond_6

    cmp-long v14, v20, v10

    if-gez v14, :cond_6

    move-wide/from16 v24, v0

    move-wide/from16 v22, v10

    goto :goto_4

    :cond_6
    move-wide/from16 v22, v10

    move-wide v10, v0

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/CacheOomRanker;->mProcessDependencies:Lcom/android/server/am/CacheOomRanker$ProcessDependencies;

    iget-object v14, v8, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v14

    invoke-interface {v0, v14}, Lcom/android/server/am/CacheOomRanker$ProcessDependencies;->getRss(I)[J

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v14, v0

    if-nez v14, :cond_7

    move-wide/from16 v24, v10

    goto :goto_5

    :cond_7
    iget-object v14, v8, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/16 v17, 0x0

    aget-wide v1, v0, v17

    invoke-virtual {v14, v1, v2, v10, v11}, Lcom/android/server/am/ProcessStateRecord;->setCacheOomRankerRss(JJ)V

    iget-object v1, v8, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    move-wide/from16 v24, v10

    aget-wide v10, v0, v17

    invoke-virtual {v1, v10, v11}, Lcom/android/server/am/ProcessProfileRecord;->setLastRss(J)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p1

    move/from16 v8, v18

    move/from16 v14, v19

    move-wide/from16 v10, v22

    move-wide/from16 v0, v24

    goto :goto_3

    :cond_8
    move-wide/from16 v24, v10

    :goto_5
    const-string v1, "OomAdjuster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Process.getRss returned bad value, not re-ranking: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    move-wide/from16 v24, v0

    move/from16 v18, v8

    move-wide/from16 v22, v10

    move/from16 v19, v14

    goto :goto_6

    :cond_a
    move/from16 v18, v8

    move-wide/from16 v22, v10

    move/from16 v19, v14

    :goto_6
    const/4 v0, 0x0

    cmpl-float v1, v5, v0

    if-lez v1, :cond_b

    sget-object v1, Lcom/android/server/am/CacheOomRanker;->LAST_ACTIVITY_TIME_COMPARATOR:Ljava/util/Comparator;

    const/4 v2, 0x0

    invoke-static {v13, v2, v4, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    invoke-static {v13, v5}, Lcom/android/server/am/CacheOomRanker;->addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V

    :cond_b
    cmpl-float v1, v7, v0

    if-lez v1, :cond_d

    if-eqz v9, :cond_c

    sget-object v0, Lcom/android/server/am/CacheOomRanker;->RSS_COMPARATOR:Ljava/util/Comparator;

    const/4 v1, 0x0

    invoke-static {v13, v1, v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    move-object/from16 v1, p0

    goto :goto_7

    :cond_c
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/CacheOomRanker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    sget-object v0, Lcom/android/server/am/CacheOomRanker;->LAST_RSS_COMPARATOR:Ljava/util/Comparator;

    const/4 v3, 0x0

    invoke-static {v13, v3, v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    invoke-static {v13, v7}, Lcom/android/server/am/CacheOomRanker;->addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V

    goto :goto_8

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_d
    move-object/from16 v1, p0

    :goto_8
    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_e

    sget-object v0, Lcom/android/server/am/CacheOomRanker;->CACHE_USE_COMPARATOR:Ljava/util/Comparator;

    const/4 v2, 0x0

    invoke-static {v13, v2, v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    invoke-static {v13, v6}, Lcom/android/server/am/CacheOomRanker;->addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V

    goto :goto_9

    :cond_e
    const/4 v2, 0x0

    :goto_9
    sget-object v0, Lcom/android/server/am/CacheOomRanker;->SCORED_PROCESS_RECORD_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v13, v2, v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v4, :cond_f

    aget v2, v12, v0

    aget-object v3, v13, v0

    iget-object v3, v3, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v8, p1

    invoke-virtual {v8, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    aget-object v2, v13, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->proc:Lcom/android/server/am/ProcessRecord;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_f
    move-object/from16 v8, p1

    return-void

    :cond_10
    move/from16 v18, v8

    move-wide/from16 v22, v10

    move-object v8, v2

    :goto_b
    return-void

    :catchall_1
    move-exception v0

    move-object v8, v2

    :goto_c
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_c
.end method

.method public useOomReranking()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
