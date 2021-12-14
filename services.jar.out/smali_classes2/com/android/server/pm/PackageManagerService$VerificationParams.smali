.class Lcom/android/server/pm/PackageManagerService$VerificationParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerificationParams"
.end annotation


# instance fields
.field final installFlags:I

.field final installSource:Lcom/android/server/pm/InstallSource;

.field final mDataLoaderType:I

.field final mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field mParentVerificationParams:Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;

.field private mRet:I

.field final mSessionId:I

.field private mWaitForEnableRollbackToComplete:Z

.field private mWaitForIntegrityVerificationToComplete:Z

.field private mWaitForVerificationToComplete:Z

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final requiredInstalledVersionCode:J

.field final signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;ILandroid/content/pm/PackageParser$SigningDetails;ILandroid/content/pm/parsing/PackageLite;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    invoke-static {p3}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v0, p5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->installFlags:I

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, p5, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->packageAbiOverride:Ljava/lang/String;

    new-instance v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iget-object v2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iget v3, p5, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-direct {v0, v1, v2, v3, p7}, Lcom/android/server/pm/PackageManagerService$VerificationInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-wide v0, p5, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->requiredInstalledVersionCode:J

    iget-object v0, p5, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v0, :cond_0

    iget-object v0, p5, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mDataLoaderType:I

    iput p9, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mSessionId:I

    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    return-void
.end method

.method private sendVerificationCompleteNotification()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mParentVerificationParams:Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mRet:I

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$MultiPackageVerificationParams;->trySendVerificationCompleteNotification(Lcom/android/server/pm/PackageManagerService$VerificationParams;I)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mRet:I

    const-string v3, "Package Verification Result"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PackageManager"

    const-string v2, "Observer no longer exists."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method handleIntegrityVerificationFinished()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mWaitForIntegrityVerificationToComplete:Z

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->handleReturnCode()V

    return-void
.end method

.method handleReturnCode()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mWaitForVerificationToComplete:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mWaitForIntegrityVerificationToComplete:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mWaitForEnableRollbackToComplete:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->sendVerificationCompleteNotification()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method handleRollbackEnabled()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mWaitForEnableRollbackToComplete:Z

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->handleReturnCode()V

    return-void
.end method

