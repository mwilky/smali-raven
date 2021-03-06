.class Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;
.super Ljava/lang/Object;
.source "OomAdjuster.java"

# interfaces
.implements Lcom/android/server/compat/CompatChange$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OomAdjuster$PlatformCompatCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheItem"
.end annotation


# instance fields
.field private final mCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mChangeId:J

.field private final mLock:Ljava/lang/Object;

.field private final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method constructor <init>(Lcom/android/server/compat/PlatformCompat;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iput-wide p2, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;->mChangeId:J

    invoke-virtual {p1, p2, p3, p0}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    return-void
.end method


# virtual methods
.method invalidate(Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isChangeEnabled(Landroid/content/pm/ApplicationInfo;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iget-wide v4, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;->mChangeId:J

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    monitor-exit v0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    monitor-exit v0

    return v3

    :cond_1
    new-instance v3, Landroid/util/Pair;

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iget-wide v5, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;->mChangeId:J

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCompatChange(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster$PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
