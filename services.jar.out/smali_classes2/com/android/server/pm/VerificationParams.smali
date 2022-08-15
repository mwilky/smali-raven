.class public final Lcom/android/server/pm/VerificationParams;
.super Lcom/android/server/pm/HandlerParams;
.source "VerificationParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;
    }
.end annotation


# instance fields
.field public final mDataLoaderType:I

.field public mErrorMessage:Ljava/lang/String;

.field public final mInstallFlags:I

.field public final mInstallSource:Lcom/android/server/pm/InstallSource;

.field public final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field public final mOriginInfo:Lcom/android/server/pm/OriginInfo;

.field public final mPackageAbiOverride:Ljava/lang/String;

.field public final mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field public mParentVerificationParams:Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;

.field public final mRequiredInstalledVersionCode:J

.field public mRet:I

.field public final mSessionId:I

.field public final mSigningDetails:Landroid/content/pm/SigningDetails;

.field public final mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

.field public mWaitForEnableRollbackToComplete:Z

.field public mWaitForIntegrityVerificationToComplete:Z

.field public mWaitForVerificationToComplete:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmErrorMessage(Lcom/android/server/pm/VerificationParams;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/VerificationParams;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRet(Lcom/android/server/pm/VerificationParams;)I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/VerificationParams;->mRet:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetIntegrityVerificationTimeout(Lcom/android/server/pm/VerificationParams;)J
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/pm/VerificationParams;->getIntegrityVerificationTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mstartVerificationTimeoutCountdown(Lcom/android/server/pm/VerificationParams;IZLcom/android/server/pm/PackageVerificationResponse;J)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/VerificationParams;->startVerificationTimeoutCountdown(IZLcom/android/server/pm/PackageVerificationResponse;J)V

    return-void
.end method

.method public constructor <init>(Landroid/os/UserHandle;Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;ILandroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    invoke-direct {p0, p1, p10}, Lcom/android/server/pm/HandlerParams;-><init>(Landroid/os/UserHandle;Lcom/android/server/pm/PackageManagerService;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/pm/VerificationParams;->mRet:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/VerificationParams;->mErrorMessage:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/pm/OriginInfo;->fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iput-object p3, p0, Lcom/android/server/pm/VerificationParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    iget p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput p1, p0, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    iput-object p5, p0, Lcom/android/server/pm/VerificationParams;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/VerificationParams;->mPackageAbiOverride:Ljava/lang/String;

    new-instance p1, Lcom/android/server/pm/VerificationInfo;

    iget-object p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iget-object p3, p4, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iget p5, p4, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-direct {p1, p2, p3, p5, p6}, Lcom/android/server/pm/VerificationInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    iput-object p1, p0, Lcom/android/server/pm/VerificationParams;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iput-object p7, p0, Lcom/android/server/pm/VerificationParams;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iget-wide p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide p1, p0, Lcom/android/server/pm/VerificationParams;->mRequiredInstalledVersionCode:J

    iget-object p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/android/server/pm/VerificationParams;->mDataLoaderType:I

    iput p8, p0, Lcom/android/server/pm/VerificationParams;->mSessionId:I

    iput-object p9, p0, Lcom/android/server/pm/VerificationParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    return-void
.end method

.method public static matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_2
    if-nez p0, :cond_3

    return-object v2

    :cond_3
    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public getDefaultVerificationResponse()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v2, "ensure_verify_apps"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "verifier_default_response"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getIntegrityVerificationTimeout()J
    .locals 5

    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "app_integrity_verification_timeout"

    const-wide/16 v1, 0x7530

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public handleIntegrityVerificationFinished()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/VerificationParams;->mWaitForIntegrityVerificationToComplete:Z

    invoke-virtual {p0}, Lcom/android/server/pm/VerificationParams;->handleReturnCode()V

    return-void
.end method

.method public handleReturnCode()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/VerificationParams;->mWaitForVerificationToComplete:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/pm/VerificationParams;->mWaitForIntegrityVerificationToComplete:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/pm/VerificationParams;->mWaitForEnableRollbackToComplete:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/VerificationParams;->sendVerificationCompleteNotification()V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleRollbackEnabled()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/VerificationParams;->mWaitForEnableRollbackToComplete:Z

    invoke-virtual {p0}, Lcom/android/server/pm/VerificationParams;->handleReturnCode()V

    return-void
.end method

.method public handleStartCopy()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/VerificationParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v2, p0, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    iget-object v4, p0, Lcom/android/server/pm/VerificationParams;->mPackageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/HandlerParams;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-wide v2, p0, Lcom/android/server/pm/VerificationParams;->mRequiredInstalledVersionCode:J

    iget v4, p0, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/server/pm/InstallPackageHelper;->verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/VerificationParams;->setReturnCode(ILjava/lang/String;)V

    iget v1, p0, Lcom/android/server/pm/VerificationParams;->mRet:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v1, v1, Lcom/android/server/pm/OriginInfo;->mExisting:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/VerificationParams;->sendApkVerificationRequest(Landroid/content/pm/PackageInfoLite;)V

    :cond_1
    iget v0, p0, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/pm/VerificationParams;->sendEnableRollbackRequest()V

    :cond_2
    return-void
.end method

.method public handleVerificationFinished()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/VerificationParams;->mWaitForVerificationToComplete:Z

    invoke-virtual {p0}, Lcom/android/server/pm/VerificationParams;->handleReturnCode()V

    return-void
.end method

.method public final isAdbVerificationEnabled(Landroid/content/pm/PackageInfoLite;IZ)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v1, "ensure_verify_apps"

    invoke-virtual {v0, p2, v1}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    if-eqz p3, :cond_2

    iget-object p2, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/VerificationParams;->packageExists(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    iget-boolean p0, p1, Landroid/content/pm/PackageInfoLite;->debuggable:Z

    xor-int/2addr p0, v0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "verifier_verify_adb_installs"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isIntegrityVerificationEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isVerificationEnabled(Landroid/content/pm/PackageInfoLite;I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/android/server/pm/VerificationInfo;->mInstallerUid:I

    :goto_0
    iget v1, p0, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    and-int/lit8 v2, v1, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    const/high16 v0, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/pm/VerificationParams;->isAdbVerificationEnabled(Landroid/content/pm/PackageInfoLite;IZ)Z

    move-result p0

    return p0

    :cond_2
    and-int/lit16 p1, v1, 0x800

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p1, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-eqz p2, :cond_3

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :try_start_0
    iget-object p1, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    :cond_3
    return v4
.end method

.method public final matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfoLite;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/server/pm/PackageVerificationState;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, v0

    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p1, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    aget-object v3, v3, v2

    iget-object v4, v3, Landroid/content/pm/VerifierInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, p2}, Lcom/android/server/pm/VerificationParams;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/HandlerParams;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/InstallPackageHelper;->getUidForVerifier(Landroid/content/pm/VerifierInfo;)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v3}, Lcom/android/server/pm/PackageVerificationState;->addSufficientVerifier(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final packageExists(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public populateInstallerExtras(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const-string v1, "android.intent.extra.ORIGINATING_URI"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/VerificationInfo;->mReferrer:Landroid/net/Uri;

    if-eqz v0, :cond_1

    const-string v1, "android.intent.extra.REFERRER"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/VerificationInfo;->mOriginatingUid:I

    if-ltz v0, :cond_2

    const-string v1, "android.intent.extra.ORIGINATING_UID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/VerificationParams;->mVerificationInfo:Lcom/android/server/pm/VerificationInfo;

    iget p0, p0, Lcom/android/server/pm/VerificationInfo;->mInstallerUid:I

    if-ltz p0, :cond_3

    const-string v0, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    return-void
.end method

.method public final sendApkVerificationRequest(Landroid/content/pm/PackageInfoLite;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v1, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I

    new-instance v0, Lcom/android/server/pm/PackageVerificationState;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageVerificationState;-><init>(Lcom/android/server/pm/VerificationParams;)V

    iget-object v2, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/pm/VerificationParams;->sendIntegrityVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/pm/VerificationParams;->sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V

    invoke-virtual {v0}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method public sendEnableRollbackRequest()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v1, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollbackToken:I

    const-wide/32 v2, 0x40000

    const-string v0, "enable_rollback"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v2, p0, Lcom/android/server/pm/VerificationParams;->mSessionId:I

    const-string v3, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v5, "android.permission.PACKAGE_ROLLBACK_AGENT"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/server/pm/VerificationParams;->mWaitForEnableRollbackToComplete:Z

    const-string v0, "rollback"

    const-string v2, "enable_rollback_timeout"

    const-wide/16 v3, 0x2710

    invoke-static {v0, v2, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v3, v5

    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/android/server/pm/VerificationParams;->mSessionId:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendIntegrityVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerificationParams;->isIntegrityVerificationEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move-object/from16 v3, p3

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageVerificationState;->setIntegrityVerificationResult(I)V

    return-void

    :cond_0
    new-instance v6, Landroid/content/Intent;

    const-string v3, "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"

    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    iget-object v5, v0, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v6, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x50000001

    invoke-virtual {v6, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v6, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, v2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const-string v5, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v6, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v3, v2, Landroid/content/pm/PackageInfoLite;->versionCode:I

    const-string v5, "android.intent.extra.VERSION_CODE"

    invoke-virtual {v6, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v2

    const-string v5, "android.intent.extra.LONG_VERSION_CODE"

    invoke-virtual {v6, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/VerificationParams;->populateInstallerExtras(Landroid/content/Intent;)V

    const-string v2, "android"

    invoke-virtual {v6, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    new-instance v11, Lcom/android/server/pm/VerificationParams$1;

    invoke-direct {v11, v0, v1}, Lcom/android/server/pm/VerificationParams$1;-><init>(Lcom/android/server/pm/VerificationParams;I)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v5 .. v15}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const-wide/32 v2, 0x40000

    const-string v5, "integrity_verification"

    invoke-static {v2, v3, v5, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iput-boolean v4, v0, Lcom/android/server/pm/VerificationParams;->mWaitForIntegrityVerificationToComplete:Z

    return-void
.end method

.method public final sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V
    .locals 31

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v2, v3, :cond_0

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    :cond_0
    move-object v11, v2

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v3, v7, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    iget v4, v7, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    and-int/lit8 v5, v4, 0x20

    const/4 v6, 0x0

    const/4 v10, 0x1

    if-eqz v5, :cond_1

    const/high16 v5, 0x80000

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    const-string v4, "debug.pm.adb_verifier_override_package"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v7, v4}, Lcom/android/server/pm/VerificationParams;->packageExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v7, v0, v2, v10}, Lcom/android/server/pm/VerificationParams;->isAdbVerificationEnabled(Landroid/content/pm/PackageInfoLite;IZ)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v3, v4

    move v4, v10

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    iget-object v5, v7, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v13

    if-nez v3, :cond_2

    const/4 v9, -0x1

    goto :goto_1

    :cond_2
    const-wide/32 v14, 0x10000000

    invoke-interface {v13, v3, v14, v15, v2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v9

    :goto_1
    invoke-virtual {v1, v9}, Lcom/android/server/pm/PackageVerificationState;->setRequiredVerifierUid(I)V

    invoke-virtual {v7, v0, v2}, Lcom/android/server/pm/VerificationParams;->isVerificationEnabled(Landroid/content/pm/PackageInfoLite;I)Z

    move-result v12

    iget-object v14, v7, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v14, v14, Lcom/android/server/pm/OriginInfo;->mExisting:Z

    if-nez v14, :cond_e

    if-nez v12, :cond_3

    goto/16 :goto_7

    :cond_3
    new-instance v15, Landroid/content/Intent;

    const-string v12, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v15, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x10000000

    invoke-virtual {v15, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v12, Ljava/io/File;

    iget-object v14, v7, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v14, v14, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    invoke-direct {v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    const-string v14, "application/vnd.android.package-archive"

    invoke-virtual {v15, v12, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v15, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v12, v7, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-wide/16 v16, 0x0

    const-string v18, "application/vnd.android.package-archive"

    move-object v14, v15

    move-object v10, v15

    move-object/from16 v15, v18

    move/from16 v18, v2

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v21

    const-string v12, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v10, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v12, v7, Lcom/android/server/pm/VerificationParams;->mInstallFlags:I

    const-string v13, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    invoke-virtual {v10, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v12, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const-string v13, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    invoke-virtual {v10, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v12, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    const-string v13, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    invoke-virtual {v10, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v12

    const-string v14, "android.content.pm.extra.VERIFICATION_LONG_VERSION_CODE"

    invoke-virtual {v10, v14, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v12, v7, Lcom/android/server/pm/VerificationParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v12}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v7, Lcom/android/server/pm/VerificationParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v13}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/pm/PackageManagerServiceUtils;->buildVerificationRootHashString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    const-string v13, "android.content.pm.extra.VERIFICATION_ROOT_HASH"

    invoke-virtual {v10, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    iget v12, v7, Lcom/android/server/pm/VerificationParams;->mDataLoaderType:I

    const-string v13, "android.content.pm.extra.DATA_LOADER_TYPE"

    invoke-virtual {v10, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v12, v7, Lcom/android/server/pm/VerificationParams;->mSessionId:I

    const-string v13, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v10, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v7, v10}, Lcom/android/server/pm/VerificationParams;->populateInstallerExtras(Landroid/content/Intent;)V

    iget v12, v7, Lcom/android/server/pm/VerificationParams;->mDataLoaderType:I

    const/4 v15, 0x2

    if-ne v12, v15, :cond_5

    iget-object v12, v7, Lcom/android/server/pm/VerificationParams;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v12}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerificationParams;->getDefaultVerificationResponse()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    const/4 v14, 0x1

    goto :goto_2

    :cond_5
    move v14, v6

    :goto_2
    iget-object v12, v7, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v12, v14}, Lcom/android/server/pm/VerificationUtils;->getVerificationTimeout(Landroid/content/Context;Z)J

    move-result-wide v28

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v7, v0, v12, v1}, Lcom/android/server/pm/VerificationParams;->matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v12

    iget-boolean v0, v0, Landroid/content/pm/PackageInfoLite;->isSdkLibrary:Z

    if-eqz v0, :cond_7

    if-nez v12, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    :cond_6
    new-instance v0, Landroid/content/ComponentName;

    const-string v13, "android"

    const-string v5, "com.android.server.sdksandbox.SdkSandboxVerifierReceiver"

    invoke-direct {v0, v13, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageVerificationState;->addSufficientVerifier(I)V

    :cond_7
    move-object v0, v12

    iget-object v1, v7, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v5, Lcom/android/server/DeviceIdleInternal;

    invoke-virtual {v1, v5}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleInternal;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v30

    const/16 v25, 0x0

    const/16 v26, 0x131

    const-string v27, ""

    move-object/from16 v22, v30

    move-wide/from16 v23, v28

    invoke-virtual/range {v22 .. v27}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    const-string v5, "PackageManager"

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_8

    const-string v0, "Additional verifiers required, but none installed."

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, -0x16

    invoke-virtual {v7, v6, v0}, Lcom/android/server/pm/VerificationParams;->setReturnCode(ILjava/lang/String;)V

    goto :goto_4

    :cond_8
    :goto_3
    if-ge v6, v13, :cond_9

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ComponentName;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v16

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x131

    const-string v20, "package verifier"

    move-object/from16 p2, v0

    move-object v0, v12

    move-object v12, v1

    move/from16 v22, v13

    move/from16 v13, v16

    move/from16 v23, v14

    move-object/from16 v14, v17

    move/from16 v24, v15

    move-wide/from16 v15, v28

    move/from16 v17, v2

    invoke-interface/range {v12 .. v20}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v7, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-virtual/range {v30 .. v30}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual {v0, v12, v11, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p2

    move/from16 v13, v22

    move/from16 v14, v23

    move/from16 v15, v24

    goto :goto_3

    :cond_9
    :goto_4
    move/from16 v23, v14

    move/from16 v24, v15

    if-nez v3, :cond_a

    const-string v0, "Required verifier is null"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerificationParams;->getDefaultVerificationResponse()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_b

    move/from16 v5, v24

    goto :goto_5

    :cond_b
    const/4 v5, -0x1

    :goto_5
    new-instance v0, Lcom/android/server/pm/PackageVerificationResponse;

    invoke-direct {v0, v5, v9}, Lcom/android/server/pm/PackageVerificationResponse;-><init>(II)V

    if-nez v4, :cond_c

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/VerificationParams;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_6

    :cond_c
    invoke-virtual {v10, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_6
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v13

    const/16 v18, 0x0

    const/16 v19, 0x131

    const-string v20, "package verifier"

    move-object v12, v1

    move-object v14, v3

    move-wide/from16 v15, v28

    move/from16 v17, v2

    invoke-interface/range {v12 .. v20}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    move-object v9, v0

    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v23

    move-object v3, v9

    move-wide/from16 v4, v28

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/VerificationParams;->startVerificationTimeoutCountdown(IZLcom/android/server/pm/PackageVerificationResponse;J)V

    :cond_d
    iget-object v0, v7, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v13, -0x1

    invoke-virtual/range {v30 .. v30}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v14

    new-instance v15, Lcom/android/server/pm/VerificationParams$2;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v23

    move/from16 v3, p1

    move-object v4, v9

    move/from16 v16, v6

    move-wide/from16 v5, v28

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/VerificationParams$2;-><init>(Lcom/android/server/pm/VerificationParams;ZILcom/android/server/pm/PackageVerificationResponse;J)V

    const/4 v0, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v1, "android.permission.PACKAGE_VERIFICATION_AGENT"

    move-object v9, v12

    move/from16 v2, v16

    move-object v12, v1

    move-object/from16 v16, v0

    invoke-virtual/range {v9 .. v19}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const-wide/32 v0, 0x40000

    const-string v3, "verification"

    invoke-static {v0, v1, v3, v8}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iput-boolean v2, v7, Lcom/android/server/pm/VerificationParams;->mWaitForVerificationToComplete:Z

    return-void

    :cond_e
    :goto_7
    move v2, v10

    invoke-virtual {v1, v9, v2}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    return-void
.end method

.method public final sendVerificationCompleteNotification()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mParentVerificationParams:Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->trySendVerificationCompleteNotification(Lcom/android/server/pm/VerificationParams;)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/pm/VerificationParams;->mRet:I

    iget-object p0, p0, Lcom/android/server/pm/VerificationParams;->mErrorMessage:Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1, v2, p0, v3}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "PackageManager"

    const-string v0, "Observer no longer exists."

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setReturnCode(ILjava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/android/server/pm/VerificationParams;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/android/server/pm/VerificationParams;->mRet:I

    iput-object p2, p0, Lcom/android/server/pm/VerificationParams;->mErrorMessage:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final startVerificationTimeoutCountdown(IZLcom/android/server/pm/PackageVerificationResponse;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

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

    iget-object p0, p0, Lcom/android/server/pm/VerificationParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object p0, p0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public verifyStage()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/VerificationParams$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/VerificationParams$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/VerificationParams;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public verifyStage(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/VerificationParams;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;

    iget-object v1, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;-><init>(Lcom/android/server/pm/VerificationParams;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    iget-object p0, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/pm/VerificationParams$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/android/server/pm/VerificationParams$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
