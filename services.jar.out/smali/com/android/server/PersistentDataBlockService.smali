.class public Lcom/android/server/PersistentDataBlockService;
.super Lcom/android/server/SystemService;
.source "PersistentDataBlockService.java"


# static fields
.field public static final DIGEST_SIZE_BYTES:I = 0x20

.field private static final FLASH_LOCK_LOCKED:Ljava/lang/String; = "1"

.field private static final FLASH_LOCK_PROP:Ljava/lang/String; = "ro.boot.flash.locked"

.field private static final FLASH_LOCK_UNLOCKED:Ljava/lang/String; = "0"

.field private static final FRP_CREDENTIAL_RESERVED_SIZE:I = 0x3e8

.field private static final GSI_RUNNING_PROP:Ljava/lang/String; = "ro.gsid.image_running"

.field private static final GSI_SANDBOX:Ljava/lang/String; = "/data/gsi_persistent_data"

.field private static final HEADER_SIZE:I = 0x8

.field private static final MAX_DATA_BLOCK_SIZE:I = 0x19000

.field private static final MAX_FRP_CREDENTIAL_HANDLE_SIZE:I = 0x3e4

.field private static final MAX_TEST_MODE_DATA_SIZE:I = 0x270c

.field private static final OEM_UNLOCK_PROP:Ljava/lang/String; = "sys.oem_unlock_allowed"

.field private static final PARTITION_TYPE_MARKER:I = 0x19901873

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final TAG:Ljava/lang/String;

.field private static final TEST_MODE_RESERVED_SIZE:I = 0x2710


# instance fields
.field private mAllowedUid:I

.field private mBlockDeviceSize:J

.field private final mContext:Landroid/content/Context;

.field private final mDataBlockFile:Ljava/lang/String;

.field private final mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

.field private mInternalService:Lcom/android/server/PersistentDataBlockManagerInternal;

.field private final mIsRunningDSU:Z

.field private mIsWritable:Z

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    iput-boolean v1, p0, Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z

    new-instance v0, Lcom/android/server/PersistentDataBlockService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PersistentDataBlockService$1;-><init>(Lcom/android/server/PersistentDataBlockService;)V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    new-instance v0, Lcom/android/server/PersistentDataBlockService$2;

    invoke-direct {v0, p0}, Lcom/android/server/PersistentDataBlockService$2;-><init>(Lcom/android/server/PersistentDataBlockService;)V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mInternalService:Lcom/android/server/PersistentDataBlockManagerInternal;

    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "ro.gsid.image_running"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/PersistentDataBlockService;->mIsRunningDSU:Z

    if-eqz v0, :cond_0

    const-string v0, "/data/gsi_persistent_data"

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/PersistentDataBlockService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/PersistentDataBlockService;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetMaximumDataBlockSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/PersistentDataBlockService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockWritePermission()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->nativeWipe(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/PersistentDataBlockService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceIsAdmin()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->enforceUserRestriction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/PersistentDataBlockService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/PersistentDataBlockService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockReadPermission()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/PersistentDataBlockService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/PersistentDataBlockService;)Lcom/android/server/PersistentDataBlockManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mInternalService:Lcom/android/server/PersistentDataBlockManagerInternal;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/PersistentDataBlockService;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getFrpCredentialDataOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/nio/channels/FileChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockOutputChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/PersistentDataBlockService;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/android/server/PersistentDataBlockService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/PersistentDataBlockService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/PersistentDataBlockService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/PersistentDataBlockService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/PersistentDataBlockService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I

    move-result v0

    return v0
.end method

.method private computeAndWriteDigestLocked()Z
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockOutputChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    const/16 v3, 0x20

    :try_start_1
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    return v4

    :catch_0
    move-exception v3

    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v5, "failed to write block checksum"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_1
    move-exception v2

    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "partition not available?"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_0
    return v1
.end method

