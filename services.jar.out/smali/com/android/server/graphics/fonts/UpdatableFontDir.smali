.class final Lcom/android/server/graphics/fonts/UpdatableFontDir;
.super Ljava/lang/Object;
.source "UpdatableFontDir.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;,
        Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;,
        Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;
    }
.end annotation


# static fields
.field private static final RANDOM_DIR_PREFIX:Ljava/lang/String; = "~~"

.field private static final TAG:Ljava/lang/String; = "UpdatableFontDir"


# instance fields
.field private final mConfigFile:Landroid/util/AtomicFile;

.field private final mConfigSupplier:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Landroid/text/FontConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigVersion:I

.field private final mCurrentTimeSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilesDir:Ljava/io/File;

.field private final mFontFileInfoMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

.field private mLastModifiedMillis:J

.field private final mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;Ljava/io/File;)V
    .locals 7

    sget-object v5, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;

    sget-object v6, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda0;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/graphics/fonts/UpdatableFontDir;-><init>(Ljava/io/File;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;Ljava/io/File;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;Ljava/io/File;Ljava/util/function/Supplier;Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;",
            "Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;",
            "Ljava/io/File;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Landroid/text/FontConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    iput-object p2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    iput-object p3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    iput-object p5, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mCurrentTimeSupplier:Ljava/util/function/Supplier;

    iput-object p6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigSupplier:Ljava/util/function/Function;

    return-void
.end method

.method private addFileToMapIfSameOrNewer(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;Z)Z
    .locals 7

    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->lookupFontFileInfo(Ljava/lang/String;)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getPreinstalledFontRevision(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRevision()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-gtz v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRevision()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRevision()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    if-eqz p3, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRandomizedFontDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->putFontFileInfo(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;)V

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRandomizedFontDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    :cond_5
    :goto_2
    return v1
.end method

.method static deleteAllFiles(Ljava/io/File;Ljava/io/File;)V
    .locals 4

    const-string v0, "Failed to delete "

    const-string v1, "UpdatableFontDir"

    :try_start_0
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private getFontRevision(Ljava/io/File;)J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    invoke-interface {v0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;->getRevision(Ljava/io/File;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "UpdatableFontDir"

    const-string v2, "Failed to read font file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method private getPreinstalledFontRevision(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;)J
    .locals 7

    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/FontConfig$FontFamily;

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v3}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/FontConfig$Font;

    invoke-virtual {v5}, Landroid/text/FontConfig$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v1, v5

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v2, -0x1

    if-nez v1, :cond_3

    return-wide v2

    :cond_3
    invoke-virtual {v1}, Landroid/text/FontConfig$Font;->getOriginalFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Landroid/text/FontConfig$Font;->getOriginalFile()Ljava/io/File;

    move-result-object v4

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object v4

    :goto_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    return-wide v2

    :cond_5
    invoke-direct {p0, v4}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getFontRevision(Ljava/io/File;)J

    move-result-wide v5

    cmp-long v2, v5, v2

    if-nez v2, :cond_6

    const-string v2, "UpdatableFontDir"

    const-string v3, "Invalid preinstalled font file"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-wide v5
.end method

.method private static getRandomDir(Ljava/io/File;)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "~~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    goto :goto_0
.end method

.method private installFontFile(Ljava/io/FileDescriptor;[B)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    const-string v0, "Failed to read PostScript name from font file"

    const-string v1, "Failed to change mode to 711"

    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getRandomDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_5

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1c9

    invoke-static {v3, v5}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_4

    nop

    const/4 v3, 0x0

    :try_start_1
    new-instance v5, Ljava/io/File;

    const-string v6, "font.ttf"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    nop

    :try_start_5
    iget-object v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;->setUpFsverity(Ljava/lang/String;[B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    nop

    const/4 v6, -0x3

    :try_start_6
    iget-object v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    invoke-interface {v7, v5}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;->buildFontFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    nop

    if-eqz v7, :cond_3

    :try_start_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

    invoke-interface {v8, v5, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;->rename(Ljava/io/File;Ljava/io/File;)Z

    move-result v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v8, :cond_2

    :try_start_8
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1a4

    invoke-static {v8, v9}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    nop

    :try_start_9
    invoke-direct {p0, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->validateFontFile(Ljava/io/File;)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    iget-object v4, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    invoke-virtual {v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;->tryToCreateTypeface(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    nop

    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {p0, v1, v4, v6}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->addFileToMapIfSameOrNewer(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;Z)Z

    move-result v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    :cond_0
    return-void

    :cond_1
    :try_start_c
    new-instance v6, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v8, -0x5

    const-string v9, "Downgrading font file is forbidden."

    invoke-direct {v6, v8, v9}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v6

    :catchall_0
    move-exception v4

    new-instance v8, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v9, "Failed to create Typeface from file"

    invoke-direct {v8, v6, v9, v4}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :catch_0
    move-exception v6

    new-instance v8, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    invoke-direct {v8, v4, v1, v6}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :cond_2
    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v6, "Failed to move verified font file."

    invoke-direct {v1, v4, v6}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v4, -0x4

    invoke-direct {v1, v4, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_1
    move-exception v1

    new-instance v4, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    invoke-direct {v4, v6, v0, v1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_2
    move-exception v0

    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v4, -0x2

    const-string v6, "Failed to setup fs-verity."

    invoke-direct {v1, v4, v6, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_1
    move-exception v0

    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_e
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catch_3
    move-exception v0

    :try_start_f
    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v6, "Failed to write font file to storage."

    invoke-direct {v1, v4, v6, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :catchall_3
    move-exception v0

    if-nez v3, :cond_4

    invoke-static {v2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    :cond_4
    throw v0

    :catch_4
    move-exception v0

    new-instance v3, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    invoke-direct {v3, v4, v1, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_5
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v1, "Failed to create font directory."

    invoke-direct {v0, v4, v1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$new$0(Ljava/util/Map;)Landroid/text/FontConfig;
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfig(Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v0

    return-object v0
.end method

.method private lookupFontFileInfo(Ljava/lang/String;)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    return-object v0
.end method

.method private putFontFileInfo(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    .locals 4

    new-instance v0, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    invoke-direct {v0}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1, v0}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig;->loadFromXml(Ljava/io/InputStream;Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    :goto_1
    return-object v0
.end method

.method private resolveFontFiles(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$FontFamily;
    .locals 14

    invoke-virtual {p1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getFonts()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/fonts/FontUpdateRequest$Font;

    iget-object v4, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    if-nez v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to lookup font file that has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UpdatableFontDir"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5

    :cond_0
    new-instance v5, Landroid/text/FontConfig$Font;

    invoke-static {v4}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->access$000(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;)Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getFontStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v10

    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getIndex()I

    move-result v11

    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Landroid/text/FontConfig$Font;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/text/FontConfig$FontFamily;

    invoke-virtual {p1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/text/FontConfig$FontFamily;-><init>(Ljava/util/List;Ljava/lang/String;Landroid/os/LocaleList;I)V

    return-object v2
.end method

.method private validateFontFile(Ljava/io/File;)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;->hasFsverity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;

    invoke-interface {v0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;->getPostScriptName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-direct {p0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getFontRevision(Ljava/io/File;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    return-object v3

    :cond_0
    new-instance v3, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v4, -0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Font validation failed. Could not read font revision: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v3

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v2, -0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font validation failed. Could not read PostScript name name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v1, -0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Font validation failed. Fs-verity is not enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private writePersistentConfig(Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    invoke-static {v0, p1}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig;->writeToXml(Ljava/io/OutputStream;Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V

    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_0
    new-instance v2, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v3, -0x6

    const-string v4, "Failed to write config XML."

    invoke-direct {v2, v3, v4, v1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method getConfigVersion()I
    .locals 1

    iget v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    return v0
.end method

.method public getFontFamilyMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/FontConfig$FontFamily;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, v0, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/fonts/FontUpdateRequest$Family;

    invoke-direct {p0, v3}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->resolveFontFiles(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$FontFamily;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method getPostScriptMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    invoke-virtual {v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getSystemFontConfig()Landroid/text/FontConfig;
    .locals 11

    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigSupplier:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getPostScriptMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/FontConfig;

    invoke-direct {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/fonts/FontUpdateRequest$Family;

    invoke-direct {p0, v5}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->resolveFontFiles(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$FontFamily;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/text/FontConfig;

    invoke-virtual {v0}, Landroid/text/FontConfig;->getAliases()Ljava/util/List;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    iget v10, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    move-object v5, v4

    move-object v6, v3

    invoke-direct/range {v5 .. v10}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;JI)V

    return-object v4
.end method

.method loadFontFileMap()V
    .locals 15

    const-string v0, "UpdatableFontDir"

    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    move-result-object v5

    iget-wide v6, v5, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->lastModifiedMillis:J

    iput-wide v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    iget-object v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not read: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iput-wide v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v7, 0x0

    :try_start_1
    array-length v8, v6

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_9

    aget-object v11, v6, v10

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "~~"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected dir found: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iput-wide v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    :cond_2
    return-void

    :cond_3
    :try_start_2
    iget-object v12, v5, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->updatedFontDirs:Ljava/util/Set;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Deleting obsolete dir: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_7

    array-length v13, v12

    if-eq v13, v3, :cond_5

    goto :goto_2

    :cond_5
    aget-object v13, v12, v9

    invoke-direct {p0, v13}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->validateFontFile(Ljava/io/File;)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    move-result-object v13

    if-nez v7, :cond_6

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v14

    move-object v7, v14

    :cond_6
    invoke-direct {p0, v13, v7, v3}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->addFileToMapIfSameOrNewer(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;Z)Z

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected files in dir: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_8

    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iput-wide v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    :cond_8
    return-void

    :cond_9
    const/4 v4, 0x1

    if-nez v4, :cond_a

    :goto_3
    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iput-wide v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    goto :goto_4

    :catchall_0
    move-exception v3

    :try_start_3
    const-string v5, "Failed to load font mappings."

    invoke-static {v0, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    nop

    if-nez v4, :cond_a

    goto :goto_3

    :cond_a
    :goto_4
    return-void

    :catchall_1
    move-exception v0

    if-nez v4, :cond_b

    iget-object v3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    iput-wide v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    :cond_b
    throw v0
.end method

.method public update(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontUpdateRequest;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/fonts/FontUpdateRequest;

    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getSignature()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :goto_1
    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-direct {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    :goto_2
    iget-object v4, v1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, v1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/fonts/FontUpdateRequest$Family;

    invoke-virtual {v4}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    iget-wide v3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/fonts/FontUpdateRequest;

    invoke-virtual {v7}, Landroid/graphics/fonts/FontUpdateRequest;->getType()I

    move-result v8

    packed-switch v8, :pswitch_data_1

    goto :goto_4

    :pswitch_2
    invoke-virtual {v7}, Landroid/graphics/fonts/FontUpdateRequest;->getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :pswitch_3
    nop

    invoke-virtual {v7}, Landroid/graphics/fonts/FontUpdateRequest;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v7}, Landroid/graphics/fonts/FontUpdateRequest;->getSignature()[B

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->installFontFile(Ljava/io/FileDescriptor;[B)V

    nop

    :goto_4
    goto :goto_3

    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/fonts/FontUpdateRequest$Family;

    invoke-direct {p0, v7}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->resolveFontFiles(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$FontFamily;

    move-result-object v8

    if-eqz v8, :cond_3

    goto :goto_5

    :cond_3
    new-instance v6, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/16 v8, -0x9

    const-string v9, "Required fonts are not available"

    invoke-direct {v6, v8, v9}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v6

    :cond_4
    iget-object v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mCurrentTimeSupplier:Ljava/util/function/Supplier;

    invoke-interface {v6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    new-instance v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    invoke-direct {v6}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;-><init>()V

    iget-wide v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    iput-wide v7, v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->lastModifiedMillis:J

    iget-object v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    iget-object v9, v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->updatedFontDirs:Ljava/util/Set;

    invoke-virtual {v8}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->getRandomizedFontDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_6

    :cond_5
    iget-object v7, v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v6}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->writePersistentConfig(Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V

    iget v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    if-nez v5, :cond_6

    iget-object v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    iget-object v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    iput-wide v3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    :cond_6
    return-void

    :catchall_0
    move-exception v6

    if-nez v5, :cond_7

    iget-object v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    iget-object v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    iput-wide v3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    :cond_7
    throw v6

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
