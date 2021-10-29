.class public final Lcom/android/server/pm/dex/ArtUtils;
.super Ljava/lang/Object;
.source "ArtUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createArtPackageInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/dex/ArtPackageInfo;
    .locals 5

    new-instance v0, Lcom/android/server/pm/dex/ArtPackageInfo;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v3

    invoke-static {p0, p1}, Lcom/android/server/pm/dex/ArtUtils;->getOatDir(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/dex/ArtPackageInfo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getOatDir(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;
    .locals 3

    nop

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->canHaveOatDir(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object v1
.end method