.method private computeDigestLocked([B)[B
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    nop

    :try_start_1
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    const/16 v3, 0x20

    if-eqz p1, :cond_0

    :try_start_2
    array-length v4, p1

    if-ne v4, v3, :cond_0

    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->read([B)I

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    :goto_0
    const/16 v4, 0x400

    new-array v4, v4, [B

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ljava/security/MessageDigest;->update([BII)V

    :goto_1
    invoke-virtual {v1, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    move v6, v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_1

    invoke-virtual {v2, v4, v5, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_3
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v5, "failed to read partition"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0

    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catch_1
    move-exception v2

    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v4, "SHA-256 not supported?"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0

    :catch_2
    move-exception v1

    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "partition not available?"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private doGetMaximumDataBlockSize()J
    .locals 5

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x20

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x19000

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    move-wide v2, v0

    :cond_0
    return-wide v2
.end method

.method private doGetOemUnlockEnabled()Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/io/DataInputStream;->skip(J)J

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v3

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_5
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unable to access persistent partition"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    nop

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v0

    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catch_1
    move-exception v1

    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "partition not available"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private doSetOemUnlockEnabledLocked(Z)V
    .locals 8

    const-string v0, "1"

    const-string v1, "0"

    const-string/jumbo v2, "sys.oem_unlock_allowed"

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockOutputChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    if-eqz p1, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v3, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    nop

    return-void

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_1
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "unable to access persistent partition"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_3
    if-eqz p1, :cond_3

    goto :goto_4

    :cond_3
    move-object v0, v1

    :goto_4
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method private enforceChecksumValidity()Z
    .locals 5

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    :cond_1
    :goto_0
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v4, "Formatting FRP partition..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/PersistentDataBlockService;->formatPartitionLocked(Z)V

    monitor-exit v1

    return v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private enforceIsAdmin()V
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Only the Admin user is allowed to change OEM unlock state"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private enforceOemUnlockReadPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.OEM_UNLOCK_STATE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can\'t access OEM unlock state. Requires READ_OEM_UNLOCK_STATE or OEM_UNLOCK_STATE permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private enforceOemUnlockWritePermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OEM_UNLOCK_STATE"

    const-string v2, "Can\'t modify OEM unlock state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceUid(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not allowed to access PST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceUserRestriction(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OEM unlock is disallowed by user restriction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private formatIfOemUnlockEnabled()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/PersistentDataBlockService;->formatPartitionLocked(Z)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :goto_0
    const-string/jumbo v1, "sys.oem_unlock_allowed"

    if-eqz v0, :cond_1

    const-string v2, "1"

    goto :goto_1

    :cond_1
    const-string v2, "0"

    :goto_1
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private formatPartitionLocked(Z)V
    .locals 12

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockOutputChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v3, 0x20

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const v3, 0x19901873

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v5

    long-to-int v5, v5

    sub-int/2addr v5, v1

    add-int/lit16 v6, v5, -0x2710

    const/16 v7, 0x3e8

    sub-int/2addr v6, v7

    sub-int/2addr v6, v4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object v2, v6

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    const-wide/16 v10, 0x2710

    add-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object v2, v6

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object v2, v6

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v2, "failed to format block"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private getAllowedUid(I)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040267

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x100000

    invoke-virtual {v2, v0, v3, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not able to find package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v1
.end method

.method private getBlockDeviceSize()J
    .locals 5

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/PersistentDataBlockService;->mIsRunningDSU:Z

    if-eqz v1, :cond_0

    const-wide/32 v1, 0x19000

    iput-wide v1, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/PersistentDataBlockService;->nativeGetBlockDeviceSize(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide v0, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    return-wide v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getBlockOutputChannel()Ljava/nio/channels/FileChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method private getFrpCredentialDataOffset()J
    .locals 4

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getTestHarnessModeDataOffset()J
    .locals 4

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getFrpCredentialDataOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const v1, 0x19901873

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private native nativeGetBlockDeviceSize(Ljava/lang/String;)J
.end method

.method private native nativeWipe(Ljava/lang/String;)I
.end method


# virtual methods
.method public synthetic lambda$onStart$0$PersistentDataBlockService()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->getAllowedUid(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->formatIfOemUnlockEnabled()V

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    const-string/jumbo v1, "persistent_data_block"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/PersistentDataBlockService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onBootPhase(I)V
    .locals 5

    const-string v0, "Service "

    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    nop

    const-class v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mInternalService:Lcom/android/server/PersistentDataBlockManagerInternal;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " init timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " init interrupted"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    return-void
.end method

.method public onStart()V
    .locals 3

    new-instance v0, Lcom/android/server/PersistentDataBlockService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/PersistentDataBlockService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/PersistentDataBlockService;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".onStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method
