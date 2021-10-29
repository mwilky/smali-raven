.class Lcom/android/server/pm/PackageManagerService$PackageManagerNative;
.super Landroid/content/pm/IPackageManagerNative$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageManagerNative"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageManagerNative$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method


# virtual methods
.method public getAllPackages()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getAllPackages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getInstallerForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    const-string v3, "preload"

    return-object v3

    :cond_1
    const-string v3, ""

    return-object v3
.end method

.method public getLocationFlags(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    or-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x4

    :cond_1
    or-int/2addr v2, v3

    return v2

    :cond_2
    new-instance v2, Landroid/os/RemoteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t get ApplicationInfo for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getModuleMetadataPackageName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$8600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ModuleInfoProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ModuleInfoProvider;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamesForUids([I)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    array-length v2, p1

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PackageManagerService;->getNamesForUids([I)[Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    array-length v2, p1

    new-array v2, v2, [Ljava/lang/String;

    :goto_0
    move-object v1, v2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_3

    aget-object v3, v1, v2

    if-nez v3, :cond_2

    const-string v3, ""

    aput-object v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    return-object v1

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uids: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "names: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "results: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "throwing exception"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v2

    :cond_4
    :goto_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public getTargetSdkVersionForPackage(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t get targetSdkVersion for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getVersionCodeForPackage(Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hasSha256SigningCertificate(Ljava/lang/String;[B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/pm/PackageManagerService;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result v0

    return v0
.end method

.method public hasSystemFeature(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isAudioPlaybackCaptureAllowed([Ljava/lang/String;)[Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    array-length v1, p1

    new-array v1, v1, [Z

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v4, p1, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isAudioPlaybackCaptureAllowed()Z

    move-result v5

    :goto_1
    aput-boolean v5, v1, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public isPackageDebuggable(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    new-instance v2, Landroid/os/RemoteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t get debug flag for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public registerPackageChangeObserver(Landroid/content/pm/IPackageChangeObserver;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$8500(Lcom/android/server/pm/PackageManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Landroid/content/pm/IPackageChangeObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageManagerService$PackageChangeObserverDeathRecipient;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v2, v3, p1}, Lcom/android/server/pm/PackageManagerService$PackageChangeObserverDeathRecipient;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/IPackageChangeObserver;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "PackageManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$8500(Lcom/android/server/pm/PackageManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size of mPackageChangeObservers after registry is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$8500(Lcom/android/server/pm/PackageManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unregisterPackageChangeObserver(Landroid/content/pm/IPackageChangeObserver;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$8500(Lcom/android/server/pm/PackageManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$8500(Lcom/android/server/pm/PackageManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size of mPackageChangeObservers after unregistry is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$8500(Lcom/android/server/pm/PackageManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
