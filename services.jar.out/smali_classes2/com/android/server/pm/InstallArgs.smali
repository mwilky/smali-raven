.class public abstract Lcom/android/server/pm/InstallArgs;
.super Ljava/lang/Object;
.source "InstallArgs.java"


# instance fields
.field public final mAbiOverride:Ljava/lang/String;

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

.field public final mInstallFlags:I

.field public final mInstallGrantPermissions:[Ljava/lang/String;

.field public final mInstallReason:I

.field public final mInstallScenario:I

.field public final mInstallSource:Lcom/android/server/pm/InstallSource;

.field public mInstructionSets:[Ljava/lang/String;

.field public final mMoveInfo:Lcom/android/server/pm/MoveInfo;

.field public final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field public final mOriginInfo:Lcom/android/server/pm/OriginInfo;

.field public final mPackageSource:I

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

.field public final mSigningDetails:Landroid/content/pm/SigningDetails;

.field public final mTraceCookie:I

.field public final mTraceMethod:Ljava/lang/String;

.field public final mUser:Landroid/os/UserHandle;

.field public final mVolumeUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstallParams;)V
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v0, Lcom/android/server/pm/InstallParams;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v3, v0, Lcom/android/server/pm/InstallParams;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v4, v0, Lcom/android/server/pm/InstallParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    iget v5, v0, Lcom/android/server/pm/InstallParams;->mInstallFlags:I

    iget-object v6, v0, Lcom/android/server/pm/InstallParams;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v7, v0, Lcom/android/server/pm/InstallParams;->mVolumeUuid:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    iget-object v10, v0, Lcom/android/server/pm/InstallParams;->mPackageAbiOverride:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/pm/InstallParams;->mGrantedRuntimePermissions:[Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/InstallParams;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    iget v13, v0, Lcom/android/server/pm/InstallParams;->mAutoRevokePermissionsMode:I

    iget-object v14, v0, Lcom/android/server/pm/HandlerParams;->mTraceMethod:Ljava/lang/String;

    iget v15, v0, Lcom/android/server/pm/HandlerParams;->mTraceCookie:I

    iget-object v9, v0, Lcom/android/server/pm/InstallParams;->mSigningDetails:Landroid/content/pm/SigningDetails;

    move-object/from16 v16, v9

    iget v9, v0, Lcom/android/server/pm/InstallParams;->mInstallReason:I

    move/from16 v17, v9

    iget v9, v0, Lcom/android/server/pm/InstallParams;->mInstallScenario:I

    move/from16 v18, v9

    iget-boolean v9, v0, Lcom/android/server/pm/InstallParams;->mForceQueryableOverride:Z

    move/from16 v19, v9

    iget v9, v0, Lcom/android/server/pm/InstallParams;->mDataLoaderType:I

    move/from16 v20, v9

    iget v9, v0, Lcom/android/server/pm/InstallParams;->mPackageSource:I

    move/from16 v21, v9

    iget-object v0, v0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v22, v0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v22}, Lcom/android/server/pm/InstallArgs;-><init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/SigningDetails;IIZIILcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/SigningDetails;IIZIILcom/android/server/pm/PackageManagerService;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/OriginInfo;",
            "Lcom/android/server/pm/MoveInfo;",
            "Landroid/content/pm/IPackageInstallObserver2;",
            "I",
            "Lcom/android/server/pm/InstallSource;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/pm/SigningDetails;",
            "IIZII",
            "Lcom/android/server/pm/PackageManagerService;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p21

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    move-object v2, p2

    iput-object v2, v0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    move v2, p4

    iput v2, v0, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    move-object v2, p3

    iput-object v2, v0, Lcom/android/server/pm/InstallArgs;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallSource;

    iput-object v2, v0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    move-object v2, p6

    iput-object v2, v0, Lcom/android/server/pm/InstallArgs;->mVolumeUuid:Ljava/lang/String;

    move-object v2, p7

    iput-object v2, v0, Lcom/android/server/pm/InstallArgs;->mUser:Landroid/os/UserHandle;

    move-object v2, p8

    iput-object v2, v0, Lcom/android/server/pm/InstallArgs;->mInstructionSets:[Ljava/lang/String;

    move-object v2, p9

    iput-object v2, v0, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    move-object v2, p10

    iput-object v2, v0, Lcom/android/server/pm/InstallArgs;->mInstallGrantPermissions:[Ljava/lang/String;

    move-object v2, p11

    iput-object v2, v0, Lcom/android/server/pm/InstallArgs;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    move v2, p12

    iput v2, v0, Lcom/android/server/pm/InstallArgs;->mAutoRevokePermissionsMode:I

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/server/pm/InstallArgs;->mTraceMethod:Ljava/lang/String;

    move/from16 v2, p14

    iput v2, v0, Lcom/android/server/pm/InstallArgs;->mTraceCookie:I

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    move/from16 v2, p16

    iput v2, v0, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    move/from16 v2, p17

    iput v2, v0, Lcom/android/server/pm/InstallArgs;->mInstallScenario:I

    move/from16 v2, p18

    iput-boolean v2, v0, Lcom/android/server/pm/InstallArgs;->mForceQueryableOverride:Z

    move/from16 v2, p19

    iput v2, v0, Lcom/android/server/pm/InstallArgs;->mDataLoaderType:I

    move/from16 v2, p20

    iput v2, v0, Lcom/android/server/pm/InstallArgs;->mPackageSource:I

    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v2, Lcom/android/server/pm/RemovePackageHelper;

    invoke-direct {v2, v1}, Lcom/android/server/pm/RemovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v2, v0, Lcom/android/server/pm/InstallArgs;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    return-void
.end method


# virtual methods
.method public abstract cleanUpResourcesLI()V
.end method

.method public abstract copyApk()I
.end method

.method public abstract doPostDeleteLI(Z)Z
.end method

.method public abstract doPostInstall(II)I
.end method

.method public abstract doPreInstall(I)I
.end method

.method public abstract doRename(ILcom/android/server/pm/parsing/pkg/ParsedPackage;)Z
.end method

.method public abstract getCodePath()Ljava/lang/String;
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mUser:Landroid/os/UserHandle;

    return-object p0
.end method
