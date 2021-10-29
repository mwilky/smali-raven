.class Lcom/android/server/PackageWatchdog$BootThreshold;
.super Ljava/lang/Object;
.source "PackageWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BootThreshold"
.end annotation


# instance fields
.field private final mBootTriggerCount:I

.field private final mTriggerWindow:J

.field final synthetic this$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method constructor <init>(Lcom/android/server/PackageWatchdog;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->mBootTriggerCount:I

    iput-wide p3, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->mTriggerWindow:J

    return-void
.end method

.method private getCount()I
    .locals 2

    const-string/jumbo v0, "sys.rescue_boot_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setCount(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sys.rescue_boot_count"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMitigationCount()I
    .locals 2

    const-string/jumbo v0, "sys.boot_mitigation_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMitigationStart()J
    .locals 3

    const-string/jumbo v0, "sys.boot_mitigation_start"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStart()J
    .locals 3

    const-string/jumbo v0, "sys.rescue_boot_start"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public incrementAndTest()Z
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$BootThreshold;->readMitigationCountFromMetadataIfNecessary()V

    iget-object v0, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-static {v0}, Lcom/android/server/PackageWatchdog;->access$800(Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$SystemClock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$BootThreshold;->getStart()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const-string v2, "PackageWatchdog"

    const-string v3, "Window was less than zero. Resetting start to current time."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->setStart(J)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->setMitigationStart(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$BootThreshold;->getMitigationStart()J

    move-result-wide v2

    sub-long v2, v0, v2

    sget-wide v4, Lcom/android/server/PackageWatchdog;->DEFAULT_DEESCALATION_WINDOW_MS:J

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-lez v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/server/PackageWatchdog$BootThreshold;->setMitigationCount(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->setMitigationStart(J)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$BootThreshold;->getStart()J

    move-result-wide v4

    sub-long v4, v0, v4

    iget-wide v6, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->mTriggerWindow:J

    cmp-long v2, v4, v6

    const/4 v6, 0x1

    if-ltz v2, :cond_2

    invoke-direct {p0, v6}, Lcom/android/server/PackageWatchdog$BootThreshold;->setCount(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->setStart(J)V

    return v3

    :cond_2
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$BootThreshold;->getCount()I

    move-result v2

    add-int/2addr v2, v6

    invoke-direct {p0, v2}, Lcom/android/server/PackageWatchdog$BootThreshold;->setCount(I)V

    invoke-static {v3, v2, v4, v5}, Lcom/android/server/EventLogTags;->writeRescueNote(IIJ)V

    iget v7, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->mBootTriggerCount:I

    if-lt v2, v7, :cond_3

    move v3, v6

    :cond_3
    return v3
.end method

.method public readMitigationCountFromMetadataIfNecessary()V
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/metadata/watchdog/mitigation_count.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/PackageWatchdog$BootThreshold;->setMitigationCount(I)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read metadata file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageWatchdog"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->setStart(J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PackageWatchdog$BootThreshold;->setCount(I)V

    return-void
.end method

.method public saveMitigationCountToMetadata()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/metadata/watchdog/mitigation_count.txt"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$BootThreshold;->getMitigationCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not save metadata to file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageWatchdog"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setMitigationCount(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sys.boot_mitigation_count"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMitigationStart(J)V
    .locals 1

    const-string/jumbo v0, "sys.boot_mitigation_start"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/PackageWatchdog$BootThreshold;->setPropertyStart(Ljava/lang/String;J)V

    return-void
.end method

.method public setPropertyStart(Ljava/lang/String;J)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-static {v0}, Lcom/android/server/PackageWatchdog;->access$800(Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$SystemClock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v3, 0x0

    move-wide v1, p2

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setStart(J)V
    .locals 1

    const-string/jumbo v0, "sys.rescue_boot_start"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/PackageWatchdog$BootThreshold;->setPropertyStart(Ljava/lang/String;J)V

    return-void
.end method
