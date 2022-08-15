.class public final Lcom/android/server/pm/InstallParams;
.super Lcom/android/server/pm/HandlerParams;
.source "InstallParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;
    }
.end annotation


# instance fields
.field public final mAllowlistedRestrictedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mAutoRevokePermissionsMode:I

.field public final mDataLoaderType:I

.field public final mForceQueryableOverride:Z

.field public final mGrantedRuntimePermissions:[Ljava/lang/String;

.field public mInstallFlags:I

.field public final mInstallReason:I

.field public final mInstallScenario:I

.field public final mInstallSource:Lcom/android/server/pm/InstallSource;

.field public final mMoveInfo:Lcom/android/server/pm/MoveInfo;

.field public final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field public final mOriginInfo:Lcom/android/server/pm/OriginInfo;

.field public final mPackageAbiOverride:Ljava/lang/String;

.field public final mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field public final mPackageSource:I

.field public mParentInstallParams:Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;

.field public final mRequiredInstalledVersionCode:J

.field public mRet:I

.field public final mSigningDetails:Landroid/content/pm/SigningDetails;

.field public final mVolumeUuid:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$jbPYK1dOf5qsZh9SAizHgadlSi0(Lcom/android/server/pm/InstallParams;ZLjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstallParams;->lambda$processInstallRequestsAsync$0(ZLjava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprocessInstallRequestsAsync(Lcom/android/server/pm/InstallParams;ZLjava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallParams;->processInstallRequestsAsync(ZLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    invoke-direct {p0, p7, p11}, Lcom/android/server/pm/HandlerParams;-><init>(Landroid/os/UserHandle;Lcom/android/server/pm/PackageManagerService;)V

    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iput-object p2, p0, Lcom/android/server/pm/InstallParams;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iput-object p3, p0, Lcom/android/server/pm/InstallParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    iput p4, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/InstallSource;

    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iput-object p6, p0, Lcom/android/server/pm/InstallParams;->mVolumeUuid:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/pm/InstallParams;->mPackageAbiOverride:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mGrantedRuntimePermissions:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/server/pm/InstallParams;->mAutoRevokePermissionsMode:I

    sget-object p1, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mSigningDetails:Landroid/content/pm/SigningDetails;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/pm/InstallParams;->mInstallReason:I

    iput p1, p0, Lcom/android/server/pm/InstallParams;->mInstallScenario:I

    iput-boolean p1, p0, Lcom/android/server/pm/InstallParams;->mForceQueryableOverride:Z

    iput p1, p0, Lcom/android/server/pm/InstallParams;->mDataLoaderType:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/server/pm/InstallParams;->mRequiredInstalledVersionCode:J

    iput p9, p0, Lcom/android/server/pm/InstallParams;->mPackageSource:I

    iput-object p10, p0, Lcom/android/server/pm/InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;Landroid/os/UserHandle;Landroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    invoke-direct {p0, p5, p9}, Lcom/android/server/pm/HandlerParams;-><init>(Landroid/os/UserHandle;Lcom/android/server/pm/PackageManagerService;)V

    invoke-static {p1}, Lcom/android/server/pm/OriginInfo;->fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object p1, p4, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget p5, p3, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-virtual {p0, p1, p7, p5}, Lcom/android/server/pm/InstallParams;->fixUpInstallReason(Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/InstallParams;->mInstallReason:I

    iget p1, p3, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    iput p1, p0, Lcom/android/server/pm/InstallParams;->mInstallScenario:I

    iput-object p2, p0, Lcom/android/server/pm/InstallParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    iget p1, p3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput p1, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    iput-object p4, p0, Lcom/android/server/pm/InstallParams;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object p1, p3, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mVolumeUuid:Ljava/lang/String;

    iget-object p1, p3, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mPackageAbiOverride:Ljava/lang/String;

    iget-object p1, p3, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mGrantedRuntimePermissions:[Ljava/lang/String;

    iget-object p1, p3, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/pm/InstallParams;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    iget p1, p3, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput p1, p0, Lcom/android/server/pm/InstallParams;->mAutoRevokePermissionsMode:I

    iput-object p6, p0, Lcom/android/server/pm/InstallParams;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iget-boolean p1, p3, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    iput-boolean p1, p0, Lcom/android/server/pm/InstallParams;->mForceQueryableOverride:Z

    iget-object p1, p3, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/android/server/pm/InstallParams;->mDataLoaderType:I

    iget-wide p1, p3, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide p1, p0, Lcom/android/server/pm/InstallParams;->mRequiredInstalledVersionCode:J

    iget p1, p3, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    iput p1, p0, Lcom/android/server/pm/InstallParams;->mPackageSource:I

    iput-object p8, p0, Lcom/android/server/pm/InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    return-void
.end method

.method private synthetic lambda$processInstallRequestsAsync$0(ZLjava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallPackageHelper;->processInstallRequests(ZLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final createInstallArgs(Lcom/android/server/pm/InstallParams;)Lcom/android/server/pm/InstallArgs;
    .locals 0

    iget-object p0, p1, Lcom/android/server/pm/InstallParams;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/server/pm/MoveInstallArgs;

    invoke-direct {p0, p1}, Lcom/android/server/pm/MoveInstallArgs;-><init>(Lcom/android/server/pm/InstallParams;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/server/pm/FileInstallArgs;

    invoke-direct {p0, p1}, Lcom/android/server/pm/FileInstallArgs;-><init>(Lcom/android/server/pm/InstallParams;)V

    return-object p0
.end method

.method public final fixUpInstallReason(Ljava/lang/String;II)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const-string v1, "android.permission.INSTALL_PACKAGES"

    invoke-interface {v0, v1, p2}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    return p3

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return p2

    :cond_1
    if-ne p3, p2, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return p3
.end method

.method public handleReturnCode()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/InstallParams;->processPendingInstall()V

    return-void
.end method

.method public handleStartCopy()V
    .locals 9

    iget v0, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput v2, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v4, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/InstallParams;->mPackageAbiOverride:Ljava/lang/String;

    invoke-static {v1, v3, v4, v0, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    const/high16 v3, 0x200000

    and-int/2addr v3, v1

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/HandlerParams;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-wide v5, p0, Lcom/android/server/pm/InstallParams;->mRequiredInstalledVersionCode:J

    invoke-virtual {v3, v0, v5, v6, v1}, Lcom/android/server/pm/InstallPackageHelper;->verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    if-eq v1, v2, :cond_2

    return-void

    :cond_2
    iget v1, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkgLite for install: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v2, v1, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    if-nez v2, :cond_5

    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v2, -0x1

    if-ne v4, v2, :cond_5

    iget-object v3, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, p0, Lcom/android/server/pm/InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v6, v1, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/InstallParams;->mPackageAbiOverride:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService;->freeCacheForInstallation(ILandroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    :cond_5
    iget-object v1, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    iget v2, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->installLocation:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/pm/InstallParams;->overrideInstallLocation(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    return-void
.end method

.method public installStage()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v1, "installStage"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/HandlerParams;->setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/HandlerParams;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/HandlerParams;->setTraceCookie(I)Lcom/android/server/pm/HandlerParams;

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "queueInstall"

    invoke-static {v3, v4, v2, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public installStage(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallParams;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;

    iget-object v2, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v1, p0, p0, p1, v2}, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;-><init>(Lcom/android/server/pm/InstallParams;Lcom/android/server/pm/InstallParams;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    const-string p1, "installStageMultiPackage"

    invoke-virtual {v1, p1}, Lcom/android/server/pm/HandlerParams;->setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/HandlerParams;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/HandlerParams;->setTraceCookie(I)Lcom/android/server/pm/HandlerParams;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-wide/32 v2, 0x40000

    invoke-static {v2, v3, p1, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    const-string v1, "queueInstall"

    invoke-static {v2, v3, v1, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public movePackage()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v1, "movePackage"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/HandlerParams;->setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/HandlerParams;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/HandlerParams;->setTraceCookie(I)Lcom/android/server/pm/HandlerParams;

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "queueInstall"

    invoke-static {v3, v4, v2, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final overrideInstallLocation(Ljava/lang/String;II)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v1, v0, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid stage location"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    invoke-static {p2}, Lcom/android/internal/content/InstallLocationUtils;->getInstallationErrorCode(I)I

    move-result p0

    return p0

    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isExternalStorage()Z

    move-result p1

    invoke-static {p3, p2, v1, v2, p1}, Lcom/android/internal/content/InstallLocationUtils;->installLocationPolicy(IIIZZ)I

    move-result p2

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p1, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    and-int/lit8 p3, p1, 0x10

    const/4 v0, 0x1

    if-eqz p3, :cond_4

    move p3, v0

    goto :goto_1

    :cond_4
    const/4 p3, 0x0

    :goto_1
    if-nez p3, :cond_6

    const/4 p3, 0x2

    if-ne p2, p3, :cond_5

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    goto :goto_2

    :cond_5
    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    :cond_6
    :goto_2
    return v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final processInstallRequestsAsync(ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallRequest;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallParams$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/InstallParams$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallParams;ZLjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final processPendingInstall()V
    .locals 5

    invoke-virtual {p0, p0}, Lcom/android/server/pm/InstallParams;->createInstallArgs(Lcom/android/server/pm/InstallParams;)Lcom/android/server/pm/InstallArgs;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/InstallArgs;->copyApk()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    :cond_0
    iget v1, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/InstallParams;->mParentInstallParams:Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;

    if-eqz v1, :cond_2

    iget p0, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    invoke-virtual {v1, v0, p0}, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->tryProcessInstallRequest(Lcom/android/server/pm/InstallArgs;I)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/android/server/pm/PackageInstalledInfo;

    iget v3, p0, Lcom/android/server/pm/InstallParams;->mRet:I

    invoke-direct {v1, v3}, Lcom/android/server/pm/PackageInstalledInfo;-><init>(I)V

    iget v3, v1, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    if-ne v3, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Lcom/android/server/pm/InstallRequest;

    invoke-direct {v3, v0, v1}, Lcom/android/server/pm/InstallRequest;-><init>(Lcom/android/server/pm/InstallArgs;Lcom/android/server/pm/PackageInstalledInfo;)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/server/pm/InstallParams;->processInstallRequestsAsync(ZLjava/util/List;)V

    :goto_1
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

    iget-object p0, p0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object p0, p0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
