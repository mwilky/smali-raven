.class Lcom/android/server/pm/PackageManagerService$FileInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileInstallArgs"
.end annotation


# instance fields
.field private codeFile:Ljava/io/File;

.field private resourceFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 20

    move-object/from16 v14, p0

    move-object/from16 v13, p2

    move-object/from16 v0, p0

    move-object/from16 v8, p3

    move-object/from16 v12, p1

    iput-object v12, v14, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v1

    sget-object v5, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    sget-object v15, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x3

    move/from16 v12, v16

    const/16 v16, 0x0

    move-object/from16 v13, v16

    const/16 v16, 0x0

    move/from16 v14, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v19}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/PackageParser$SigningDetails;IIZI)V

    move-object/from16 v0, p2

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object/from16 v2, p0

    iput-object v1, v2, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    return-void
.end method

.method private cleanUp()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->removeCodePathLI(Ljava/io/File;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private doCopyApk()I
    .locals 7

    const-string v0, "PackageManager"

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    return v2

    :cond_0
    :try_start_0
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/pm/PackageInstallerService;->allocateStageDirLegacy(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyPackage(Ljava/lang/String;Ljava/io/File;)I

    move-result v1

    if-eq v1, v2, :cond_2

    const-string v2, "Failed to copy package"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    const-string v5, "lib"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-static {v5}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v5

    move-object v4, v5

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->abiOverride:Ljava/lang/String;

    invoke-static {v4, v3, v5, v2}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "Copying native libraries failed"

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v0, -0x6e

    goto :goto_1

    :goto_2
    return v0

    :goto_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create copy file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    return v0
.end method

.method private resolveTargetDir()Ljava/io/File;
    .locals 2

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method cleanUpResourcesLI()V
    .locals 5

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v1

    nop

    invoke-virtual {v1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v3}, Landroid/content/pm/parsing/PackageLite;->getAllApkPaths()Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->instructionSets:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/PackageManagerService;->removeDexFiles(Ljava/util/List;[Ljava/lang/String;)V

    return-void
.end method

.method copyApk()I
    .locals 3

    const-wide/32 v0, 0x40000

    const-string v2, "copyApk"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->doCopyApk()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method doPostDeleteLI(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUpResourcesLI()V

    const/4 v0, 0x1

    return v0
.end method

.method doPostInstall(II)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    :cond_0
    return p1
.end method

.method doPreInstall(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    :cond_0
    return p1
.end method

.method doRename(ILcom/android/server/pm/parsing/pkg/ParsedPackage;)Z
    .locals 9

    const-string v0, "PackageManager"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resolveTargetDir()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/android/server/pm/PackageManagerService;->access$6900(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$7000(Lcom/android/server/pm/PackageManagerService;)Landroid/os/incremental/IncrementalManager;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v1

    goto :goto_0

    :cond_1
    move v6, v2

    :goto_0
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    const/16 v8, 0x1fd

    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->makeDirRecursive(Ljava/io/File;I)V

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService;->access$7000(Lcom/android/server/pm/PackageManagerService;)Landroid/os/incremental/IncrementalManager;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/os/incremental/IncrementalManager;->linkCodePath(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    nop

    if-nez v6, :cond_3

    invoke-static {v5}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v1, "Failed to restorecon"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    iput-object v5, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setCodePath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    nop

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setBaseCodePath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    nop

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSplitCodePaths([Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return v1

    :catch_0
    move-exception v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catch_1
    move-exception v1

    const-string v7, "Failed to rename"

    invoke-static {v0, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method getCodePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
