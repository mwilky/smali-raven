.class public Lcom/android/server/pm/PackageManagerServiceUtils;
.super Ljava/lang/Object;
.source "PackageManagerServiceUtils.java"


# static fields
.field private static final FSVERITY_DISABLED:I = 0x0

.field private static final FSVERITY_ENABLED:I = 0x2

.field private static final FSVERITY_LEGACY:I = 0x1

.field private static final MAX_CRITICAL_INFO_DUMP_SIZE:J = 0x2dc6c0L

.field public static final REMOVE_IF_NULL_PKG:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEVEN_DAYS_IN_MILLISECONDS:J = 0x240c8400L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda8;

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_NULL_PKG:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-interface {p0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    invoke-static {p3, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    invoke-interface {p2, p3}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    nop

    invoke-virtual {p4, v1}, Lcom/android/server/pm/PackageManagerService;->findSharedNonSystemLibraries(Lcom/android/server/pm/PackageSetting;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p2, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    :cond_2
    goto :goto_1

    :cond_3
    invoke-interface {p3}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static buildVerificationRootHashString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getRootHash(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "0"

    if-nez v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz p1, :cond_4

    array-length v5, p1

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    :goto_1
    if-ltz v5, :cond_3

    aget-object v6, p1, v5

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->getRootHash(Ljava/lang/String;)[B

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-static {v8}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v1

    nop

    invoke-virtual {v1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/PackageLite;

    invoke-static {v3, p1}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    move-result-wide v3

    return-wide v3

    :cond_0
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v4

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to calculate installed size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public static checkISA(Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static comparePackageSignatures(Lcom/android/server/pm/PackageSetting;[Landroid/content/pm/Signature;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 7

    const/4 v0, 0x1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, -0x2

    return v0

    :cond_2
    array-length v1, p0

    array-length v2, p1

    const/4 v3, -0x3

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    array-length v1, p0

    const/4 v2, 0x0

    if-ne v1, v0, :cond_5

    aget-object v0, p0, v2

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    nop

    :goto_1
    return v3

    :cond_5
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    array-length v1, p0

    move v4, v2

    :goto_2
    if-ge v4, v1, :cond_6

    aget-object v5, p0, v4

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    array-length v4, p1

    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_7

    aget-object v6, p1, v5

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    return v2

    :cond_8
    return v3
.end method

.method public static compressedFileExists(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->O_RDWR:I

    sget v3, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr v2, v3

    const/16 v3, 0x1a4

    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copyPackage(Ljava/lang/String;Ljava/io/File;)I
    .locals 9

    const-string v0, "PackageManager"

    if-nez p0, :cond_0

    const/4 v0, -0x3

    return v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v2

    nop

    invoke-virtual {v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse package at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v0

    return v0

    :cond_1
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "base.apk"

    invoke-static {v5, p1, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "split_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, p1, v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to copy package at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    return v0
.end method

.method public static decompressFile(Ljava/io/File;Ljava/io/File;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const-string v1, ", dst: "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decompress file; src: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v0, v2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a4

    invoke-static {v3, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return v3

    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decompress file; src: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    const/16 v0, -0x6e

    return v0
.end method

.method public static deriveAbiOverride(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static dumpCriticalInfo(Landroid/util/proto/ProtoOutputStream;)V
    .locals 7

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x2dc6c0

    sub-long/2addr v1, v3

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    :try_start_1
    invoke-virtual {v3, v1, v2}, Ljava/io/BufferedReader;->skip(J)J

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_2

    const-string v5, "ignored: updated version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-wide v5, 0x20900000007L

    invoke-virtual {p0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v3

    :goto_4
    return-void
.end method

.method public static dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x2dc6c0

    sub-long/2addr v1, v3

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    :try_start_1
    invoke-virtual {v3, v1, v2}, Ljava/io/BufferedReader;->skip(J)J

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_3

    const-string v5, "ignored: updated version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v3

    :goto_4
    return-void
.end method

.method public static enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V
    .locals 3

    const/16 v0, 0x7d0

    if-ne p2, v0, :cond_2

    if-ltz p3, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shell does not have permission to access user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-gez p3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to check shell permission for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static enforceSystemOrPhoneCaller(Ljava/lang/String;I)V
    .locals 3

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;
    .locals 9

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-Stub"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    if-ltz v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    if-eq v5, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const-string v5, "PackageManager"

    if-nez v2, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to determine stub parent dir for codePath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    new-instance v4, Ljava/io/File;

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Lcom/android/server/pm/PackageManagerServiceUtils$1;

    invoke-direct {v6}, Lcom/android/server/pm/PackageManagerServiceUtils$1;-><init>()V

    invoke-virtual {v4, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    array-length v7, v6

    if-lez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCompressedFiles["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v6

    :cond_3
    :goto_0
    return-object v4
.end method

.method public static getLastModifiedTime(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)J
    .locals 8

    new-instance v0, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    return-wide v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_1

    new-instance v5, Ljava/io/File;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;
    .locals 9

    new-instance v0, Landroid/content/pm/PackageInfoLite;

    invoke-direct {v0}, Landroid/content/pm/PackageInfoLite;-><init>()V

    const/4 v1, -0x2

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, p4}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getInstallLocation()I

    move-result v5

    move-object v3, p0

    move v8, p3

    invoke-static/range {v3 .. v8}, Lcom/android/internal/content/PackageHelper;->resolveInstallLocation(Landroid/content/Context;Ljava/lang/String;IJI)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageInfoLite;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getVersionCode()I

    move-result v3

    iput v3, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getVersionCodeMajor()I

    move-result v3

    iput v3, v0, Landroid/content/pm/PackageInfoLite;->versionCodeMajor:I

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getBaseRevisionCode()I

    move-result v3

    iput v3, v0, Landroid/content/pm/PackageInfoLite;->baseRevisionCode:I

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getSplitRevisionCodes()[I

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageInfoLite;->splitRevisionCodes:[I

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getInstallLocation()I

    move-result v3

    iput v3, v0, Landroid/content/pm/PackageInfoLite;->installLocation:I

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getVerifiers()[Landroid/content/pm/VerifierInfo;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->isMultiArch()Z

    move-result v3

    iput-boolean v3, v0, Landroid/content/pm/PackageInfoLite;->multiArch:Z

    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->isDebuggable()Z

    move-result v3

    iput-boolean v3, v0, Landroid/content/pm/PackageInfoLite;->debuggable:Z

    return-object v0

    :catch_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, -0x6

    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_0

    :cond_1
    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid package file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    return-object v0
.end method

.method private static getPackageNamesForIntent(Landroid/content/Intent;I)Landroid/util/ArraySet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3, p1}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    return-object v1
.end method

.method public static getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;Z)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v2, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_NULL_PKG:Ljava/util/function/Predicate;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v3, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda5;

    invoke-static {v3, v0, v1, v2, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.PRE_BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageNamesForIntent(Landroid/content/Intent;I)Landroid/util/ArraySet;

    move-result-object v4

    new-instance v5, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda3;

    invoke-direct {v5, v4}, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda3;-><init>(Landroid/util/ArraySet;)V

    invoke-static {v5, v0, v1, v2, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v5

    new-instance v6, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda4;

    invoke-direct {v6, v5}, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/dex/DexManager;)V

    invoke-static {v6, v0, v1, v2, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const-string v7, "PackageManager"

    if-nez v6, :cond_3

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isHistoricalPackageUsageAvailable()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p2, :cond_0

    const-string v6, "Looking at historical package use"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v6, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;

    invoke-static {v1, v6}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    if-eqz p2, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Taking package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " as reference in time use"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_2

    const-wide/32 v10, 0x240c8400

    sub-long v10, v8, v10

    new-instance v12, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;

    invoke-direct {v12, v10, v11}, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;-><init>(J)V

    move-object v10, v12

    goto :goto_0

    :cond_2
    sget-object v10, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda6;

    :goto_0
    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    goto :goto_1

    :cond_3
    sget-object v10, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda7;

    :goto_1
    invoke-static {v10, v0, v1, v2, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    if-eqz p2, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Packages to be dexopted: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->packagesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Packages skipped from dexopt: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->packagesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0
.end method

.method private static getRootHash(Ljava/lang/String;)[B
    .locals 5

    nop

    :try_start_0
    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->unsafeGetFileSignature(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    nop

    invoke-static {v0}, Landroid/os/incremental/V4Signature;->readFrom([B)Landroid/os/incremental/V4Signature;

    move-result-object v1

    iget-object v2, v1, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    invoke-static {v2}, Landroid/os/incremental/V4Signature$HashingInfo;->fromByteArray([B)Landroid/os/incremental/V4Signature$HashingInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    return-object v3

    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Root has not present"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Hashing info not present"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File signature not present"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "PackageManager"

    const-string v2, "ERROR: could not load root hash from incremental install"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getSettingsProblemFile()Ljava/io/File;
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "uiderrors.txt"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method static isApkVerificationForced(Lcom/android/server/pm/PackageSetting;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static isApkVerityEnabled()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    const-string v0, "ro.apk_verity.mode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isDowngradePermitted(IZ)Z
    .locals 5

    and-int/lit16 v0, p0, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    return v2

    :cond_1
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v3, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v1

    :goto_2
    if-eqz v3, :cond_4

    return v1

    :cond_4
    const/high16 v4, 0x100000

    and-int/2addr v4, p0

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    return v1
.end method

.method static isLegacyApkVerityEnabled()Z
    .locals 3

    const-string v0, "ro.apk_verity.mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static isUnusedSinceTimeInMillis(JJJLcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;JJ)Z
    .locals 5

    sub-long v0, p2, p0

    cmp-long v0, v0, p4

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    sub-long v2, p2, p9

    cmp-long v0, v2, p4

    const/4 v2, 0x1

    if-gez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    return v1

    :cond_2
    sub-long v3, p2, p7

    cmp-long v3, v3, p4

    if-gez v3, :cond_3

    invoke-virtual {p6}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    if-nez v3, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method static synthetic lambda$getPackagesForDexopt$2(Lcom/android/server/pm/PackageSetting;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isCoreApp()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$3(Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$4(Lcom/android/server/pm/dex/DexManager;Lcom/android/server/pm/PackageSetting;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$5(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)I
    .locals 4

    nop

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$6(JLcom/android/server/pm/PackageSetting;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$7(Lcom/android/server/pm/PackageSetting;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$8(Lcom/android/server/pm/PackageSetting;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$sortPackagesByUsageDate$1(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)I
    .locals 4

    nop

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$0(Lcom/android/server/pm/PackageSetting;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static logCriticalInfo(ILjava/lang/String;)V
    .locals 8

    const-string v0, "PackageManager"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/EventLogTags;->writePmCriticalInfo(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3}, Ljava/text/SimpleDateFormat;-><init>()V

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    nop

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1fc

    const/4 v7, -0x1

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public static makeDirRecursive(Ljava/io/File;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->getNameCount()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v1, :cond_1

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ljava/nio/file/Path;->subpath(II)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static matchSignatureInSystem(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated system app mismatches cert on /system: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method private static matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/PackageParser$SigningDetails;)Z
    .locals 11

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    :try_start_0
    invoke-virtual {v6}, Landroid/content/pm/Signature;->getChainSignatures()[Landroid/content/pm/Signature;

    move-result-object v7

    array-length v8, v7

    move v9, v3

    :goto_2
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    goto :goto_3

    :catch_0
    move-exception v7

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object p2, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v2, 0x1

    return v2

    :cond_3
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Existing package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has flattened signing certificate chain. Unable to install newer version with rotated signing certificate."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :cond_4
    return v3
.end method

.method private static matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p2, p1, p3}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapabilityRecover(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovered effectively matching certificates for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to recover certificates for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method public static packagesToString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static realpath(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->realpath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isHistoricalPackageUsageAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda1;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$SigningDetails;ZZZ)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, v2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    const-string v3, "Package "

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {p2, v2, v5}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    const/16 v6, 0x8

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v2, p2, v6}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v5

    :goto_1
    if-nez v2, :cond_2

    if-eqz p3, :cond_2

    iget-object v7, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-static {v0, v7, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v2

    move v1, v2

    :cond_2
    if-nez v2, :cond_5

    if-eqz p4, :cond_5

    iget-object v7, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v7, v7, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {v0, v7, p2, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v7, v7, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {v0, p2, v7, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v6, v4

    goto :goto_3

    :cond_4
    :goto_2
    move v6, v5

    :goto_3
    move v2, v6

    :cond_5
    if-nez v2, :cond_6

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isApkVerificationForced(Lcom/android/server/pm/PackageSetting;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignatureInSystem(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)Z

    move-result v2

    :cond_6
    if-nez v2, :cond_7

    if-eqz p5, :cond_7

    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v6, v6, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v6, p2}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v2

    :cond_7
    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    const/4 v5, -0x7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " signatures do not match previously installed version; ignoring!"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v6, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-eq v2, v6, :cond_17

    nop

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v6, 0x2

    invoke-virtual {p2, v2, v6}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v2, p2, v6}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    move v2, v4

    goto :goto_6

    :cond_b
    :goto_5
    move v2, v5

    :goto_6
    if-nez v2, :cond_c

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ne v7, v5, :cond_c

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    iget-object v7, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v2, 0x1

    :cond_c
    if-nez v2, :cond_d

    if-eqz p3, :cond_d

    nop

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-static {v0, v7, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v2

    :cond_d
    if-nez v2, :cond_10

    if-eqz p4, :cond_10

    nop

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v7, v7, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {v0, v7, p2, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v7, v7, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {v0, p2, v7, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_e
    move v4, v5

    :cond_f
    move v2, v4

    or-int/2addr v1, v2

    :cond_10
    const/4 v4, -0x8

    if-eqz v2, :cond_16

    invoke-virtual {p2}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    goto :goto_7

    :cond_11
    nop

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestor(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-virtual {p2, v8, v6}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v9

    if-eqz v9, :cond_12

    goto :goto_8

    :cond_12
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " revoked the sharedUserId capability from the signing key used to sign "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_13
    :goto_8
    goto :goto_7

    :cond_14
    nop

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v5, v5, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {p2, v5}, Landroid/content/pm/PackageParser$SigningDetails;->hasCommonAncestor(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_9

    :cond_15
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has a signing lineage that diverges from the lineage of the sharedUserId"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_16
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no signatures that match those in shared user "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; ignoring!"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    :cond_17
    :goto_9
    return v1
.end method
