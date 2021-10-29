.class public final Lcom/android/server/powerstats/PowerStatsLogger;
.super Landroid/os/Handler;
.source "PowerStatsLogger.java"


# static fields
.field private static final DEBUG:Z = false

.field protected static final MSG_LOG_TO_DATA_STORAGE_BATTERY_DROP:I = 0x0

.field protected static final MSG_LOG_TO_DATA_STORAGE_HIGH_FREQUENCY:I = 0x2

.field protected static final MSG_LOG_TO_DATA_STORAGE_LOW_FREQUENCY:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDataStoragePath:Ljava/io/File;

.field private mDeleteMeterDataOnBoot:Z

.field private mDeleteModelDataOnBoot:Z

.field private mDeleteResidencyDataOnBoot:Z

.field private final mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

.field private final mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

.field private final mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

.field private final mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

.field private final mStartWallTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    move-object/from16 v5, p9

    iput-object v5, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-object/from16 v6, p2

    iput-object v6, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    new-instance v7, Lcom/android/server/powerstats/PowerStatsDataStorage;

    iget-object v8, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    move-object/from16 v9, p3

    invoke-direct {v7, v1, v8, v9}, Lcom/android/server/powerstats/PowerStatsDataStorage;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    new-instance v8, Lcom/android/server/powerstats/PowerStatsDataStorage;

    iget-object v10, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    move-object/from16 v11, p5

    invoke-direct {v8, v1, v10, v11}, Lcom/android/server/powerstats/PowerStatsDataStorage;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    new-instance v10, Lcom/android/server/powerstats/PowerStatsDataStorage;

    iget-object v12, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    move-object/from16 v13, p7

    invoke-direct {v10, v1, v12, v13}, Lcom/android/server/powerstats/PowerStatsDataStorage;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    iput-object v10, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    invoke-interface/range {p9 .. p9}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->getProtoBytes([Landroid/hardware/power/stats/Channel;)[B

    move-result-object v14

    invoke-direct {v0, v2, v14}, Lcom/android/server/powerstats/PowerStatsLogger;->dataChanged(Ljava/lang/String;[B)Z

    move-result v15

    iput-boolean v15, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteMeterDataOnBoot:Z

    if-eqz v15, :cond_0

    invoke-virtual {v7}, Lcom/android/server/powerstats/PowerStatsDataStorage;->deleteLogs()V

    invoke-direct {v0, v2, v14}, Lcom/android/server/powerstats/PowerStatsLogger;->updateCacheFile(Ljava/lang/String;[B)V

    :cond_0
    invoke-interface/range {p9 .. p9}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerUtils;->getProtoBytes([Landroid/hardware/power/stats/EnergyConsumer;)[B

    move-result-object v15

    invoke-direct {v0, v3, v15}, Lcom/android/server/powerstats/PowerStatsLogger;->dataChanged(Ljava/lang/String;[B)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteModelDataOnBoot:Z

    if-eqz v1, :cond_1

    invoke-virtual {v8}, Lcom/android/server/powerstats/PowerStatsDataStorage;->deleteLogs()V

    invoke-direct {v0, v3, v15}, Lcom/android/server/powerstats/PowerStatsLogger;->updateCacheFile(Ljava/lang/String;[B)V

    :cond_1
    invoke-interface/range {p9 .. p9}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/powerstats/ProtoStreamUtils$PowerEntityUtils;->getProtoBytes([Landroid/hardware/power/stats/PowerEntity;)[B

    move-result-object v8

    move-object/from16 v16, v1

    invoke-direct {v0, v4, v8}, Lcom/android/server/powerstats/PowerStatsLogger;->dataChanged(Ljava/lang/String;[B)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteResidencyDataOnBoot:Z

    if-eqz v1, :cond_2

    invoke-virtual {v10}, Lcom/android/server/powerstats/PowerStatsDataStorage;->deleteLogs()V

    invoke-direct {v0, v4, v8}, Lcom/android/server/powerstats/PowerStatsLogger;->updateCacheFile(Ljava/lang/String;[B)V

    :cond_2
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private dataChanged(Ljava/lang/String;[B)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [B

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    const-string v5, "Failed to read cached data from file"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {v2, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_1
    return v0
.end method

.method private updateCacheFile(Ljava/lang/String;[B)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    const-string v2, "Failed to write current data to cached file"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getDeleteMeterDataOnBoot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteMeterDataOnBoot:Z

    return v0
.end method

.method public getDeleteModelDataOnBoot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteModelDataOnBoot:Z

    return v0
.end method

.method public getDeleteResidencyDataOnBoot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteResidencyDataOnBoot:Z

    return v0
.end method

.method public getStartWallTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    new-array v2, v1, [I

    invoke-interface {v0, v2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    invoke-static {v0, v2, v3}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyMeasurementUtils;->adjustTimeSinceBootToEpoch([Landroid/hardware/power/stats/EnergyMeasurement;J)V

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    invoke-static {v0}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyMeasurementUtils;->getProtoBytes([Landroid/hardware/power/stats/EnergyMeasurement;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    new-array v3, v1, [I

    invoke-interface {v2, v3}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    invoke-static {v2, v3, v4}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->adjustTimeSinceBootToEpoch([Landroid/hardware/power/stats/EnergyConsumerResult;J)V

    iget-object v3, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    invoke-static {v2, v1}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->getProtoBytes([Landroid/hardware/power/stats/EnergyConsumerResult;Z)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    new-array v1, v1, [I

    invoke-interface {v0, v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    invoke-static {v0, v1, v2}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->adjustTimeSinceBootToEpoch([Landroid/hardware/power/stats/EnergyConsumerResult;J)V

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->getProtoBytes([Landroid/hardware/power/stats/EnergyConsumerResult;Z)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    new-array v1, v1, [I

    invoke-interface {v0, v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    invoke-static {v0, v1, v2}, Lcom/android/server/powerstats/ProtoStreamUtils$StateResidencyResultUtils;->adjustTimeSinceBootToEpoch([Landroid/hardware/power/stats/StateResidencyResult;J)V

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    invoke-static {v0}, Lcom/android/server/powerstats/ProtoStreamUtils$StateResidencyResultUtils;->getProtoBytes([Landroid/hardware/power/stats/StateResidencyResult;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeMeterDataToFile(Ljava/io/FileDescriptor;)V
    .locals 4

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    invoke-interface {v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/Channel;Landroid/util/proto/ProtoOutputStream;)V

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    new-instance v3, Lcom/android/server/powerstats/PowerStatsLogger$1;

    invoke-direct {v3, p0, v0}, Lcom/android/server/powerstats/PowerStatsLogger$1;-><init>(Lcom/android/server/powerstats/PowerStatsLogger;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v2, v3}, Lcom/android/server/powerstats/PowerStatsDataStorage;->read(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    const-string v3, "Failed to write energy meter info to incident report."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public writeModelDataToFile(Ljava/io/FileDescriptor;)V
    .locals 4

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    invoke-interface {v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyConsumer;Landroid/util/proto/ProtoOutputStream;)V

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    new-instance v3, Lcom/android/server/powerstats/PowerStatsLogger$2;

    invoke-direct {v3, p0, v0}, Lcom/android/server/powerstats/PowerStatsLogger$2;-><init>(Lcom/android/server/powerstats/PowerStatsLogger;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v2, v3}, Lcom/android/server/powerstats/PowerStatsDataStorage;->read(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    const-string v3, "Failed to write energy model info to incident report."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public writeResidencyDataToFile(Ljava/io/FileDescriptor;)V
    .locals 4

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    invoke-interface {v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$PowerEntityUtils;->packProtoMessage([Landroid/hardware/power/stats/PowerEntity;Landroid/util/proto/ProtoOutputStream;)V

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    new-instance v3, Lcom/android/server/powerstats/PowerStatsLogger$3;

    invoke-direct {v3, p0, v0}, Lcom/android/server/powerstats/PowerStatsLogger$3;-><init>(Lcom/android/server/powerstats/PowerStatsLogger;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v2, v3}, Lcom/android/server/powerstats/PowerStatsDataStorage;->read(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    const-string v3, "Failed to write residency data to incident report."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method
