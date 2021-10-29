.class abstract Lcom/android/server/media/MediaRoute2Provider;
.super Ljava/lang/Object;
.source "MediaRoute2Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaRoute2Provider$Callback;
    }
.end annotation


# instance fields
.field mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

.field final mComponentName:Landroid/content/ComponentName;

.field mIsSystemRouteProvider:Z

.field final mLock:Ljava/lang/Object;

.field private volatile mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

.field final mSessionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUniqueId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    const-string v0, "Component name must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract deselectRoute(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public getProviderInfo()Landroid/media/MediaRoute2ProviderInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    return-object v0
.end method

.method public getSessionInfos()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method notifyProviderState()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onProviderStateChanged(Lcom/android/server/media/MediaRoute2Provider;)V

    :cond_0
    return-void
.end method

.method public abstract prepareReleaseSession(Ljava/lang/String;)V
.end method

.method public abstract releaseSession(JLjava/lang/String;)V
.end method

.method public abstract requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract selectRoute(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method setAndNotifyProviderState(Landroid/media/MediaRoute2ProviderInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRoute2Provider;->setProviderState(Landroid/media/MediaRoute2ProviderInfo;)V

    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderState()V

    return-void
.end method

.method public setCallback(Lcom/android/server/media/MediaRoute2Provider$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    return-void
.end method

.method setProviderState(Landroid/media/MediaRoute2ProviderInfo;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/media/MediaRoute2ProviderInfo$Builder;

    invoke-direct {v0, p1}, Landroid/media/MediaRoute2ProviderInfo$Builder;-><init>(Landroid/media/MediaRoute2ProviderInfo;)V

    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->setUniqueId(Ljava/lang/String;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2ProviderInfo$Builder;->setSystemRouteProvider(Z)Landroid/media/MediaRoute2ProviderInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;->build()Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    :goto_0
    return-void
.end method

.method public abstract setRouteVolume(JLjava/lang/String;I)V
.end method

.method public abstract setSessionVolume(JLjava/lang/String;I)V
.end method

.method public abstract transferToRoute(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V
.end method
