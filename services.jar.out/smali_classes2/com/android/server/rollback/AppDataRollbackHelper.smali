.class public Lcom/android/server/rollback/AppDataRollbackHelper;
.super Ljava/lang/Object;
.source "AppDataRollbackHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RollbackManager"


# instance fields
.field private final mApexManager:Lcom/android/server/pm/ApexManager;

.field private final mInstaller:Lcom/android/server/pm/Installer;


# direct methods
.method constructor <init>(Lcom/android/server/pm/Installer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/Installer;Lcom/android/server/pm/ApexManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    iput-object p2, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    return-void
.end method

.method private doRestoreOrWipe(Landroid/content/rollback/PackageRollbackInfo;IIILjava/lang/String;I)Z
    .locals 8

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    goto :goto_1

    :pswitch_1
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/server/pm/ApexManager;->restoreCeData(IILjava/lang/String;)Z

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0x0

    move v4, p2

    move v5, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/Installer;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move v3, p4

    move-object v4, p5

    move v5, p2

    move v6, p3

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/Installer;->restoreAppDataSnapshot(Ljava/lang/String;ILjava/lang/String;III)Z
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_0
    nop

    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to restore/wipe app data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " policy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RollbackManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private doSnapshot(Landroid/content/rollback/PackageRollbackInfo;III)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v0

    if-eqz v0, :cond_1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/server/pm/ApexManager;->snapshotCeData(IILjava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/server/pm/Installer;->snapshotAppData(Ljava/lang/String;III)Z

    move-result v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create app data snapshot for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RollbackManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method commitPendingBackupAndRestoreForUser(ILcom/android/server/rollback/Rollback;)Z
    .locals 17

    move/from16 v7, p1

    move-object/from16 v8, p2

    const/4 v0, 0x0

    iget-object v1, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/content/rollback/PackageRollbackInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v10}, Landroid/content/rollback/PackageRollbackInfo;->getPendingBackups()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v1, 0x1

    const/4 v0, 0x1

    move v12, v1

    goto :goto_1

    :cond_0
    move v12, v1

    :goto_1
    invoke-virtual {v10, v7}, Landroid/content/rollback/PackageRollbackInfo;->getRestoreInfo(I)Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    move-result-object v13

    if-eqz v13, :cond_1

    const/4 v2, 0x1

    const/4 v0, 0x1

    move v14, v0

    move v15, v2

    goto :goto_2

    :cond_1
    move v14, v0

    move v15, v2

    :goto_2
    if-eqz v12, :cond_2

    if-eqz v15, :cond_2

    invoke-virtual {v10, v7}, Landroid/content/rollback/PackageRollbackInfo;->removePendingBackup(I)V

    invoke-virtual {v10, v7}, Landroid/content/rollback/PackageRollbackInfo;->removePendingRestoreInfo(I)V

    goto :goto_4

    :cond_2
    if-eqz v12, :cond_3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    const/4 v2, 0x2

    move-object/from16 v6, p0

    invoke-direct {v6, v10, v7, v1, v2}, Lcom/android/server/rollback/AppDataRollbackHelper;->doSnapshot(Landroid/content/rollback/PackageRollbackInfo;III)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v11, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p0

    :cond_4
    :goto_3
    if-eqz v15, :cond_5

    iget-object v0, v8, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v3

    iget v4, v13, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->appId:I

    iget-object v5, v13, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->seInfo:Ljava/lang/String;

    const/16 v16, 0x2

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, p1

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/server/rollback/AppDataRollbackHelper;->doRestoreOrWipe(Landroid/content/rollback/PackageRollbackInfo;IIILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v10, v13}, Landroid/content/rollback/PackageRollbackInfo;->removeRestoreInfo(Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;)V

    :cond_5
    nop

    :goto_4
    move v0, v14

    goto :goto_0

    :cond_6
    return v0
.end method

.method public destroyApexCeSnapshots(II)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/rollback/AppDataRollbackHelper;->isUserCredentialLocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ApexManager;->destroyCeSnapshots(II)Z

    :cond_0
    return-void
.end method

.method public destroyApexDeSnapshots(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ApexManager;->destroyDeSnapshots(I)Z

    return-void
.end method

.method public destroyAppDataSnapshot(ILandroid/content/rollback/PackageRollbackInfo;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p3, p1, v2}, Lcom/android/server/pm/Installer;->destroyAppDataSnapshot(Ljava/lang/String;III)Z
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete app data snapshot for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RollbackManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public isUserCredentialLocked(I)Z
    .locals 1

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public restoreAppData(ILandroid/content/rollback/PackageRollbackInfo;IILjava/lang/String;)Z
    .locals 15

    move/from16 v7, p3

    const/4 v0, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/content/rollback/PackageRollbackInfo;->getPendingBackups()Ljava/util/List;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/content/rollback/PackageRollbackInfo;->getPendingRestores()Ljava/util/ArrayList;

    move-result-object v9

    const/4 v1, 0x0

    if-eqz v8, :cond_0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v8, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    move-object v10, p0

    move/from16 v11, p4

    move-object/from16 v12, p5

    move v13, v0

    move v14, v1

    goto :goto_0

    :cond_0
    move-object v10, p0

    invoke-virtual {p0, v7}, Lcom/android/server/rollback/AppDataRollbackHelper;->isUserCredentialLocked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    move/from16 v11, p4

    move-object/from16 v12, p5

    invoke-direct {v2, v7, v11, v12}, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    move v13, v0

    move v14, v1

    goto :goto_0

    :cond_1
    move/from16 v11, p4

    move-object/from16 v12, p5

    or-int/lit8 v0, v0, 0x2

    move v13, v0

    move v14, v1

    :goto_0
    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v5, p5

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/rollback/AppDataRollbackHelper;->doRestoreOrWipe(Landroid/content/rollback/PackageRollbackInfo;IIILjava/lang/String;I)Z

    return v14
.end method

.method public snapshotAppData(ILandroid/content/rollback/PackageRollbackInfo;[I)V
    .locals 5

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p3, v1

    invoke-virtual {p0, v2}, Lcom/android/server/rollback/AppDataRollbackHelper;->isUserCredentialLocked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isn\'t unlocked, skipping CE userdata backup."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RollbackManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-virtual {p2, v2}, Landroid/content/rollback/PackageRollbackInfo;->addPendingBackup(I)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x3

    :goto_1
    invoke-direct {p0, p2, v2, p1, v3}, Lcom/android/server/rollback/AppDataRollbackHelper;->doSnapshot(Landroid/content/rollback/PackageRollbackInfo;III)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
