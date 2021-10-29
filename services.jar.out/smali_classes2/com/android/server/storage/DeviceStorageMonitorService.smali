.class public Lcom/android/server/storage/DeviceStorageMonitorService;
.super Lcom/android/server/SystemService;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;,
        Lcom/android/server/storage/DeviceStorageMonitorService$Shell;,
        Lcom/android/server/storage/DeviceStorageMonitorService$State;
    }
.end annotation


# static fields
.field private static final BOOT_IMAGE_STORAGE_REQUIREMENT:J

.field private static final DEFAULT_CHECK_INTERVAL:J = 0xea60L

.field private static final DEFAULT_LOG_DELTA_BYTES:J

.field public static final EXTRA_SEQUENCE:Ljava/lang/String; = "seq"

.field private static final MSG_CHECK:I = 0x1

.field static final OPTION_FORCE_UPDATE:I = 0x1

.field static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field private static final TV_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "devicestoragemonitor.tv"


# instance fields
.field private mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

.field private volatile mForceLevel:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

.field private mNotifManager:Landroid/app/NotificationManager;

.field private final mRemoteService:Landroid/os/Binder;

.field private final mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/UUID;",
            "Lcom/android/server/storage/DeviceStorageMonitorService$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->DEFAULT_LOG_DELTA_BYTES:J

    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->BOOT_IMAGE_STORAGE_REQUIREMENT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$2;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$3;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$3;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceStorageMonitorService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/storage/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->check()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private check()V
    .locals 25

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/storage/StorageManager;

    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v7

    invoke-virtual {v2, v6}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v9

    invoke-virtual {v6}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v11

    const-wide/16 v13, 0x3

    mul-long/2addr v13, v9

    const-wide/16 v15, 0x2

    div-long/2addr v13, v15

    cmp-long v0, v11, v13

    if-gez v0, :cond_0

    nop

    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/pm/PackageManagerService;

    :try_start_0
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    mul-long v12, v9, v15

    const/4 v14, 0x0

    invoke-virtual {v11, v0, v12, v13, v14}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v12, "DeviceStorageMonitorService"

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->findOrCreateState(Ljava/util/UUID;)Lcom/android/server/storage/DeviceStorageMonitorService$State;

    move-result-object v11

    invoke-virtual {v6}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v19

    invoke-virtual {v6}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v14

    iget v12, v11, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    iget v13, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    move-object/from16 v21, v2

    const/4 v2, -0x1

    if-eq v13, v2, :cond_1

    const/4 v12, -0x1

    iget v2, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    move v13, v12

    goto :goto_2

    :cond_1
    cmp-long v2, v14, v7

    if-gtz v2, :cond_2

    const/4 v2, 0x2

    move v13, v12

    goto :goto_2

    :cond_2
    cmp-long v2, v14, v9

    if-gtz v2, :cond_3

    const/4 v2, 0x1

    move v13, v12

    goto :goto_2

    :cond_3
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v2, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-wide v16, Lcom/android/server/storage/DeviceStorageMonitorService;->BOOT_IMAGE_STORAGE_REQUIREMENT:J

    cmp-long v2, v14, v16

    if-gez v2, :cond_4

    const/4 v2, 0x1

    move v13, v12

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    move v13, v12

    :goto_2
    move-object/from16 v22, v6

    move-wide/from16 v23, v7

    iget-wide v6, v11, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    sub-long/2addr v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sget-wide v16, Lcom/android/server/storage/DeviceStorageMonitorService;->DEFAULT_LOG_DELTA_BYTES:J

    cmp-long v6, v6, v16

    if-gtz v6, :cond_6

    if-eq v13, v2, :cond_5

    goto :goto_3

    :cond_5
    move v6, v13

    move-wide v7, v14

    goto :goto_4

    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    move v6, v13

    move-wide v7, v14

    move v14, v2

    move-wide v15, v7

    move-wide/from16 v17, v19

    invoke-static/range {v12 .. v18}, Lcom/android/server/EventLogTags;->writeStorageState(Ljava/lang/String;IIJJ)V

    iput-wide v7, v11, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    :goto_4
    invoke-direct {v1, v5, v6, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->updateNotifications(Landroid/os/storage/VolumeInfo;II)V

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->updateBroadcasts(Landroid/os/storage/VolumeInfo;III)V

    iput v2, v11, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    move-object/from16 v2, v21

    goto/16 :goto_0

    :cond_7
    move-object/from16 v21, v2

    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_8
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "Device storage monitor service (devicestoragemonitor) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  force-low [-f]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Force storage to be low, freezing storage state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -f: force a storage change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  force-not-low [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Force storage to not be low, freezing storage state."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  reset [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Unfreeze storage state, returning to current real values."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private findOrCreateState(Ljava/util/UUID;)Lcom/android/server/storage/DeviceStorageMonitorService$State;
    .locals 3

    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private updateBroadcasts(Landroid/os/storage/VolumeInfo;III)V
    .locals 7

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x5200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "seq"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v3, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$400(III)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    invoke-static {v3, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$500(III)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v4, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$400(III)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_3
    invoke-static {v4, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$500(III)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateNotifications(Landroid/os/storage/VolumeInfo;II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v11, v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$400(III)Z

    move-result v3

    const/16 v13, 0x17

    if-eqz v3, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v14, v3

    const-string v3, "android.os.storage.extra.UUID"

    invoke-virtual {v14, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v14, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v3, 0x10404bc

    invoke-virtual {v9, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    const v3, 0x10404ba

    invoke-virtual {v9, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v4, 0x0

    const/high16 v6, 0x4000000

    const/4 v7, 0x0

    sget-object v16, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v3, v9

    move-object v5, v14

    move-object v12, v8

    move-object/from16 v8, v16

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v4, v9, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x1080805

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x106001c

    invoke-virtual {v9, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v5, v12}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "sys"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$TvExtender;

    invoke-direct {v5}, Landroid/app/Notification$TvExtender;-><init>()V

    const-string v6, "devicestoragemonitor.tv"

    invoke-virtual {v5, v6}, Landroid/app/Notification$TvExtender;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v4, Landroid/app/Notification;->flags:I

    iget-object v5, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v13, v4, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const/16 v7, 0x82

    invoke-static {v7, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-static {v11, v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$500(III)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v13, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x82

    invoke-static {v4, v3, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return-void
.end method


# virtual methods
.method dumpImpl(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    array-length v1, p3

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget-object v1, p3, v1

    const-string v2, "-a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;

    invoke-direct {v2, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    new-instance v9, Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v5, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    goto/16 :goto_5

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    const-string v2, "Known volumes:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/UUID;

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    sget-object v5, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v5, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "Default:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget v5, v4, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    invoke-static {v5}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$300(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "level"

    invoke-virtual {v0, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v5, v4, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "lastUsableBytes"

    invoke-virtual {v0, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v8

    invoke-static {v3, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v5, "lowBytes="

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    const-string v5, " fullBytes="

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    const-string v5, "path="

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    goto :goto_3

    :cond_4
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "mSeq"

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$300(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mForceState"

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    nop

    :goto_5
    return-void
.end method

.method onShellCommand(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;Ljava/lang/String;)I
    .locals 8

    if-nez p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "force-not-low"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :sswitch_1
    const-string v1, "force-low"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "reset"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :goto_0
    move v1, v2

    :goto_1
    const/4 v5, 0x0

    const-string v6, "android.permission.DEVICE_POWER"

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v6, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    :cond_2
    goto :goto_2

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    :cond_3
    goto :goto_2

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    :cond_4
    nop

    :goto_2
    return v3

    :sswitch_data_0
    .sparse-switch
        0x6761d4f -> :sswitch_2
        0x5b023572 -> :sswitch_1
        0x64de7478 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-direct {v1}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;-><init>()V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-virtual {v1}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;->startWatching()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.leanback"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    new-instance v4, Landroid/app/NotificationChannel;

    const v5, 0x10402e8

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    const-string v7, "devicestoragemonitor.tv"

    invoke-direct {v4, v7, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    const-string v4, "devicestoragemonitor"

    invoke-virtual {p0, v4, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v3, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I
    .locals 3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_1

    const-string v1, "-f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
