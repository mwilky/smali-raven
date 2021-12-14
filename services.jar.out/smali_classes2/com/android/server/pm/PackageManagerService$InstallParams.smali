.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field final autoRevokePermissionsMode:I

.field final forceQueryableOverride:Z

.field final grantedRuntimePermissions:[Ljava/lang/String;

.field installFlags:I

.field final installReason:I

.field final installSource:Lcom/android/server/pm/InstallSource;

.field final mDataLoaderType:I

.field final mInstallScenario:I

.field final mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field mParentInstallParams:Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;

.field mRet:I

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final requiredInstalledVersionCode:J

.field final signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final volumeUuid:Ljava/lang/String;

.field final whitelistedRestrictedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/parsing/PackageLite;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p1, p8}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallSource;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installSource:Lcom/android/server/pm/InstallSource;

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->autoRevokePermissionsMode:I

    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mInstallScenario:I

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->forceQueryableOverride:Z

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mDataLoaderType:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;Landroid/os/UserHandle;Landroid/content/pm/PackageParser$SigningDetails;ILandroid/content/pm/parsing/PackageLite;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p1, p6}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    invoke-static {p2}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v0, p5, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget v1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-static {p1, v0, p8, v1}, Lcom/android/server/pm/PackageManagerService;->access$5900(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    iget v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mInstallScenario:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    iget-object v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    iget-object v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iget-object v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iget v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->autoRevokePermissionsMode:I

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-boolean v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->forceQueryableOverride:Z

    iget-object v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v0, :cond_0

    iget-object v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mDataLoaderType:I

    iget-wide v0, p4, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .locals 7

    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v3, :cond_5

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    monitor-exit v2

    return v6

    :cond_0
    if-ne v1, v6, :cond_1

    monitor-exit v2

    return v6

    :cond_1
    if-ne v1, v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v4

    if-eqz v4, :cond_3

    monitor-exit v2

    return v5

    :cond_3
    monitor-exit v2

    return v6

    :cond_4
    const/4 v4, -0x4

    monitor-exit v2

    return v4

    :cond_5
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v2, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    return v2

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private overrideInstallLocation(Landroid/content/pm/PackageInfoLite;)I
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2700()Z

    move-result v0

    const-string v6, "PackageManager"

    if-eqz v0, :cond_1

    if-eqz v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkgLite for install: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    const/4 v7, -0x6

    const/4 v8, -0x1

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    if-eqz v0, :cond_2

    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid stage location"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, v2, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    if-ne v0, v8, :cond_5

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v9

    nop

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v10

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v12}, Lcom/android/server/pm/PackageManagerServiceUtils;->calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-ltz v0, :cond_4

    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v15, 0x0

    add-long v16, v12, v10

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v20}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JJI)V

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v14, v15, v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "Failed to free cache"

    invoke-static {v6, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    move-object v0, v2

    :goto_1
    iget v2, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    if-ne v2, v7, :cond_6

    iput v8, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_3

    :cond_5
    :goto_2
    move-object v0, v2

    :cond_6
    :goto_3
    const/4 v2, 0x1

    iget v3, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_7

    const/16 v2, -0x13

    goto :goto_5

    :cond_7
    const/4 v4, -0x4

    if-ne v3, v4, :cond_8

    const/4 v2, -0x1

    goto :goto_5

    :cond_8
    if-ne v3, v8, :cond_9

    const/4 v2, -0x4

    goto :goto_5

    :cond_9
    const/4 v4, -0x2

    if-ne v3, v4, :cond_a

    const/4 v2, -0x2

    goto :goto_5

    :cond_a
    if-ne v3, v7, :cond_b

    const/4 v2, -0x3

    goto :goto_5

    :cond_b
    const/4 v4, -0x5

    if-ne v3, v4, :cond_c

    const/16 v2, -0x14

    goto :goto_5

    :cond_c
    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    move-result v3

    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v6, v4, 0x10

    if-eqz v6, :cond_d

    const/16 v16, 0x1

    goto :goto_4

    :cond_d
    const/16 v16, 0x0

    :goto_4
    move/from16 v6, v16

    if-nez v6, :cond_f

    const/4 v7, 0x2

    if-ne v3, v7, :cond_e

    and-int/lit8 v4, v4, -0x11

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_5

    :cond_e
    or-int/lit8 v4, v4, 0x10

    iput v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    :cond_f
    :goto_5
    return v2
.end method

.method private processPendingInstall()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->access$6100(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    :cond_0
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mParentInstallParams:Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->tryProcessInstallRequest(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerService;->access$5600(Lcom/android/server/pm/PackageManagerService;I)Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v4, v1, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-ne v4, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    new-instance v4, Lcom/android/server/pm/PackageManagerService$InstallRequest;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, v5}, Lcom/android/server/pm/PackageManagerService$InstallRequest;-><init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;Lcom/android/server/pm/PackageManagerService$1;)V

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/android/server/pm/PackageManagerService;->access$5800(Lcom/android/server/pm/PackageManagerService;ZLjava/util/List;)V

    :goto_1
    return-void
.end method


# virtual methods
.method handleReturnCode()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->processPendingInstall()V

    return-void
.end method

.method public handleStartCopy()V
    .locals 7

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const/high16 v3, 0x200000

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-wide v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    invoke-static {v4, v0, v5, v6, v2}, Lcom/android/server/pm/PackageManagerService;->access$6000(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;JI)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    if-eq v2, v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->overrideInstallLocation(Landroid/content/pm/PackageInfoLite;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
