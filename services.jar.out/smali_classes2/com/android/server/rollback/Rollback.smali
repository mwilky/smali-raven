.class Lcom/android/server/rollback/Rollback;
.super Ljava/lang/Object;
.source "Rollback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/rollback/Rollback$RollbackState;
    }
.end annotation


# static fields
.field static final ROLLBACK_STATE_AVAILABLE:I = 0x1

.field static final ROLLBACK_STATE_COMMITTED:I = 0x3

.field static final ROLLBACK_STATE_DELETED:I = 0x4

.field static final ROLLBACK_STATE_ENABLING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RollbackManager"


# instance fields
.field public final info:Landroid/content/rollback/RollbackInfo;

.field private final mBackupDir:Ljava/io/File;

.field private final mExtensionVersions:Landroid/util/SparseIntArray;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallerPackageName:Ljava/lang/String;

.field private mNumPackageSessionsWithSuccess:I

.field private final mPackageSessionIds:[I

.field private mRestoreUserDataInProgress:Z

.field private final mStagedSessionId:I

.field private mState:I

.field private mStateDescription:Ljava/lang/String;

.field private mTimestamp:Ljava/time/Instant;

.field private final mUserId:I


# direct methods
.method constructor <init>(ILjava/io/File;IILjava/lang/String;)V
    .locals 8

    new-instance v7, Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/rollback/Rollback;-><init>(ILjava/io/File;IILjava/lang/String;[ILandroid/util/SparseIntArray;)V

    return-void
.end method

.method constructor <init>(ILjava/io/File;IILjava/lang/String;[ILandroid/util/SparseIntArray;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    new-instance v7, Landroid/content/rollback/RollbackInfo;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    const/4 v1, 0x1

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, -0x1

    move-object v1, v7

    move v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/content/rollback/RollbackInfo;-><init>(ILjava/util/List;ZLjava/util/List;I)V

    iput-object v7, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    iput p4, p0, Lcom/android/server/rollback/Rollback;->mUserId:I

    iput-object p5, p0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    iput p3, p0, Lcom/android/server/rollback/Rollback;->mStagedSessionId:I

    iput v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    if-eqz p6, :cond_1

    move-object v0, p6

    goto :goto_1

    :cond_1
    new-array v0, v0, [I

    :goto_1
    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    invoke-static {p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p7

    check-cast v0, Landroid/util/SparseIntArray;

    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Landroid/content/rollback/RollbackInfo;Ljava/io/File;Ljava/time/Instant;IILjava/lang/String;ZILjava/lang/String;Landroid/util/SparseIntArray;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    iput-object p1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    iput p8, p0, Lcom/android/server/rollback/Rollback;->mUserId:I

    iput-object p9, p0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    iput p4, p0, Lcom/android/server/rollback/Rollback;->mStagedSessionId:I

    iput p5, p0, Lcom/android/server/rollback/Rollback;->mState:I

    iput-object p6, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    invoke-static {p10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p10

    check-cast v1, Landroid/util/SparseIntArray;

    iput-object v1, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private static addAll(Ljava/util/List;[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private assertInWorkerThread()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    return-void
.end method

.method private containsApex()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static extensionVersionReductionWouldViolateConstraint(Landroid/util/SparseIntArray;Landroid/content/pm/PackageManagerInternal;)Z
    .locals 8

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Lcom/android/server/pm/PackageList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getMinExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {p0, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    invoke-virtual {p0, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    if-ge v7, v6, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method static rollbackStateFromString(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "enabling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "deleted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "available"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string v0, "committed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rollback state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_0
    const/4 v0, 0x4

    return v0

    :pswitch_1
    return v1

    :pswitch_2
    return v2

    :pswitch_3
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x58e10884 -> :sswitch_3
        -0x2bbe7537 -> :sswitch_2
        0x5c6a3019 -> :sswitch_1
        0x61e1ed80 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static rollbackStateToString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rollback state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_1
    const-string v0, "deleted"

    return-object v0

    :pswitch_2
    const-string v0, "committed"

    return-object v0

    :pswitch_3
    const-string v0, "available"

    return-object v0

    :pswitch_4
    const-string v0, "enabling"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private wasCreatedAtLowerExtensionVersion()Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method allPackagesEnabled()Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    array-length v1, v1

    if-ne v0, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method commit(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const-string v4, "Rollback unavailable"

    invoke-static {v2, v3, v0, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->containsApex()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->wasCreatedAtLowerExtensionVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iget-object v5, v1, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-static {v5, v0}, Lcom/android/server/rollback/Rollback;->extensionVersionReductionWouldViolateConstraint(Landroid/util/SparseIntArray;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Rollback may violate a minExtensionVersion constraint"

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    iget v0, v1, Lcom/android/server/rollback/Rollback;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v5, 0x0

    move-object/from16 v6, p3

    invoke-virtual {v2, v6, v5, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    move-object v7, v0

    nop

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    :try_start_1
    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    move-object v9, v0

    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v0, v4}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    move-object v10, v0

    invoke-virtual {v10, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    invoke-virtual {v10}, Landroid/content/pm/PackageInstaller$SessionParams;->setMultiPackage()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v10}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v27, v7

    goto/16 :goto_b

    :cond_2
    :goto_0
    const/4 v11, 0x5

    :try_start_3
    invoke-virtual {v10, v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0

    move v12, v0

    invoke-virtual {v9, v12}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0

    move-object v13, v0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v14, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v14}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object v14, v0

    iget-object v0, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    if-eqz v0, :cond_d

    :try_start_4
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/PackageRollbackInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v0, v4}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    move-object/from16 v17, v0

    iget-object v0, v1, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v0, :cond_4

    nop

    :try_start_5
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    move-object/from16 v5, v18

    goto :goto_2

    :cond_4
    move-object/from16 v5, v18

    :goto_2
    if-eqz v5, :cond_5

    move-object/from16 v11, v17

    invoke-virtual {v11, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :cond_5
    move-object/from16 v11, v17

    :goto_3
    :try_start_6
    invoke-virtual {v11, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    nop

    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v0

    move-object/from16 v19, v5

    invoke-virtual {v0}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequiredInstalledVersionCode(J)V

    const/4 v4, 0x5

    invoke-virtual {v11, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    if-eqz v0, :cond_6

    :try_start_7
    invoke-virtual {v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_6
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    if-eqz v0, :cond_7

    :try_start_9
    invoke-virtual {v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsApex()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :cond_7
    :try_start_a
    invoke-virtual {v9, v11}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0

    move v5, v0

    invoke-virtual {v9, v5}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0

    move-object/from16 v18, v0

    nop

    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/rollback/RollbackStore;->getPackageCodePaths(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    move-object/from16 v27, v0

    move-object/from16 v4, v27

    if-nez v4, :cond_8

    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Backup copy of package: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " is inaccessible"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x1

    invoke-static {v2, v3, v15, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    return-void

    :cond_8
    :try_start_c
    array-length v6, v4
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    move-object/from16 v27, v7

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_c

    :try_start_d
    aget-object v0, v4, v7

    move-object/from16 v28, v0

    const/high16 v0, 0x10000000

    move-object/from16 v29, v4

    move-object/from16 v4, v28

    invoke-static {v4, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    move-object/from16 v28, v0

    :try_start_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-wide/from16 v30, v20

    const/16 v20, 0x0

    :try_start_f
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move/from16 v32, v6

    move-object/from16 v6, v18

    :try_start_10
    invoke-virtual {v6, v0}, Landroid/content/pm/PackageInstaller$Session;->stageViaHardLink(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move/from16 v0, v20

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v6, v18

    goto :goto_7

    :catch_2
    move-exception v0

    move/from16 v32, v6

    move-object/from16 v6, v18

    :goto_5
    const/16 v20, 0x1

    move/from16 v0, v20

    :goto_6
    if-eqz v0, :cond_9

    :try_start_11
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    const-wide/16 v22, 0x0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v24

    move-object/from16 v20, v6

    move-object/from16 v26, v28

    invoke-virtual/range {v20 .. v26}, Landroid/content/pm/PackageInstaller$Session;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_8

    :goto_7
    :try_start_12
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0

    :catchall_2
    move-exception v0

    move-object v7, v0

    goto :goto_9

    :cond_9
    :goto_8
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    nop

    if-eqz v28, :cond_a

    :try_start_13
    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5

    :cond_a
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v18, v6

    move-object/from16 v4, v29

    move/from16 v6, v32

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v6, v18

    move-object v7, v0

    :goto_9
    if-eqz v28, :cond_b

    :try_start_14
    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v15, v0

    :try_start_15
    invoke-virtual {v7, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_a
    throw v7

    :cond_c
    move-object/from16 v29, v4

    move-object/from16 v6, v18

    invoke-virtual {v13, v5}, Landroid/content/pm/PackageInstaller$Session;->addChildSessionId(I)V

    move-object/from16 v6, p3

    move-object/from16 v7, v27

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x5

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move-object/from16 v27, v7

    move-object/from16 v4, p2

    goto :goto_b

    :cond_d
    move-object/from16 v27, v7

    invoke-static {v14}, Lcom/android/server/RescueParty;->resetDeviceConfigForPackages(Ljava/util/List;)V

    new-instance v0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5

    move-object/from16 v4, p2

    :try_start_16
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/rollback/Rollback;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V

    new-instance v5, Lcom/android/server/rollback/LocalIntentReceiver;

    invoke-direct {v5, v0}, Lcom/android/server/rollback/LocalIntentReceiver;-><init>(Ljava/util/function/Consumer;)V

    const/4 v6, 0x3

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v6, v12}, Landroid/content/rollback/RollbackInfo;->setCommittedSessionId(I)V

    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    invoke-virtual {v5}, Lcom/android/server/rollback/LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v6

    invoke-virtual {v13, v6}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_b

    :catch_5
    move-exception v0

    move-object/from16 v4, p2

    goto :goto_b

    :catch_6
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v27, v7

    :goto_b
    const-string v5, "RollbackManager"

    const-string v6, "Rollback failed"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v2, v3, v6, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    :goto_c
    return-void

    :catch_7
    move-exception v0

    move-object/from16 v4, p2

    const-string v5, "Invalid callerPackageName"

    const/4 v6, 0x1

    invoke-static {v2, v3, v6, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    return-void
.end method

.method commitPendingBackupAndRestoreForUser(ILcom/android/server/rollback/AppDataRollbackHelper;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    invoke-virtual {p2, p1, p0}, Lcom/android/server/rollback/AppDataRollbackHelper;->commitPendingBackupAndRestoreForUser(ILcom/android/server/rollback/Rollback;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    :cond_0
    return-void
.end method

.method containsSessionId(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne v4, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method delete(Lcom/android/server/rollback/AppDataRollbackHelper;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    const/4 v0, 0x0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getSnapshottedUsers()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v7}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v7

    invoke-virtual {p1, v7, v3, v6}, Lcom/android/server/rollback/AppDataRollbackHelper;->destroyAppDataSnapshot(ILandroid/content/rollback/PackageRollbackInfo;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/rollback/AppDataRollbackHelper;->destroyApexDeSnapshots(I)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/android/server/rollback/AppDataRollbackHelper;->destroyApexCeSnapshots(II)V

    goto :goto_3

    :cond_3
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->deleteRollback(Lcom/android/server/rollback/Rollback;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v2, p2}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStateAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-stateDescription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getTimestamp()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStagedSessionId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-stagedSessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStagedSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const-string v0, "-packages:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackTo()Landroid/content/pm/VersionedPackage;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "-causePackages:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/VersionedPackage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-committedSessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "-extensionVersions:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method enableForPackage(Ljava/lang/String;JJZLjava/lang/String;[Ljava/lang/String;I)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    const/4 v4, 0x0

    move-object/from16 v5, p7

    :try_start_0
    invoke-static {v1, v2, v5}, Lcom/android/server/rollback/RollbackStore;->backupPackageCodePath(Lcom/android/server/rollback/Rollback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, v3

    move v6, v4

    :goto_0
    if-ge v6, v0, :cond_0

    aget-object v7, v3, v6

    invoke-static {v1, v2, v7}, Lcom/android/server/rollback/RollbackStore;->backupPackageCodePath(Lcom/android/server/rollback/Rollback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    nop

    new-instance v0, Landroid/content/rollback/PackageRollbackInfo;

    new-instance v8, Landroid/content/pm/VersionedPackage;

    move-wide/from16 v14, p2

    invoke-direct {v8, v2, v14, v15}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v9, Landroid/content/pm/VersionedPackage;

    move-wide/from16 v12, p4

    invoke-direct {v9, v2, v12, v13}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    move/from16 v12, p6

    move v13, v4

    move-object v14, v6

    move/from16 v15, p9

    invoke-direct/range {v7 .. v15}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V

    iget-object v4, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to copy package for rollback for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RollbackManager"

    invoke-static {v7, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method enableForPackageInApex(Ljava/lang/String;JI)Z
    .locals 10

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    new-instance v9, Landroid/content/rollback/PackageRollbackInfo;

    new-instance v1, Landroid/content/pm/VersionedPackage;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    new-instance v2, Landroid/content/pm/VersionedPackage;

    invoke-direct {v2, p1, p2, p3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v9

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    return v1
.end method

.method getApexPackageNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getBackupDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    return-object v0
.end method

.method getExtensionVersions()Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getPackageNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getStagedSessionId()I
    .locals 1

    iget v0, p0, Lcom/android/server/rollback/Rollback;->mStagedSessionId:I

    return v0
.end method

.method getStateAsString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    iget v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    invoke-static {v0}, Lcom/android/server/rollback/Rollback;->rollbackStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStateDescription()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    return-object v0
.end method

.method getTimestamp()Ljava/time/Instant;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    return-object v0
.end method

.method getUserId()I
    .locals 1

    iget v0, p0, Lcom/android/server/rollback/Rollback;->mUserId:I

    return v0
.end method

.method includesPackage(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method includesPackageWithDifferentVersion(Ljava/lang/String;J)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isAvailable()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    iget v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isCommitted()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    iget v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isDeleted()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    iget v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isEnabling()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    iget v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isRestoreUserDataInProgress()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    iget-boolean v0, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    return v0
.end method

.method isStaged()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$commit$0$Rollback(Landroid/content/Intent;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V
    .locals 10

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "Commit failed"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/content/rollback/RollbackInfo;->setCommittedSessionId(I)V

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rollback downgrade install failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, p3, v1, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v3

    if-nez v3, :cond_1

    iput-boolean v2, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    :cond_1
    iget-object v3, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->deletePackageCodePaths(Lcom/android/server/rollback/Rollback;)V

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.content.rollback.extra.STATUS"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p3

    move-object v5, p2

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ROLLBACK_COMMITTED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    const-string v5, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public synthetic lambda$commit$1$Rollback(Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;Landroid/content/Intent;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rollback/Rollback;Landroid/content/Intent;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method makeAvailable()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RollbackManager"

    const-string v1, "Cannot make deleted rollback available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    return-void
.end method

.method notifySessionWithSuccess()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    iget v0, p0, Lcom/android/server/rollback/Rollback;->mNumPackageSessionsWithSuccess:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/rollback/Rollback;->mNumPackageSessionsWithSuccess:I

    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    array-length v2, v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method restoreUserDataForPackageIfInProgress(Ljava/lang/String;[IILjava/lang/String;Lcom/android/server/rollback/AppDataRollbackHelper;)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isRestoreUserDataInProgress()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x0

    iget-object v4, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v5}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v12, p1

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    const/4 v4, 0x0

    array-length v13, v1

    :goto_1
    if-ge v3, v13, :cond_1

    aget v14, v1, v3

    iget-object v6, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v6}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v7

    move-object/from16 v6, p5

    move-object v8, v5

    move v9, v14

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/rollback/AppDataRollbackHelper;->restoreAppData(ILandroid/content/rollback/PackageRollbackInfo;IILjava/lang/String;)Z

    move-result v6

    or-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_4

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    goto :goto_2

    :cond_2
    goto :goto_0

    :cond_3
    move-object/from16 v12, p1

    :cond_4
    :goto_2
    return v2
.end method

.method saveRollback()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    return-void
.end method

.method setRestoreUserDataInProgress(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    iput-boolean p1, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    return-void
.end method

.method setState(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    iput p1, p0, Lcom/android/server/rollback/Rollback;->mState:I

    iput-object p2, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    return-void
.end method

.method setTimestamp(Ljava/time/Instant;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    iput-object p1, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    return-void
.end method

.method snapshotUserData(Ljava/lang/String;[ILcom/android/server/rollback/AppDataRollbackHelper;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v0

    invoke-virtual {p3, v0, v1, p2}, Lcom/android/server/rollback/AppDataRollbackHelper;->snapshotAppData(ILandroid/content/rollback/PackageRollbackInfo;[I)V

    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getSnapshottedUsers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/rollback/Rollback;->addAll(Ljava/util/List;[I)V

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
