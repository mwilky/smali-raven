.class public final Lcom/android/server/graphics/fonts/FontManagerService;
.super Lcom/android/internal/graphics/fonts/IFontManager$Stub;
.source "FontManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;,
        Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;,
        Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;
    }
.end annotation


# static fields
.field private static final CONFIG_XML_FILE:Ljava/lang/String; = "/data/fonts/config/config.xml"

.field private static final FONT_FILES_DIR:Ljava/lang/String; = "/data/fonts/files"

.field private static final TAG:Ljava/lang/String; = "FontManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSerializedFontMap:Landroid/os/SharedMemory;

.field private final mSerializedFontMapLock:Ljava/lang/Object;

.field private final mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

.field private final mUpdatableFontDirLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/graphics/fonts/IFontManager$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMapLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    if-eqz p2, :cond_0

    const-string v0, "FontManagerService"

    const-string v1, "Entering safe mode. Deleting all font updates."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/fonts/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/fonts/config/config.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->deleteAllFiles(Ljava/io/File;Ljava/io/File;)V

    :cond_0
    iput-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/server/graphics/fonts/FontManagerService;->createUpdatableFontDir(Z)Lcom/android/server/graphics/fonts/UpdatableFontDir;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    invoke-direct {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->initialize()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ZLcom/android/server/graphics/fonts/FontManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/graphics/fonts/FontManagerService;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method private static closeFileDescriptors(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontUpdateRequest;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/fonts/FontUpdateRequest;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "FontManagerService"

    const-string v5, "Failed to close fd"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    goto :goto_0

    :cond_3
    return-void
.end method

.method private static createUpdatableFontDir(Z)Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/security/VerityUtils;->isFsVeritySupported()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/fonts/files"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/graphics/fonts/OtfFontFileParser;

    invoke-direct {v3}, Lcom/android/server/graphics/fonts/OtfFontFileParser;-><init>()V

    new-instance v4, Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;

    invoke-direct {v4, v0}, Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;-><init>(Lcom/android/server/graphics/fonts/FontManagerService$1;)V

    new-instance v0, Ljava/io/File;

    const-string v5, "/data/fonts/config/config.xml"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;-><init>(Ljava/io/File;Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileParser;Lcom/android/server/graphics/fonts/UpdatableFontDir$FsverityUtil;Ljava/io/File;)V

    return-object v1
.end method

.method private initialize()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/graphics/fonts/FontManagerService;->serializeSystemServerFontMap()Landroid/os/SharedMemory;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/graphics/fonts/FontManagerService;->setSerializedFontMap(Landroid/os/SharedMemory;)V

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->loadFontFileMap()V

    invoke-direct {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->updateSerializedFontMap()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static serializeFontMap(Landroid/text/FontConfig;)Landroid/os/SharedMemory;
    .locals 7

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    nop

    :try_start_0
    invoke-static {p0, v0}, Landroid/graphics/fonts/SystemFonts;->buildSystemFallback(Landroid/text/FontConfig;Landroid/util/ArrayMap;)Ljava/util/Map;

    move-result-object v1

    nop

    invoke-static {p0, v1}, Landroid/graphics/fonts/SystemFonts;->buildSystemTypefaces(Landroid/text/FontConfig;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Typeface;->serializeFontMap(Ljava/util/Map;)Landroid/os/SharedMemory;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    instance-of v6, v5, Ljava/nio/DirectByteBuffer;

    if-eqz v6, :cond_0

    invoke-static {v5}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-object v3

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "FontManagerService"

    const-string v3, "Failed to serialize updatable font map. Retrying with system image fonts."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    instance-of v5, v4, Ljava/nio/DirectByteBuffer;

    if-eqz v5, :cond_2

    invoke-static {v4}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    :cond_2
    goto :goto_1

    :cond_3
    return-object v2

    :goto_2
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    instance-of v4, v3, Ljava/nio/DirectByteBuffer;

    if-eqz v4, :cond_4

    invoke-static {v3}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    :cond_4
    goto :goto_3

    :cond_5
    throw v1
.end method

.method private static serializeSystemServerFontMap()Landroid/os/SharedMemory;
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->serializeFontMap(Ljava/util/Map;)Landroid/os/SharedMemory;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "FontManagerService"

    const-string v2, "Failed to serialize SystemServer system font map"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private setSerializedFontMap(Landroid/os/SharedMemory;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    move-object v0, v2

    iput-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private updateSerializedFontMap()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/graphics/fonts/FontManagerService;->serializeFontMap(Landroid/text/FontConfig;)Landroid/os/SharedMemory;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/graphics/fonts/FontManagerService;->serializeSystemServerFontMap()Landroid/os/SharedMemory;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/graphics/fonts/FontManagerService;->setSerializedFontMap(Landroid/os/SharedMemory;)V

    return-void
.end method


# virtual methods
.method clearUpdates()V
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/fonts/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/fonts/config/config.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->deleteAllFiles(Ljava/io/File;Ljava/io/File;)V

    invoke-direct {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->initialize()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mContext:Landroid/content/Context;

    const-string v1, "FontManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;-><init>(Lcom/android/server/graphics/fonts/FontManagerService;)V

    new-instance v1, Landroid/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p2, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpAll(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getCurrentFontMap()Landroid/os/SharedMemory;
    .locals 2

    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFontConfig()Landroid/text/FontConfig;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.UPDATE_FONTS"

    const-string v2, "UPDATE_FONTS permission required."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v0

    return-object v0
.end method

.method getFontFileMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    invoke-virtual {v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getPostScriptMap()Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSystemFontConfig()Landroid/text/FontConfig;
    .locals 2

    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSystemPreinstalledFontConfig()Landroid/text/FontConfig;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    invoke-virtual {v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;-><init>(Lcom/android/server/graphics/fonts/FontManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method restart()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->initialize()V

    return-void
.end method

.method update(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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

    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    invoke-virtual {v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getConfigVersion()I

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v2, -0x8

    const-string v3, "The base config version is older than current."

    invoke-direct {v1, v2, v3}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    invoke-virtual {v1, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->update(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->updateSerializedFontMap()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 v1, -0x7

    const-string v2, "The font updater is disabled."

    invoke-direct {v0, v1, v2}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public updateFontFamily(Ljava/util/List;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontUpdateRequest;",
            ">;I)I"
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.UPDATE_FONTS"

    const-string v2, "UPDATE_FONTS permission required."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService;->update(ILjava/util/List;)V
    :try_end_1
    .catch Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->closeFileDescriptors(Ljava/util/List;)V

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "FontManagerService"

    const-string v2, "Failed to update font family"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->getErrorCode()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->closeFileDescriptors(Ljava/util/List;)V

    return v1

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->closeFileDescriptors(Ljava/util/List;)V

    throw v0
.end method
