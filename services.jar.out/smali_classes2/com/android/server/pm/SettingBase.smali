.class public abstract Lcom/android/server/pm/SettingBase;
.super Ljava/lang/Object;
.source "SettingBase.java"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field protected final mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mWatchable:Lcom/android/server/utils/Watchable;

.field pkgFlags:I

.field pkgPrivateFlags:I


# direct methods
.method constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingBase;->setFlags(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/SettingBase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v0}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;->doCopy(Lcom/android/server/pm/SettingBase;)V

    return-void
.end method

.method private doCopy(Lcom/android/server/pm/SettingBase;)V
    .locals 2

    iget v0, p1, Lcom/android/server/pm/SettingBase;->pkgFlags:I

    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgFlags:I

    iget v0, p1, Lcom/android/server/pm/SettingBase;->pkgPrivateFlags:I

    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgPrivateFlags:I

    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    iget-object v1, p1, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionState;->copyFrom(Lcom/android/server/pm/permission/LegacyPermissionState;)V

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/pm/SettingBase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;->doCopy(Lcom/android/server/pm/SettingBase;)V

    return-void
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {v0, p1}, Lcom/android/server/utils/Watchable;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    return-object v0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {v0, p1}, Lcom/android/server/utils/Watchable;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result v0

    return v0
.end method

.method protected onChanged()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/android/server/pm/SettingBase;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {v0, p1}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method setFlags(I)V
    .locals 1

    const v0, 0x40001

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgFlags:I

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method setPrivateFlags(I)V
    .locals 1

    const v0, 0x402e0208

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgPrivateFlags:I

    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged()V

    return-void
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mWatchable:Lcom/android/server/utils/Watchable;

    invoke-interface {v0, p1}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method
