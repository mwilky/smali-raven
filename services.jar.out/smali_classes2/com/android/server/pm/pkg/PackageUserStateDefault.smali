.class public Lcom/android/server/pm/pkg/PackageUserStateDefault;
.super Ljava/lang/Object;
.source "PackageUserStateDefault.java"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageUserStateInternal;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCeDataInode()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDisabledComponents()Landroid/util/ArraySet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getDisabledComponents()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateDefault;->getDisabledComponents()Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDistractionFlags()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getEnabledComponents()Landroid/util/ArraySet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getEnabledComponents()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateDefault;->getEnabledComponents()Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEnabledState()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFirstInstallTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHarmfulAppWarning()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInstallReason()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLastDisableAppCaller()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOverrideLabelIconForComponent(Landroid/content/ComponentName;)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSharedLibraryOverlayPaths()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getSplashScreenTheme()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/SuspendParams;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUninstallReason()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isComponentDisabled(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isComponentEnabled(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHidden()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInstalled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isInstantApp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNotLaunched()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isStopped()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSuspended()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVirtualPreload()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
