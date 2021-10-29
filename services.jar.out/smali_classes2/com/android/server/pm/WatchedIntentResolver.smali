.class public abstract Lcom/android/server/pm/WatchedIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "WatchedIntentResolver.java"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/android/server/pm/WatchedIntentFilter;",
        "R:",
        "Lcom/android/server/pm/WatchedIntentFilter;",
        ">",
        "Lcom/android/server/IntentResolver<",
        "TF;TR;>;",
        "Lcom/android/server/utils/Watchable;",
        "Lcom/android/server/utils/Snappable;"
    }
.end annotation


# static fields
.field private static final sResolvePrioritySorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/pm/WatchedIntentFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mWatchable:Lcom/android/server/utils/Watchable;

.field private final mWatcher:Lcom/android/server/utils/Watcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/WatchedIntentResolver$2;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentResolver$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/WatchedIntentResolver;->sResolvePrioritySorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatchable:Lcom/android/server/utils/Watchable;

    new-instance v0, Lcom/android/server/pm/WatchedIntentResolver$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/WatchedIntentResolver$1;-><init>(Lcom/android/server/pm/WatchedIntentResolver;)V

    iput-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatcher:Lcom/android/server/utils/Watcher;

    return-void
.end method


# virtual methods
.method public addFilter(Lcom/android/server/pm/WatchedIntentFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->addFilter(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/WatchedIntentFilter;->registerObserver(Lcom/android/server/utils/Watcher;)V

    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentResolver;->onChanged()V

    return-void
.end method

.method public bridge synthetic addFilter(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    return-void
.end method

.method protected copyFrom(Lcom/android/server/pm/WatchedIntentResolver;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->copyFrom(Lcom/android/server/IntentResolver;)V

    return-void
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {v0, p1}, Lcom/android/server/utils/Watchable;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/WatchedIntentFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "TF;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/server/IntentResolver;->findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {v0, p1}, Lcom/android/server/utils/Watchable;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result v0

    return v0
.end method

.method protected onChanged()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/android/server/pm/WatchedIntentResolver;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {v0, p1}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/WatchedIntentFilter;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->removeFilter(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentResolver;->onChanged()V

    return-void
.end method

.method public bridge synthetic removeFilter(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    return-void
.end method

.method protected removeFilterInternal(Lcom/android/server/pm/WatchedIntentFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatcher:Lcom/android/server/utils/Watcher;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/WatchedIntentFilter;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentResolver;->onChanged()V

    return-void
.end method

.method protected bridge synthetic removeFilterInternal(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilterInternal(Lcom/android/server/pm/WatchedIntentFilter;)V

    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/pm/WatchedIntentResolver;->sResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentResolver;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {v0, p1}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method