.method public handleStartCopy()V
    .locals 6

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->installFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mRet:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->installFlags:I

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-wide v3, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->requiredInstalledVersionCode:J

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->installFlags:I

    invoke-static {v2, v0, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$6000(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;JI)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mRet:I

    if-eq v2, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->sendApkVerificationRequest(Landroid/content/pm/PackageInfoLite;)V

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->installFlags:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->sendEnableRollbackRequest()V

    :cond_2
    return-void
.end method

.method handleVerificationFinished()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mWaitForVerificationToComplete:Z

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->handleReturnCode()V

    return-void
.end method

.method populateInstallerExtras(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    const-string v1, "android.intent.extra.ORIGINATING_URI"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    const-string v1, "android.intent.extra.REFERRER"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    const-string v1, "android.intent.extra.ORIGINATING_UID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    const-string v1, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    return-void
.end method

.method sendApkVerificationRequest(Landroid/content/pm/PackageInfoLite;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$6208(Lcom/android/server/pm/PackageManagerService;)I

    move-result v0

    new-instance v1, Lcom/android/server/pm/PackageVerificationState;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageVerificationState;-><init>(Lcom/android/server/pm/PackageManagerService$VerificationParams;)V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->sendIntegrityVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mRet:I

    invoke-virtual {v1}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method sendEnableRollbackRequest()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$6308(Lcom/android/server/pm/PackageManagerService;)I

    move-result v0

    const-wide/32 v1, 0x40000

    const-string v3, "enable_rollback"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mSessionId:I

    const-string v3, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance v7, Lcom/android/server/pm/PackageManagerService$VerificationParams$1;

    invoke-direct {v7, p0, v0}, Lcom/android/server/pm/PackageManagerService$VerificationParams$1;-><init>(Lcom/android/server/pm/PackageManagerService$VerificationParams;I)V

    const-string v6, "android.permission.PACKAGE_ROLLBACK_AGENT"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mWaitForEnableRollbackToComplete:Z

    return-void
.end method

.method sendIntegrityVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$6400(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move-object/from16 v3, p3

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageVerificationState;->setIntegrityVerificationResult(I)V

    return-void

    :cond_0
    move-object/from16 v3, p3

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const v6, 0x50000001

    const v7, 0x50000001

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v7, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v5, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, v2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const-string v8, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v7, v2, Landroid/content/pm/PackageInfoLite;->versionCode:I

    const-string v8, "android.intent.extra.VERSION_CODE"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v7

    const-string v9, "android.intent.extra.LONG_VERSION_CODE"

    invoke-virtual {v5, v9, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->populateInstallerExtras(Landroid/content/Intent;)V

    const-string v7, "android"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v18

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual/range {v18 .. v18}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v12

    new-instance v13, Lcom/android/server/pm/PackageManagerService$VerificationParams$2;

    invoke-direct {v13, v0, v1}, Lcom/android/server/pm/PackageManagerService$VerificationParams$2;-><init>(Lcom/android/server/pm/PackageManagerService$VerificationParams;I)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v5

    invoke-virtual/range {v7 .. v17}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const-wide/32 v7, 0x40000

    const-string v9, "integrity_verification"

    invoke-static {v7, v8, v9, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iput-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mWaitForIntegrityVerificationToComplete:Z

    return-void
.end method

.method sendPackageVerificationRequest(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/pm/PackageVerificationState;)I
    .locals 34

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v5, v6, :cond_0

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    :cond_0
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    const/4 v7, -0x1

    const/high16 v8, 0x10000000

    if-nez v6, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v6, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-virtual {v6, v9, v8, v10}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v6

    :goto_0
    move v15, v6

    invoke-virtual {v3, v15}, Lcom/android/server/pm/PackageVerificationState;->setRequiredVerifierUid(I)V

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    iget v7, v6, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    :goto_1
    move v14, v7

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    iget v9, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->installFlags:I

    invoke-static {v6, v2, v7, v9, v14}, Lcom/android/server/pm/PackageManagerService;->access$6600(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;III)Z

    move-result v17

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v6, v6, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    const/4 v7, 0x4

    const/4 v9, 0x0

    const/4 v13, 0x1

    if-ne v6, v7, :cond_3

    move v6, v13

    goto :goto_2

    :cond_3
    move v6, v9

    :goto_2
    move/from16 v18, v6

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mDataLoaderType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    move v9, v13

    :cond_4
    move/from16 v19, v9

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    if-nez v6, :cond_b

    if-eqz v17, :cond_b

    if-eqz v19, :cond_6

    if-nez v18, :cond_5

    goto :goto_3

    :cond_5
    move/from16 v20, v4

    move v6, v13

    move/from16 v21, v14

    move/from16 v33, v15

    goto/16 :goto_8

    :cond_6
    :goto_3
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v6

    invoke-virtual {v12, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v6, Ljava/io/File;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v12, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v12, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v23, 0x0

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v24

    const/16 v25, 0x0

    const-string v22, "application/vnd.android.package-archive"

    move-object/from16 v20, v6

    move-object/from16 v21, v12

    invoke-static/range {v20 .. v25}, Lcom/android/server/pm/PackageManagerService;->access$6700(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v11

    const-string v6, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v12, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->installFlags:I

    const-string v7, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    invoke-virtual {v12, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, v2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const-string v7, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    invoke-virtual {v12, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v6, v2, Landroid/content/pm/PackageInfoLite;->versionCode:I

    const-string v7, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    invoke-virtual {v12, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v6

    const-string v8, "android.content.pm.extra.VERIFICATION_LONG_VERSION_CODE"

    invoke-virtual {v12, v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v0, v12}, Lcom/android/server/pm/PackageManagerService$VerificationParams;->populateInstallerExtras(Landroid/content/Intent;)V

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6, v2, v11, v3}, Lcom/android/server/pm/PackageManagerService;->access$6800(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v10

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$Injector;

    move-result-object v6

    const-class v7, Lcom/android/server/DeviceIdleInternal;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PackageManagerService$Injector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v29, v6

    check-cast v29, Lcom/android/server/DeviceIdleInternal;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$200(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v30

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v32

    const/16 v24, 0x131

    const-string v25, ""

    move-object/from16 v20, v32

    move-wide/from16 v21, v30

    invoke-virtual/range {v20 .. v25}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    if-eqz v10, :cond_9

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_7

    const-string v7, "PackageManager"

    const-string v8, "Additional verifiers required, but none installed."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x16

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_8

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v21

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v25

    const/16 v26, 0x0

    const/16 v27, 0x131

    const-string v28, "package verifier"

    move-object/from16 v20, v29

    move-wide/from16 v23, v30

    invoke-interface/range {v20 .. v28}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v9, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    move/from16 v20, v4

    invoke-virtual/range {v32 .. v32}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v13, v9, v5, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p2

    move/from16 v4, v20

    const/4 v13, 0x1

    goto :goto_4

    :cond_8
    move/from16 v20, v4

    goto :goto_5

    :cond_9
    move/from16 v20, v4

    :goto_5
    move/from16 v4, v20

    :goto_6
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    invoke-static {v2, v6, v11}, Lcom/android/server/pm/PackageManagerService;->access$6900(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v21

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v25

    const/16 v26, 0x0

    const/16 v27, 0x131

    const-string v28, "package verifier"

    move-object/from16 v20, v29

    move-object/from16 v22, v6

    move-wide/from16 v23, v30

    invoke-interface/range {v20 .. v28}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v13, -0x1

    invoke-virtual/range {v32 .. v32}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v20

    new-instance v9, Lcom/android/server/pm/PackageManagerService$VerificationParams$3;

    invoke-direct {v9, v0, v1}, Lcom/android/server/pm/PackageManagerService$VerificationParams$3;-><init>(Lcom/android/server/pm/PackageManagerService$VerificationParams;I)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v25, "android.permission.PACKAGE_VERIFICATION_AGENT"

    move-object v7, v12

    move-object v8, v5

    move-object/from16 v26, v9

    move-object/from16 v9, v25

    move-object/from16 v25, v10

    move v10, v13

    move-object/from16 v27, v11

    move-object/from16 v11, v20

    move-object/from16 v20, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v21

    move/from16 v21, v14

    move/from16 v14, v22

    move/from16 v33, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v24

    invoke-virtual/range {v6 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    const-wide/32 v6, 0x40000

    const-string v8, "verification"

    invoke-static {v6, v7, v8, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mWaitForVerificationToComplete:Z

    goto :goto_7

    :cond_a
    move-object/from16 v25, v10

    move-object/from16 v27, v11

    move-object/from16 v20, v12

    move/from16 v21, v14

    move/from16 v33, v15

    :goto_7
    move/from16 v2, v33

    goto :goto_9

    :cond_b
    move/from16 v20, v4

    move v6, v13

    move/from16 v21, v14

    move/from16 v33, v15

    :goto_8
    move/from16 v2, v33

    invoke-virtual {v3, v2, v6}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    move/from16 v4, v20

    :goto_9
    return v4
.end method

.method setReturnCode(I)V
    .locals 2

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->mRet:I

    :cond_0
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

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$VerificationParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
