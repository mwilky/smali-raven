.class final Lcom/android/server/pm/PackageAbiHelperImpl;
.super Ljava/lang/Object;
.source "PackageAbiHelperImpl.java"

# interfaces
.implements Lcom/android/server/pm/PackageAbiHelper;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v1

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    goto/16 :goto_2

    :cond_2
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v1

    goto/16 :goto_2

    :cond_5
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    goto/16 :goto_2

    :cond_6
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    const-string v2, "Can\'t canonicalize code path "

    const-string v3, "PackageManager"

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-le v5, v6, :cond_7

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v4, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    :goto_0
    goto :goto_2

    :cond_8
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    move-object v6, v5

    if-eqz v5, :cond_9

    move-object v1, v4

    move-object v4, v6

    goto :goto_1

    :cond_9
    move-object v5, v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized code path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " - using "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Odd, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t look like an APK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    :goto_0
    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .locals 15

    move-object v0, p0

    new-instance v1, Ljava/io/File;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p4, :cond_0

    if-nez p5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-static {v1}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v6

    const-string v7, "lib"

    if-eqz v6, :cond_5

    if-eqz v5, :cond_4

    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/PackageAbiHelperImpl;->calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    invoke-static {p0}, Lcom/android/server/pm/InstructionSets;->getPrimaryInstructionSet(Lcom/android/server/pm/PackageAbiHelper$Abis;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result v8

    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "lib64"

    if-eqz v8, :cond_1

    move-object v11, v10

    goto :goto_1

    :cond_1
    move-object v11, v7

    :goto_1
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/String;

    aput-object v11, v14, v4

    aput-object v9, v14, v3

    invoke-static {v12, v14}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    iget-object v14, v0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    if-eqz v14, :cond_3

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    move-object v7, v10

    :goto_2
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-array v13, v13, [Ljava/lang/String;

    aput-object v7, v13, v4

    aput-object v9, v13, v3

    invoke-static {v10, v13}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    move-object/from16 v6, p1

    goto :goto_4

    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    move-object/from16 v6, p1

    invoke-direct {v4, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    const/4 v4, 0x0

    move-object v3, v4

    :goto_4
    const/4 v4, 0x0

    move-object v7, v12

    goto :goto_5

    :cond_5
    move-object/from16 v6, p1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    const/4 v4, 0x1

    new-instance v3, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/pm/InstructionSets;->getPrimaryInstructionSet(Lcom/android/server/pm/PackageAbiHelper$Abis;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v12, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v3, v0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    if-eqz v3, :cond_6

    new-instance v3, Ljava/io/File;

    iget-object v8, v0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    invoke-static {v8}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    new-instance v8, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-direct {v8, v12, v4, v7, v3}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method private getBundledAppAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageAbiHelper$Abis;
    .locals 7

    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v1

    const-string v2, "lib"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string v5, "lib64"

    invoke-direct {v4, v5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    move v1, v2

    move v2, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    move v1, v2

    move v2, v4

    :goto_1
    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v3, v4, v3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v3, v4, v3

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isMultiArch()Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " has multiple bundled libs, but is not multiarch."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    sget-object v5, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v3, v5, v3

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    goto :goto_2

    :cond_6
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v3, v5, v3

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    new-instance v5, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v5, v3, v4}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method private static maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    if-gez p1, :cond_1

    const/16 v0, -0x72

    if-eq p1, v0, :cond_1

    const/16 v0, -0x71

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v0, p1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private shouldExtractLibs(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isExtractNativeLibs()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method


# virtual methods
.method public deriveNativeLibraryPaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .locals 6

    new-instance v0, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v4

    move-object v1, p3

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v0

    return-object v0
.end method

.method public derivePackageAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/PackageAbiHelper$Abis;",
            "Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v3, v1, v2}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v7

    move-object/from16 v4, p4

    move/from16 v8, p2

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v3

    invoke-direct/range {p0 .. p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->shouldExtractLibs(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Z

    move-result v4

    iget-object v5, v3, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootDir:Ljava/lang/String;

    iget-boolean v6, v3, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootRequiresIsa:Z

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->createNativeLibraryHandle(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v0

    move-object v10, v0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isMultiArch()Z

    move-result v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v12, "copyNativeBinaries"

    const-string v13, "findSupportedAbi"

    if-eqz v11, :cond_c

    const/16 v11, -0x72

    const/16 v16, -0x72

    :try_start_1
    sget-object v14, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v14, v14
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lez v14, :cond_1

    if-eqz v4, :cond_0

    const-wide/32 v14, 0x40000

    :try_start_2
    invoke-static {v14, v15, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-object v14, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v10, v0, v14, v6, v7}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v14

    move v11, v14

    goto :goto_0

    :cond_0
    const-wide/32 v14, 0x40000

    invoke-static {v14, v15, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-object v14, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v10, v14}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v14

    move v11, v14

    :goto_0
    const-wide/32 v14, 0x40000

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    const-string v14, "Shared library native lib extraction not supported"

    if-ltz v11, :cond_3

    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v15

    if-eqz v15, :cond_3

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v12, Lcom/android/server/pm/PackageManagerException;

    const/16 v13, -0x6e

    invoke-direct {v12, v13, v14}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v12
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v15, v1

    move-object/from16 v17, v2

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-object v15, v1

    move-object/from16 v17, v2

    goto/16 :goto_b

    :cond_3
    :goto_1
    :try_start_4
    const-string v15, "Error unpackaging 32 bit native libs for multiarch app."

    invoke-static {v15, v11}, Lcom/android/server/pm/PackageAbiHelperImpl;->maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;I)V

    sget-object v15, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v15, v15
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-lez v15, :cond_5

    if-eqz v4, :cond_4

    move-object v15, v1

    move-object/from16 v17, v2

    const-wide/32 v1, 0x40000

    :try_start_5
    invoke-static {v1, v2, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v10, v0, v1, v6, v7}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v1

    move/from16 v16, v1

    goto :goto_2

    :cond_4
    move-object v15, v1

    move-object/from16 v17, v2

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v10, v1}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v1

    move/from16 v16, v1

    :goto_2
    const-wide/32 v1, 0x40000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    move/from16 v1, v16

    goto :goto_3

    :cond_5
    move-object v15, v1

    move-object/from16 v17, v2

    move/from16 v1, v16

    :goto_3
    const-string v2, "Error unpackaging 64 bit native libs for multiarch app."

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageAbiHelperImpl;->maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;I)V

    if-ltz v1, :cond_8

    if-eqz v4, :cond_7

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const/16 v12, -0x6e

    invoke-direct {v2, v12, v14}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_7
    :goto_4
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v1

    move-object v8, v2

    :cond_8
    if-ltz v11, :cond_b

    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v11

    if-ltz v1, :cond_a

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isUse32BitAbi()Z

    move-result v12

    if-eqz v12, :cond_9

    move-object v9, v8

    move-object v8, v2

    goto :goto_5

    :cond_9
    move-object v9, v2

    goto :goto_5

    :cond_a
    move-object v8, v2

    :cond_b
    :goto_5
    goto/16 :goto_a

    :cond_c
    move-object v15, v1

    move-object/from16 v17, v2

    const/4 v1, 0x0

    if-eqz p3, :cond_d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p3, v2, v1

    goto :goto_6

    :cond_d
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    :goto_6
    const/4 v11, 0x0

    sget-object v14, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v14, v14

    if-lez v14, :cond_f

    if-nez p3, :cond_f

    invoke-static {v10}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result v14

    if-eqz v14, :cond_f

    sget-object v14, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v14, v14

    if-lez v14, :cond_e

    sget-object v14, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    move-object v2, v14

    const/4 v11, 0x1

    goto :goto_7

    :cond_e
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v12, -0x10

    const-string v13, "Apps that contain RenderScript with target API level < 21 are not supported on 64-bit only platforms"

    invoke-direct {v1, v12, v13}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_f
    :goto_7
    if-eqz v4, :cond_10

    const-wide/32 v13, 0x40000

    invoke-static {v13, v14, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v10, v0, v2, v6, v7}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v12

    move v1, v12

    goto :goto_8

    :cond_10
    move-object v14, v2

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object v2, v14

    invoke-static {v10, v2}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v1

    :goto_8
    const-wide/32 v13, 0x40000

    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    const/16 v13, -0x72

    if-gez v1, :cond_12

    if-ne v1, v13, :cond_11

    goto :goto_9

    :cond_11
    new-instance v12, Lcom/android/server/pm/PackageManagerException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error unpackaging native libs for app, errorCode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, -0x6e

    invoke-direct {v12, v14, v13}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v12

    :cond_12
    :goto_9
    if-ltz v1, :cond_14

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v12

    if-nez v12, :cond_13

    aget-object v12, v2, v1

    move-object v8, v12

    goto :goto_a

    :cond_13
    new-instance v12, Lcom/android/server/pm/PackageManagerException;

    const-string v13, "Shared library with native libs must be multiarch"

    const/16 v14, -0x6e

    invoke-direct {v12, v14, v13}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v12

    :cond_14
    if-ne v1, v13, :cond_15

    if-eqz p3, :cond_15

    move-object/from16 v8, p3

    goto :goto_a

    :cond_15
    if-eqz v11, :cond_16

    const/4 v12, 0x0

    aget-object v12, v2, v12
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v8, v12

    :cond_16
    :goto_a
    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v15, v1

    move-object/from16 v17, v2

    goto :goto_d

    :catch_2
    move-exception v0

    move-object v15, v1

    move-object/from16 v17, v2

    :goto_b
    :try_start_6
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get canonical file "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    nop

    :goto_c
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    new-instance v0, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v0, v8, v9}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/util/Pair;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v22

    move-object/from16 v18, v0

    move-object/from16 v19, p4

    move/from16 v23, p2

    invoke-static/range {v18 .. v23}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :catchall_2
    move-exception v0

    :goto_d
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method public getAdjustedAbiForSharedUser(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instruction set mismatch, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_3

    const-string v6, "[caller]"

    goto :goto_1

    :cond_3
    move-object v6, v1

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " whereas "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-nez v0, :cond_5

    move-object v0, v4

    move-object v1, v3

    :cond_5
    goto :goto_0

    :cond_6
    if-nez v0, :cond_7

    const/4 v2, 0x0

    return-object v2

    :cond_7
    if-eqz v1, :cond_8

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    goto :goto_2

    :cond_8
    invoke-static {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2
.end method

.method public getBundledAppAbis(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/server/pm/PackageAbiHelper$Abis;
    .locals 3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/PackageAbiHelperImpl;->calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->getBundledAppAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageAbiHelper$Abis;

    move-result-object v2

    return-object v2
.end method
