.class public final Lcom/android/server/stats/pull/SystemMemoryUtil;
.super Ljava/lang/Object;
.source "SystemMemoryUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;
    }
.end annotation


# direct methods
.method public static getMetrics()Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;
    .locals 15

    invoke-static {}, Landroid/os/Debug;->getDmabufHeapTotalExportedKb()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {}, Landroid/os/Debug;->getGpuTotalUsageKb()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {}, Landroid/os/Debug;->getGpuPrivateMemoryKb()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {}, Landroid/os/Debug;->getDmabufTotalExportedKb()J

    move-result-wide v3

    long-to-int v3, v3

    const/16 v4, 0x13

    new-array v4, v4, [J

    invoke-static {v4}, Landroid/os/Debug;->getMemInfo([J)V

    const/16 v5, 0xf

    aget-wide v5, v4, v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_0

    const/4 v5, 0x6

    aget-wide v5, v4, v5

    :cond_0
    const/4 v7, 0x1

    aget-wide v7, v4, v7

    const/16 v9, 0xa

    aget-wide v9, v4, v9

    add-long/2addr v7, v9

    const/4 v9, 0x2

    aget-wide v9, v4, v9

    add-long/2addr v7, v9

    const/16 v9, 0x10

    aget-wide v9, v4, v9

    add-long/2addr v7, v9

    const/16 v9, 0x11

    aget-wide v9, v4, v9

    add-long/2addr v7, v9

    const/16 v9, 0x12

    aget-wide v9, v4, v9

    add-long/2addr v7, v9

    const/4 v9, 0x7

    aget-wide v10, v4, v9

    add-long/2addr v7, v10

    add-long/2addr v7, v5

    const/16 v5, 0xc

    aget-wide v10, v4, v5

    add-long/2addr v7, v10

    const/16 v6, 0xd

    aget-wide v10, v4, v6

    add-long/2addr v7, v10

    invoke-static {}, Landroid/os/Debug;->isVmapStack()Z

    move-result v10

    const/16 v11, 0xe

    if-nez v10, :cond_1

    aget-wide v12, v4, v11

    add-long/2addr v7, v12

    :cond_1
    const/4 v10, 0x0

    if-ltz v3, :cond_2

    if-ltz v2, :cond_2

    add-int v12, v3, v2

    int-to-long v12, v12

    goto :goto_0

    :cond_2
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v7, v12

    if-ltz v3, :cond_3

    int-to-long v12, v3

    :goto_0
    add-long/2addr v7, v12

    goto :goto_1

    :cond_3
    if-ltz v0, :cond_4

    int-to-long v12, v0

    goto :goto_0

    :cond_4
    :goto_1
    new-instance v12, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;

    invoke-direct {v12}, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;-><init>()V

    aget-wide v13, v4, v9

    long-to-int v9, v13

    iput v9, v12, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->unreclaimableSlabKb:I

    aget-wide v13, v4, v5

    long-to-int v5, v13

    iput v5, v12, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->vmallocUsedKb:I

    aget-wide v5, v4, v6

    long-to-int v5, v5

    iput v5, v12, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->pageTablesKb:I

    aget-wide v5, v4, v11

    long-to-int v5, v5

    iput v5, v12, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->kernelStackKb:I

    const/4 v5, 0x4

    aget-wide v5, v4, v5

    long-to-int v5, v5

    iput v5, v12, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->shmemKb:I

    iput v0, v12, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->totalIonKb:I

    iput v1, v12, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->gpuTotalUsageKb:I

    iput v2, v12, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->gpuPrivateAllocationsKb:I

    iput v3, v12, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->dmaBufTotalExportedKb:I

    aget-wide v0, v4, v10

    sub-long/2addr v0, v7

    long-to-int v0, v0

    iput v0, v12, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->unaccountedKb:I

    return-object v12
.end method
