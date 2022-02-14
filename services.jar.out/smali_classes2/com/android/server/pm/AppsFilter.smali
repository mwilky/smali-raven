.class public Lcom/android/server/pm/AppsFilter;
.super Ljava/lang/Object;
.source "AppsFilter.java"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/AppsFilter$ToString;,
        Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;,
        Lcom/android/server/pm/AppsFilter$FeatureConfig;,
        Lcom/android/server/pm/AppsFilter$StateProvider;
    }
.end annotation


# static fields
.field private static final DEBUG_ALLOW_ALL:Z = false

.field private static final DEBUG_LOGGING:Z = false

.field private static final DEBUG_TRACING:Z = false

.field private static final TAG:Ljava/lang/String; = "AppsFilter"


# instance fields
.field private final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private final mCacheLock:Ljava/lang/Object;

.field private final mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

.field private final mForceQueryable:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mForceQueryableByDevicePackageNames:[Ljava/lang/String;

.field private final mImplicitlyQueryable:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

.field private mProtectedBroadcasts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueriesViaComponent:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQueriesViaComponentRequireRecompute:Z

.field private final mQueriesViaPackage:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueryableViaUsesLibrary:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

.field private final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/AppsFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

.field private final mSystemAppsQueryable:Z

.field private mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field private final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method constructor <init>(Lcom/android/server/pm/AppsFilter$StateProvider;Lcom/android/server/pm/AppsFilter$FeatureConfig;[Ljava/lang/String;ZLcom/android/server/om/OverlayReferenceMapper$Provider;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mQueryableViaUsesLibrary:Landroid/util/SparseSetArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    iput-object p2, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    iput-object p3, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/pm/AppsFilter;->mSystemAppsQueryable:Z

    new-instance v0, Lcom/android/server/om/OverlayReferenceMapper;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p5}, Lcom/android/server/om/OverlayReferenceMapper;-><init>(ZLcom/android/server/om/OverlayReferenceMapper$Provider;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iput-object p1, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    iput-object p6, p0, Lcom/android/server/pm/AppsFilter;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/AppsFilter;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    new-instance v1, Landroid/util/SparseSetArray;

    invoke-direct {v1}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    new-instance v2, Landroid/util/SparseSetArray;

    invoke-direct {v2}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    new-instance v3, Landroid/util/SparseSetArray;

    invoke-direct {v3}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/AppsFilter;->mQueryableViaUsesLibrary:Landroid/util/SparseSetArray;

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    new-instance v5, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v5}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/AppsFilter;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    iget-object v5, p1, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-static {v0, v5}, Lcom/android/server/utils/Snapshots;->copy(Landroid/util/SparseSetArray;Landroid/util/SparseSetArray;)V

    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    invoke-static {v1, v0}, Lcom/android/server/utils/Snapshots;->copy(Landroid/util/SparseSetArray;Landroid/util/SparseSetArray;)V

    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-static {v2, v0}, Lcom/android/server/utils/Snapshots;->copy(Landroid/util/SparseSetArray;Landroid/util/SparseSetArray;)V

    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mQueryableViaUsesLibrary:Landroid/util/SparseSetArray;

    invoke-static {v3, v0}, Lcom/android/server/utils/Snapshots;->copy(Landroid/util/SparseSetArray;Landroid/util/SparseSetArray;)V

    iget-boolean v0, p1, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/server/pm/AppsFilter;->mSystemAppsQueryable:Z

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilter;->mSystemAppsQueryable:Z

    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->snapshot()Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

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
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/AppsFilter;Lcom/android/server/pm/AppsFilter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/AppsFilter;-><init>(Lcom/android/server/pm/AppsFilter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/AppsFilter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/AppsFilter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->onChanged()V

    return-void
.end method

.method private addPackageInternal(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)Landroid/util/ArraySet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const-string v1, "android"

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {v2, v1}, Lcom/android/server/pm/AppsFilter;->isSystemSigned(Landroid/content/pm/PackageParser$SigningDetails;Lcom/android/server/pm/PackageSetting;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v3, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v0, :cond_2

    const/4 v1, 0x0

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v3, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_5

    iget-boolean v1, p1, Lcom/android/server/pm/PackageSetting;->forceQueryableOverride:Z

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilter;->mSystemAppsQueryable:Z

    if-nez v1, :cond_5

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isForceQueryable()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v2

    :goto_2
    if-nez v1, :cond_6

    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    if-eqz v4, :cond_7

    invoke-static {v4, p1}, Lcom/android/server/pm/AppsFilter;->isSystemSigned(Landroid/content/pm/PackageParser$SigningDetails;Lcom/android/server/pm/PackageSetting;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v5, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_3
    if-ltz v4, :cond_13

    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    iget v5, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v6, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-eq v5, v6, :cond_12

    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v5, :cond_8

    goto/16 :goto_4

    :cond_8
    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v1, :cond_c

    iget-boolean v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    invoke-static {v5, v0, v6}, Lcom/android/server/pm/AppsFilter;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    iget v7, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    :cond_9
    invoke-static {v5, v0}, Lcom/android/server/pm/AppsFilter;->canQueryViaPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {v2, v0}, Lcom/android/server/pm/AppsFilter;->canQueryAsInstaller(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_a
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v7, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    :cond_b
    invoke-static {v5, v0}, Lcom/android/server/pm/AppsFilter;->canQueryViaUsesLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueryableViaUsesLibrary:Landroid/util/SparseSetArray;

    iget v7, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    :cond_c
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v7, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-boolean v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    invoke-static {v0, v5, v6}, Lcom/android/server/pm/AppsFilter;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    :cond_d
    invoke-static {v0, v5}, Lcom/android/server/pm/AppsFilter;->canQueryViaPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {p1, v5}, Lcom/android/server/pm/AppsFilter;->canQueryAsInstaller(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_e
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    :cond_f
    invoke-static {v0, v5}, Lcom/android/server/pm/AppsFilter;->canQueryViaUsesLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueryableViaUsesLibrary:Landroid/util/SparseSetArray;

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    :cond_10
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v6, :cond_12

    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v6, :cond_12

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v7, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v6, v7}, Lcom/android/server/pm/AppsFilter;->pkgInstruments(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v6, v7}, Lcom/android/server/pm/AppsFilter;->pkgInstruments(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_12

    :cond_11
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v7, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    :cond_12
    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_3

    :cond_13
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v2}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v2, :cond_15

    invoke-virtual {p2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v7, :cond_14

    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v8, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual {v4, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_15
    iget-object v5, p0, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/om/OverlayReferenceMapper;->addPkg(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;)Landroid/util/ArraySet;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v6, p1, v3}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->updatePackageState(Lcom/android/server/pm/PackageSetting;Z)V

    return-object v5
.end method

.method private static canQueryAsInstaller(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-boolean v1, v0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-static {v2, p1, p2}, Lcom/android/server/pm/AppsFilter;->matchesPackage(Landroid/content/Intent;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesProviders()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesProviders()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/pm/AppsFilter;->matchesProviders(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static canQueryViaPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 2

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static canQueryViaUsesLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 6

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x1

    return v1

    :cond_3
    return v1
.end method

.method private collectProtectedBroadcasts(Landroid/util/ArrayMap;Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static create(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerService$Injector;)Lcom/android/server/pm/AppsFilter;
    .locals 11

    nop

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    new-instance v1, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;-><init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/AppsFilter$1;)V

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object v9, v2

    goto :goto_1

    :cond_0
    nop

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v9, v2

    :goto_1
    new-instance v3, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda7;

    invoke-direct {v3, p1}, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/PackageManagerService$Injector;)V

    new-instance v10, Lcom/android/server/pm/AppsFilter;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService$Injector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    move-object v2, v10

    move-object v4, v1

    move-object v5, v9

    move v6, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/AppsFilter;-><init>(Lcom/android/server/pm/AppsFilter$StateProvider;Lcom/android/server/pm/AppsFilter$FeatureConfig;[Ljava/lang/String;ZLcom/android/server/om/OverlayReferenceMapper$Provider;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1, v2}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->setAppsFilter(Lcom/android/server/pm/AppsFilter;)V

    return-object v2
.end method

.method private static dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/PrintWriter;",
            "TT;",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/AppsFilter$ToString<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_4

    if-eqz p1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    if-nez p5, :cond_2

    move-object v3, v1

    goto :goto_1

    :cond_2
    invoke-interface {p5, v1}, Lcom/android/server/pm/AppsFilter$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    goto :goto_0

    :cond_4
    return-void
.end method

.method private static dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/AppsFilter$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseSetArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p2, v0}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v5

    if-nez p4, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_1

    :cond_0
    invoke-interface {p4, v1}, Lcom/android/server/pm/AppsFilter$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    :goto_1
    move-object v3, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/AppsFilter;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    goto :goto_3

    :cond_1
    nop

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v5

    if-nez p4, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_2

    :cond_2
    invoke-interface {p4, v1}, Lcom/android/server/pm/AppsFilter$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    :goto_2
    move-object v3, p0

    move-object v4, p1

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/AppsFilter;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static isSystemSigned(Landroid/content/pm/PackageParser$SigningDetails;Lcom/android/server/pm/PackageSetting;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageParser$SigningDetails;->signaturesMatchExactly(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$create$0(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$Injector;->getLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$Injector;->getSettings()Lcom/android/server/pm/Settings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->untrackedStorage()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerInternal;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;->currentState(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$dumpQueries$9(Landroid/util/SparseArray;[ILcom/android/internal/util/function/QuadFunction;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, p1

    :goto_0
    const/4 v6, 0x0

    if-nez v3, :cond_0

    if-ge v4, v5, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget v8, p1, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {p2, v7, v8, v9, v6}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, [Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[app id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not installed]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    aget-object v4, v3, v6

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v0, v4

    :goto_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    return-object v0
.end method

.method static synthetic lambda$updateEntireShouldFilterCacheAsync$3(Landroid/util/ArrayMap;Landroid/util/ArrayMap;[[Landroid/content/pm/UserInfo;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 4

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    const/4 v0, 0x0

    aput-object p4, p2, v0

    const/4 v0, 0x0

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateEntireShouldFilterCacheAsync$4(Landroid/util/ArrayMap;[ZLandroid/util/ArrayMap;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 6

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    aput-boolean v3, p1, v2

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    iget-object v4, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aput-boolean v3, p1, v2

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static log(Lcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interaction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const-string v1, "system"

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppsFilter"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private makeCache()Lcom/android/server/utils/SnapshotCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/AppsFilter;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/pm/AppsFilter$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/AppsFilter$1;-><init>(Lcom/android/server/pm/AppsFilter;Lcom/android/server/pm/AppsFilter;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method private static matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/parsing/component/ParsedMainComponent;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedMainComponent;

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedMainComponent;->isExported()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, v2, p2}, Lcom/android/server/pm/AppsFilter;->matchesAnyFilter(Landroid/content/Intent;Landroid/content/pm/parsing/component/ParsedComponent;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static matchesAnyFilter(Landroid/content/Intent;Landroid/content/pm/parsing/component/ParsedComponent;Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/parsing/component/ParsedComponent;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    invoke-static {p0, v3, p2}, Lcom/android/server/pm/AppsFilter;->matchesIntentFilter(Landroid/content/Intent;Landroid/content/IntentFilter;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static matchesIntentFilter(Landroid/content/Intent;Landroid/content/IntentFilter;Ljava/util/Set;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/IntentFilter;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    const-string v6, "AppsFilter"

    const/4 v7, 0x1

    move-object v0, p1

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static matchesPackage(Landroid/content/Intent;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    nop

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/AppsFilter;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    nop

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/AppsFilter;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/server/pm/AppsFilter;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    nop

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/AppsFilter;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static matchesProviders(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_4

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedProvider;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedProvider;->isExported()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-direct {v4, v5, v6, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v2, v4

    :cond_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method private onChanged()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/android/server/pm/AppsFilter;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method private static pkgInstruments(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 5

    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedInstrumentation;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v0

    throw v0
.end method

.method private recomputeComponentVisibility(Landroid/util/ArrayMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->clear()V

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v2}, Lcom/android/server/pm/AppsFilter;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_4

    if-ne v0, v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v5, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    invoke-static {v4, v5, v6}, Lcom/android/server/pm/AppsFilter;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    iget v5, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v6, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    return-void
.end method

.method private removeAppIdFromVisibilityCache(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->removeAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 2

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "android.permission.QUERY_ALL_PACKAGES"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private shouldFilterApplicationInternal(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v0}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->isGloballyEnabled()Z

    move-result v0

    move v5, v0

    const/4 v0, 0x0

    if-nez v5, :cond_0

    return v0

    :cond_0
    const/4 v6, 0x1

    if-nez v3, :cond_1

    const-string v0, "AppsFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No setting found for non system uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    instance-of v7, v3, Lcom/android/server/pm/PackageSetting;

    if-eqz v7, :cond_3

    move-object v7, v3

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    iget-object v7, v7, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v7, :cond_2

    move-object v7, v3

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    move-object v8, v3

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    iget-object v8, v8, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v8, v8, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    move-object v8, v3

    check-cast v8, Lcom/android/server/pm/SharedUserSetting;

    iget-object v8, v8, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    :goto_0
    if-eqz v7, :cond_4

    iget-object v9, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v9, :cond_6

    iget-object v9, v1, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    iget-object v10, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v9, v10}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v9

    if-nez v9, :cond_6

    return v0

    :cond_4
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v9

    sub-int/2addr v9, v6

    :goto_1
    if-ltz v9, :cond_6

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    iget-object v10, v10, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v10, :cond_5

    iget-object v11, v1, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v11, v10}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v11

    if-nez v11, :cond_5

    return v0

    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_6
    if-eqz v7, :cond_7

    iget v9, v7, Lcom/android/server/pm/PackageSetting;->appId:I

    goto :goto_2

    :cond_7
    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    iget v9, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    :goto_2
    iget v10, v4, Lcom/android/server/pm/PackageSetting;->appId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-ne v9, v10, :cond_8

    return v0

    :cond_8
    if-eqz v7, :cond_9

    :try_start_1
    iget-object v11, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v11, :cond_b

    iget-object v11, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v11}, Lcom/android/server/pm/AppsFilter;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v11

    if-eqz v11, :cond_b

    return v0

    :cond_9
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v11

    sub-int/2addr v11, v6

    :goto_3
    if-ltz v11, :cond_b

    invoke-virtual {v8, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    iget-object v12, v12, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v12, :cond_a

    invoke-static {v12}, Lcom/android/server/pm/AppsFilter;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v13, :cond_a

    return v0

    :cond_a
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    :cond_b
    nop

    :try_start_2
    iget-object v11, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v11, :cond_c

    return v6

    :cond_c
    invoke-interface {v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    if-eqz v12, :cond_d

    return v0

    :cond_d
    :try_start_3
    iget-object v12, v1, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v12, :cond_e

    return v0

    :cond_e
    nop

    :try_start_4
    iget-object v12, v1, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v12, :cond_f

    return v0

    :cond_f
    nop

    :try_start_5
    iget-boolean v12, v1, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    if-eqz v12, :cond_10

    iget-object v12, v1, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v13, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda2;

    invoke-direct {v13, v1}, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/AppsFilter;)V

    invoke-interface {v12, v13}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    :cond_10
    iget-object v12, v1, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v12, :cond_11

    return v0

    :cond_11
    nop

    move/from16 v12, p4

    :try_start_6
    invoke-static {v12, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v13

    iget-object v14, v1, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v2, v15}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v14, :cond_12

    return v0

    :cond_12
    nop

    :try_start_7
    invoke-interface {v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    if-eqz v8, :cond_15

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v14, :cond_14

    invoke-virtual {v8, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v17, v16

    iget-object v6, v1, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v13, v2}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    return v2

    :cond_13
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, p1

    const/4 v0, 0x0

    const/4 v6, 0x1

    goto :goto_4

    :cond_14
    goto :goto_5

    :cond_15
    iget-object v0, v1, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iget-object v2, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v13, v2}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    return v0

    :cond_16
    :goto_5
    nop

    :try_start_8
    iget-object v0, v1, Lcom/android/server/pm/AppsFilter;->mQueryableViaUsesLibrary:Landroid/util/SparseSetArray;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    return v0

    :cond_17
    nop

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    nop

    :try_start_9
    throw v0

    :catchall_1
    move-exception v0

    nop

    throw v0

    :catchall_2
    move-exception v0

    nop

    throw v0

    :catchall_3
    move-exception v0

    move/from16 v12, p4

    nop

    throw v0

    :catchall_4
    move-exception v0

    move/from16 v12, p4

    nop

    throw v0

    :catchall_5
    move-exception v0

    move/from16 v12, p4

    nop

    throw v0

    :catchall_6
    move-exception v0

    move/from16 v12, p4

    nop

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    move-exception v0

    goto :goto_6

    :catchall_8
    move-exception v0

    move/from16 v12, p4

    :goto_6
    throw v0
.end method

.method private updateEntireShouldFilterCache()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v1, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/AppsFilter;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    return-void
.end method

.method private updateEntireShouldFilterCacheAsync()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/AppsFilter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateEntireShouldFilterCacheInner(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)Lcom/android/server/utils/WatchedSparseBooleanMatrix;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;[",
            "Landroid/content/pm/UserInfo;",
            ")",
            "Lcom/android/server/utils/WatchedSparseBooleanMatrix;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    array-length v1, p2

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;-><init>(I)V

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    move-object v2, p0

    move-object v3, v0

    move-object v6, p1

    move-object v7, p2

    move v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Lcom/android/server/utils/WatchedSparseBooleanMatrix;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private updateShouldFilterCacheForPackage(Lcom/android/server/utils/WatchedSparseBooleanMatrix;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedSparseBooleanMatrix;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;[",
            "Landroid/content/pm/UserInfo;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v6, p6

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_0
    if-ltz v5, :cond_4

    move-object/from16 v7, p4

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    iget v9, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v10, v8, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v9, v10, :cond_0

    goto :goto_3

    :cond_0
    iget-object v9, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    if-eq v9, v2, :cond_3

    iget-object v9, v8, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    if-ne v9, v2, :cond_1

    goto :goto_3

    :cond_1
    array-length v9, v4

    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v10

    mul-int/2addr v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_3

    aget-object v12, v4, v11

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v9, :cond_2

    aget-object v14, v4, v13

    iget v14, v14, Landroid/content/pm/UserInfo;->id:I

    iget v15, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v12, v15}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15

    iget v2, v8, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v14, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    nop

    invoke-direct {v0, v15, v3, v8, v14}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplicationInternal(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v4

    invoke-virtual {v1, v15, v2, v4}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    nop

    invoke-direct {v0, v2, v8, v3, v12}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplicationInternal(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v4

    invoke-virtual {v1, v2, v15, v4}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v2, p2

    move-object/from16 v4, p5

    goto :goto_0

    :cond_4
    move-object/from16 v7, p4

    return-void
.end method

.method private updateShouldFilterCacheForPackage(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v2, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1}, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/AppsFilter;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

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


# virtual methods
.method public addPackage(Lcom/android/server/pm/PackageSetting;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/AppsFilter;->addPackage(Lcom/android/server/pm/PackageSetting;Z)V

    return-void
.end method

.method public addPackage(Lcom/android/server/pm/PackageSetting;Z)V
    .locals 2

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppsFilter;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v1, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/AppsFilter;Lcom/android/server/pm/PackageSetting;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->onChanged()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->onChanged()V

    throw v0
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public dumpQueries(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/DumpState;[ILcom/android/internal/util/function/QuadFunction;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/DumpState;",
            "[I",
            "Lcom/android/internal/util/function/QuadFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, p4, p5}, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda8;-><init>(Landroid/util/SparseArray;[ILcom/android/internal/util/function/QuadFunction;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "Queries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v2}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->isGloballyEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "  DISABLED"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  system apps queryable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/pm/AppsFilter;->mSystemAppsQueryable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    const-string v5, "forceQueryable"

    const-string v6, "  "

    move-object v2, p1

    move-object v3, p2

    move-object v7, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/AppsFilter;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    const-string v2, "  queries via package name:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    const-string v3, "    "

    invoke-static {p1, p2, v2, v3, v1}, Lcom/android/server/pm/AppsFilter;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    const-string v2, "  queries via intent:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-static {p1, p2, v2, v3, v1}, Lcom/android/server/pm/AppsFilter;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    const-string v2, "  queryable via interaction:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length v2, p4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, p4, v4

    const-string v6, "    User "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    if-nez p2, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_1
    iget-object v7, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    const-string v8, "      "

    invoke-static {p1, v6, v7, v8, v1}, Lcom/android/server/pm/AppsFilter;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "  queryable via uses-library:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mQueryableViaUsesLibrary:Landroid/util/SparseSetArray;

    invoke-static {p1, p2, v2, v3, v1}, Lcom/android/server/pm/AppsFilter;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    return-void
.end method

.method public getFeatureConfig()Lcom/android/server/pm/AppsFilter$FeatureConfig;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    return-object v0
.end method

.method public getVisibilityAllowList(Lcom/android/server/pm/PackageSetting;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "[I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v4, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    new-instance v3, Landroid/util/SparseArray;

    array-length v4, v2

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_6

    aget v5, v2, v4

    invoke-virtual/range {p3 .. p3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/util/ArrayMap;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    :goto_1
    if-ltz v9, :cond_5

    move-object/from16 v10, p3

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    iget v12, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    const/16 v13, 0x2710

    if-ge v12, v13, :cond_1

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    invoke-static {v6, v13, v8, v12}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v14

    if-ltz v14, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v5, v12}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15

    invoke-virtual {v0, v15, v11, v1, v5}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplication(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v16

    if-nez v16, :cond_4

    if-nez v7, :cond_3

    array-length v13, v6

    new-array v7, v13, [I

    :cond_3
    not-int v13, v14

    sub-int v0, v8, v13

    const/4 v1, 0x0

    invoke-static {v6, v13, v7, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v12, v6, v13

    add-int/lit8 v0, v13, 0x1

    sub-int v2, v8, v13

    invoke-static {v7, v1, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_1

    :cond_5
    move-object/from16 v10, p3

    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_0

    :cond_6
    move-object/from16 v10, p3

    return-object v3
.end method

.method getVisibilityAllowList(Lcom/android/server/pm/PackageSetting;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "[I",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/android/server/utils/WatchedArrayMap;->untrackedStorage()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/AppsFilter;->getVisibilityAllowList(Lcom/android/server/pm/PackageSetting;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public grantImplicitAccess(II)Z
    .locals 4

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    move-result v1

    nop

    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v3, p1, p2, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->onChanged()V

    :cond_2
    return v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$addPackage$1$AppsFilter(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 12

    nop

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AppsFilter;->addPackageInternal(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v9

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Lcom/android/server/utils/WatchedSparseBooleanMatrix;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v11

    move-object v5, p0

    move-object v8, v4

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Lcom/android/server/utils/WatchedSparseBooleanMatrix;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public synthetic lambda$removePackage$7$AppsFilter(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    array-length v12, v11

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ge v0, v12, :cond_1

    aget-object v2, v11, v0

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget v3, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    iget-object v4, v8, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseSetArray;->remove(I)V

    iget-object v4, v8, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-virtual {v4}, Landroid/util/SparseSetArray;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_1
    if-ltz v4, :cond_0

    iget-object v1, v8, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v0, v8, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    if-nez v0, :cond_2

    iget-object v0, v8, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    iget v2, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseSetArray;->remove(I)V

    iget-object v0, v8, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2
    if-ltz v0, :cond_2

    iget-object v2, v8, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v3

    iget v4, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    iget-object v0, v8, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v2, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseSetArray;->remove(I)V

    iget-object v0, v8, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_3
    if-ltz v0, :cond_3

    iget-object v2, v8, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v3

    iget v4, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_3
    iget-object v0, v8, Lcom/android/server/pm/AppsFilter;->mQueryableViaUsesLibrary:Landroid/util/SparseSetArray;

    iget v2, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseSetArray;->remove(I)V

    iget-object v0, v8, Lcom/android/server/pm/AppsFilter;->mQueryableViaUsesLibrary:Landroid/util/SparseSetArray;

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_4
    if-ltz v0, :cond_4

    iget-object v2, v8, Lcom/android/server/pm/AppsFilter;->mQueryableViaUsesLibrary:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v3

    iget v4, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_4
    iget-object v0, v8, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v2, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v0, :cond_5

    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v8, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    invoke-direct {v8, v10, v0}, Lcom/android/server/pm/AppsFilter;->collectProtectedBroadcasts(Landroid/util/ArrayMap;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v3

    iput-object v3, v8, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_5

    iput-boolean v1, v8, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    :cond_5
    iget-object v0, v8, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iget-object v2, v9, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/om/OverlayReferenceMapper;->removePkg(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v13

    iget-object v0, v8, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v0, v9, v1}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->updatePackageState(Lcom/android/server/pm/PackageSetting;Z)V

    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_7

    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_5
    if-ltz v0, :cond_7

    iget-object v2, v9, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v9, :cond_6

    goto :goto_6

    :cond_6
    iget-object v2, v9, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v8, v2, v10}, Lcom/android/server/pm/AppsFilter;->addPackageInternal(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)Landroid/util/ArraySet;

    :goto_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_7
    iget-object v14, v8, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    iget v0, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {v8, v0}, Lcom/android/server/pm/AppsFilter;->removeAppIdFromVisibilityCache(I)V

    iget-object v0, v8, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    if-eqz v0, :cond_9

    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_9

    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_7
    if-ltz v0, :cond_9

    iget-object v1, v9, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    move-object v15, v1

    if-ne v15, v9, :cond_8

    goto :goto_8

    :cond_8
    iget-object v2, v8, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    iget-object v3, v9, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->size()I

    move-result v7

    move-object/from16 v1, p0

    move-object v4, v15

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Lcom/android/server/utils/WatchedSparseBooleanMatrix;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    :goto_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_9
    iget-object v0, v8, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    if-eqz v0, :cond_b

    if-eqz v13, :cond_b

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v15, v1

    invoke-virtual {v10, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v16, v1

    if-nez v16, :cond_a

    goto :goto_a

    :cond_a
    iget-object v2, v8, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/util/ArrayMap;->size()I

    move-result v7

    move-object/from16 v1, p0

    move-object/from16 v4, v16

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Lcom/android/server/utils/WatchedSparseBooleanMatrix;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/AppsFilter;->onChanged()V

    monitor-exit v14

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic lambda$shouldFilterApplicationInternal$8$AppsFilter(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/AppsFilter;->recomputeComponentVisibility(Landroid/util/ArrayMap;)V

    return-void
.end method

.method public synthetic lambda$updateEntireShouldFilterCache$2$AppsFilter(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 3

    nop

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AppsFilter;->updateEntireShouldFilterCacheInner(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public synthetic lambda$updateEntireShouldFilterCacheAsync$5$AppsFilter()V
    .locals 8

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [[Landroid/content/pm/UserInfo;

    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v5, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, v0, v3}, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;Landroid/util/ArrayMap;[[Landroid/content/pm/UserInfo;)V

    invoke-interface {v4, v5}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    const/4 v4, 0x0

    aget-object v5, v3, v4

    invoke-direct {p0, v0, v5}, Lcom/android/server/pm/AppsFilter;->updateEntireShouldFilterCacheInner(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    move-result-object v5

    new-array v2, v2, [Z

    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v7, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0, v2, v1}, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda1;-><init>(Landroid/util/ArrayMap;[ZLandroid/util/ArrayMap;)V

    invoke-interface {v6, v7}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    aget-boolean v4, v2, v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->updateEntireShouldFilterCache()V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iput-object v5, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    monitor-exit v4

    :goto_0
    return-void

    :catchall_0
    move-exception v6

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public synthetic lambda$updateShouldFilterCacheForPackage$6$AppsFilter(Ljava/lang/String;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 7

    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Lcom/android/server/utils/WatchedSparseBooleanMatrix;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    return-void
.end method

.method public onSystemReady()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuildIfDeferred()V

    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v0}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->onSystemReady()V

    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->updateEntireShouldFilterCacheAsync()V

    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->onChanged()V

    return-void
.end method

.method public onUsersChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->updateEntireShouldFilterCache()V

    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->onChanged()V

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

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public removePackage(Lcom/android/server/pm/PackageSetting;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v1, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/AppsFilter;Lcom/android/server/pm/PackageSetting;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    return-void
.end method

.method public shouldFilterApplication(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z
    .locals 9

    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_6

    iget v3, p3, Lcom/android/server/pm/PackageSetting;->appId:I

    if-lt v3, v2, :cond_6

    iget v2, p3, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v0, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mCacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1

    const-string v3, "AppsFilter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encountered calling uid with no cached rules: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v4

    :cond_1
    iget v3, p3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {p4, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    iget-object v5, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v5, v3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_2

    const-string v6, "AppsFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Encountered calling -> target with no cached rules: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v4

    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v4, v1, v5}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAt(II)Z

    move-result v4

    monitor-exit v2

    return v4

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplicationInternal(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v3

    if-nez v3, :cond_4

    monitor-exit v2

    return v1

    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v1, v0}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "BLOCKED"

    invoke-static {p2, p3, v1}, Lcom/android/server/pm/AppsFilter;->log(Lcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    return v4

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_6
    :goto_0
    return v1

    :catchall_1
    move-exception v0

    throw v0
.end method

.method public snapshot()Lcom/android/server/pm/AppsFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/AppsFilter;

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilter;->snapshot()Lcom/android/server/pm/AppsFilter;

    move-result-object v0

    return-object v0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method
