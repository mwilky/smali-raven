.class public Lcom/android/server/pm/PreferredIntentResolver;
.super Lcom/android/server/pm/WatchedIntentResolver;
.source "PreferredIntentResolver.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/WatchedIntentResolver<",
        "Lcom/android/server/pm/PreferredActivity;",
        "Lcom/android/server/pm/PreferredActivity;",
        ">;",
        "Lcom/android/server/utils/Snappable;"
    }
.end annotation


# instance fields
.field final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/PreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentResolver;-><init>()V

    invoke-direct {p0}, Lcom/android/server/pm/PreferredIntentResolver;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PreferredIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/PreferredIntentResolver;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentResolver;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PreferredIntentResolver;->copyFrom(Lcom/android/server/pm/WatchedIntentResolver;)V

    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PreferredIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PreferredIntentResolver;Lcom/android/server/pm/PreferredIntentResolver$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/PreferredIntentResolver;-><init>(Lcom/android/server/pm/PreferredIntentResolver;)V

    return-void
.end method

.method private makeCache()Lcom/android/server/utils/SnapshotCache;
    .locals 1

    new-instance v0, Lcom/android/server/pm/PreferredIntentResolver$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/PreferredIntentResolver$1;-><init>(Lcom/android/server/pm/PreferredIntentResolver;Lcom/android/server/pm/PreferredIntentResolver;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method


# virtual methods
.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PreferredActivity;)V
    .locals 1

    iget-object v0, p3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/PreferredComponent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/android/server/pm/PreferredActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PreferredIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PreferredActivity;)V

    return-void
.end method

.method protected getIntentFilter(Lcom/android/server/pm/PreferredActivity;)Landroid/content/IntentFilter;
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/pm/PreferredActivity;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .locals 0

    check-cast p1, Lcom/android/server/pm/PreferredActivity;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PreferredIntentResolver;->getIntentFilter(Lcom/android/server/pm/PreferredActivity;)Landroid/content/IntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/PreferredActivity;)Z
    .locals 1

    iget-object v0, p2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v0, v0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Lcom/android/server/pm/PreferredActivity;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PreferredIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/PreferredActivity;)Z

    move-result p1

    return p1
.end method

.method protected newArray(I)[Lcom/android/server/pm/PreferredActivity;
    .locals 1

    new-array v0, p1, [Lcom/android/server/pm/PreferredActivity;

    return-object v0
.end method

.method protected bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PreferredIntentResolver;->newArray(I)[Lcom/android/server/pm/PreferredActivity;

    move-result-object p1

    return-object p1
.end method

.method public shouldAddPreferredActivity(Lcom/android/server/pm/PreferredActivity;)Z
    .locals 9

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PreferredIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v2, v2, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PreferredActivity;

    iget-object v6, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v6, v6, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v6, v6, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    iget-object v7, p1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v7, v7, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    const/high16 v8, 0xfff0000

    and-int/2addr v7, v8

    if-ne v6, v7, :cond_2

    iget-object v6, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v7, p1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PreferredComponent;->sameSet(Lcom/android/server/pm/PreferredComponent;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method protected snapshot(Lcom/android/server/pm/PreferredActivity;)Lcom/android/server/pm/PreferredActivity;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/PreferredActivity;->snapshot()Lcom/android/server/pm/PreferredActivity;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public snapshot()Lcom/android/server/pm/PreferredIntentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PreferredIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/PreferredIntentResolver;->snapshot()Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic snapshot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/pm/PreferredActivity;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PreferredIntentResolver;->snapshot(Lcom/android/server/pm/PreferredActivity;)Lcom/android/server/pm/PreferredActivity;

    move-result-object p1

    return-object p1
.end method
