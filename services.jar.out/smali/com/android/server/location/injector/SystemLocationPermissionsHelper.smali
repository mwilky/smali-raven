.class public Lcom/android/server/location/injector/SystemLocationPermissionsHelper;
.super Lcom/android/server/location/injector/LocationPermissionsHelper;
.source "SystemLocationPermissionsHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInited:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/AppOpsHelper;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/server/location/injector/LocationPermissionsHelper;-><init>(Lcom/android/server/location/injector/AppOpsHelper;)V

    iput-object p1, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected hasPermission(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v3

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public synthetic lambda$onSystemReady$0$SystemLocationPermissionsHelper(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->notifyLocationPermissionsChanged(I)V

    return-void
.end method

.method public synthetic lambda$onSystemReady$1$SystemLocationPermissionsHelper(I)V
    .locals 2

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/injector/SystemLocationPermissionsHelper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSystemReady()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemLocationPermissionsHelper;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mInited:Z

    return-void
.end method
