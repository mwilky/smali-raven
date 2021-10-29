.class Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoveInstallArgs"
.end annotation


# instance fields
.field private codeFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;)V

    return-void
.end method

.method private cleanUp(Ljava/lang/String;)Z
    .locals 14

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->fromCodePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    const v4, 0x20003

    :try_start_0
    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget v10, v2, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v9, v8, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    const v11, 0x20003

    const-wide/16 v12, 0x0

    move-object v8, p1

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    const-string v8, "PackageManager"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v1}, Lcom/android/server/pm/PackageManagerService;->removeCodePathLI(Ljava/io/File;)V

    monitor-exit v3

    const/4 v3, 0x1

    return v3

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method


# virtual methods
.method cleanUpResourcesLI()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method copyApk()I
    .locals 10

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->fromUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget v6, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->appId:I

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->seinfo:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget v8, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->targetSdkVersion:I

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->fromCodePath:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/Installer;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->fromCodePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->codeFile:Ljava/io/File;

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "PackageManager"

    const-string v3, "Failed to move app"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, -0x6e

    monitor-exit v0

    return v2

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method doPostDeleteLI(Z)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method doPostInstall(II)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->fromUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->cleanUp(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->cleanUp(Ljava/lang/String;)Z

    :goto_0
    return p1
.end method

.method doPreInstall(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->cleanUp(Ljava/lang/String;)Z

    :cond_0
    return p1
.end method

.method doRename(ILcom/android/server/pm/parsing/pkg/ParsedPackage;)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->cleanUp(Ljava/lang/String;)Z

    const/4 v0, 0x0

    return v0

    :cond_0
    return v0
.end method

.method getCodePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->codeFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
