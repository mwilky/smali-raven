.class public final Lcom/android/server/uri/UriMetricsHelper;
.super Ljava/lang/Object;
.source "UriMetricsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/uri/UriMetricsHelper$PersistentUriGrantsProvider;
    }
.end annotation


# static fields
.field public static final DAILY_PULL_METADATA:Landroid/app/StatsManager$PullAtomMetadata;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPersistentUriGrantsProvider:Lcom/android/server/uri/UriMetricsHelper$PersistentUriGrantsProvider;


# direct methods
.method public static synthetic $r8$lambda$TTAbXMVemo8pkuFAX_qRqhDXW1g(Lcom/android/server/uri/UriMetricsHelper;ILjava/util/List;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/uri/UriMetricsHelper;->lambda$registerPuller$0(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    sput-object v0, Lcom/android/server/uri/UriMetricsHelper;->DAILY_PULL_METADATA:Landroid/app/StatsManager$PullAtomMetadata;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/uri/UriMetricsHelper$PersistentUriGrantsProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/uri/UriMetricsHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/uri/UriMetricsHelper;->mPersistentUriGrantsProvider:Lcom/android/server/uri/UriMetricsHelper$PersistentUriGrantsProvider;

    return-void
.end method

.method private synthetic lambda$registerPuller$0(ILjava/util/List;)I
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/server/uri/UriMetricsHelper;->reportPersistentUriPermissionsPerPackage(Ljava/util/List;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public registerPuller()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/uri/UriMetricsHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    sget-object v1, Lcom/android/server/uri/UriMetricsHelper;->DAILY_PULL_METADATA:Landroid/app/StatsManager$PullAtomMetadata;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/uri/UriMetricsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/uri/UriMetricsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/uri/UriMetricsHelper;)V

    const/16 p0, 0x27a4

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public reportPersistentUriFlushed(I)V
    .locals 0

    const/16 p0, 0x1a2

    invoke-static {p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void
.end method

.method public final reportPersistentUriPermissionsPerPackage(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/uri/UriMetricsHelper;->mPersistentUriGrantsProvider:Lcom/android/server/uri/UriMetricsHelper$PersistentUriGrantsProvider;

    invoke-interface {p0}, Lcom/android/server/uri/UriMetricsHelper$PersistentUriGrantsProvider;->providePersistentUriGrants()Ljava/util/ArrayList;

    move-result-object p0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/uri/UriPermission;

    iget v4, v4, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    :goto_1
    if-ge v2, p0, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x27a4

    invoke-static {v4, v1, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(III)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
