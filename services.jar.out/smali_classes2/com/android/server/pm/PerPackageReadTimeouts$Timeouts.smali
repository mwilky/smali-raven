.class public Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;
.super Ljava/lang/Object;
.source "PerPackageReadTimeouts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PerPackageReadTimeouts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Timeouts"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;


# instance fields
.field public final maxPendingTimeUs:J

.field public final minPendingTimeUs:J

.field public final minTimeUs:J


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v7, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    const-wide v1, 0xd693a400L

    const-wide v3, 0xd693a400L

    const-wide v5, 0xd693a400L

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;-><init>(JJJ)V

    sput-object v7, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->DEFAULT:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->minTimeUs:J

    iput-wide p3, p0, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->minPendingTimeUs:J

    iput-wide p5, p0, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->maxPendingTimeUs:J

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;
    .locals 11

    const-string v0, ":"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    if-eq v0, v1, :cond_0

    sget-object p0, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->DEFAULT:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p0, v0

    sget-object v1, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->DEFAULT:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    iget-wide v2, v1, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->minTimeUs:J

    invoke-static {v0, v2, v3}, Lcom/android/server/pm/PerPackageReadTimeouts;->tryParseLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v0, 0x1

    aget-object v0, p0, v0

    iget-wide v2, v1, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->minPendingTimeUs:J

    invoke-static {v0, v2, v3}, Lcom/android/server/pm/PerPackageReadTimeouts;->tryParseLong(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 v0, 0x2

    aget-object p0, p0, v0

    iget-wide v2, v1, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->maxPendingTimeUs:J

    invoke-static {p0, v2, v3}, Lcom/android/server/pm/PerPackageReadTimeouts;->tryParseLong(Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v2, 0x0

    cmp-long p0, v2, v5

    if-gtz p0, :cond_1

    cmp-long p0, v5, v7

    if-gtz p0, :cond_1

    cmp-long p0, v7, v9

    if-gtz p0, :cond_1

    new-instance p0, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;-><init>(JJJ)V

    return-object p0

    :cond_1
    return-object v1
.end method
