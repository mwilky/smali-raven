.class Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;
.super Ljava/lang/Object;
.source "LocalEventLog.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocalEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mCount:I

.field private mCurrentRealtimeMs:J

.field private final mFilter:Ljava/lang/String;

.field private mIndex:I

.field private final mSystemTimeDeltaMs:J

.field final synthetic this$0:Lcom/android/server/location/eventlog/LocalEventLog;


# direct methods
.method constructor <init>(Lcom/android/server/location/eventlog/LocalEventLog;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;-><init>(Lcom/android/server/location/eventlog/LocalEventLog;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/location/eventlog/LocalEventLog;Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mFilter:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mSystemTimeDeltaMs:J

    invoke-static {p1}, Lcom/android/server/location/eventlog/LocalEventLog;->access$000(Lcom/android/server/location/eventlog/LocalEventLog;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCurrentRealtimeMs:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    iput p1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCount:I

    invoke-direct {p0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->increment()V

    return-void
.end method

.method private increment()V
    .locals 4

    iget v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    invoke-static {v0}, Lcom/android/server/location/eventlog/LocalEventLog;->access$200(Lcom/android/server/location/eventlog/LocalEventLog;)[Lcom/android/server/location/eventlog/LocalEventLog$Log;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/android/server/location/eventlog/LocalEventLog$Log;->getTimeDeltaMs()J

    move-result-wide v0

    :cond_1
    :goto_0
    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCurrentRealtimeMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCurrentRealtimeMs:J

    iget-object v2, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    iget v3, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    invoke-static {v2, v3}, Lcom/android/server/location/eventlog/LocalEventLog;->access$300(Lcom/android/server/location/eventlog/LocalEventLog;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    iget v2, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCount:I

    iget-object v3, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    invoke-static {v3}, Lcom/android/server/location/eventlog/LocalEventLog;->access$100(Lcom/android/server/location/eventlog/LocalEventLog;)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    invoke-static {v2}, Lcom/android/server/location/eventlog/LocalEventLog;->access$200(Lcom/android/server/location/eventlog/LocalEventLog;)[Lcom/android/server/location/eventlog/LocalEventLog$Log;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/android/server/location/eventlog/LocalEventLog$Log;->getTimeDeltaMs()J

    move-result-wide v0

    :cond_2
    iget v2, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCount:I

    iget-object v3, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    invoke-static {v3}, Lcom/android/server/location/eventlog/LocalEventLog;->access$100(Lcom/android/server/location/eventlog/LocalEventLog;)I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    invoke-static {v2}, Lcom/android/server/location/eventlog/LocalEventLog;->access$200(Lcom/android/server/location/eventlog/LocalEventLog;)[Lcom/android/server/location/eventlog/LocalEventLog$Log;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/android/server/location/eventlog/LocalEventLog$Log;->isFiller()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mFilter:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    invoke-static {v2}, Lcom/android/server/location/eventlog/LocalEventLog;->access$200(Lcom/android/server/location/eventlog/LocalEventLog;)[Lcom/android/server/location/eventlog/LocalEventLog$Log;

    move-result-object v2

    iget v3, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mFilter:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/server/location/eventlog/LocalEventLog$Log;->filter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCount:I

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    invoke-static {v1}, Lcom/android/server/location/eventlog/LocalEventLog;->access$100(Lcom/android/server/location/eventlog/LocalEventLog;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    invoke-static {v0}, Lcom/android/server/location/eventlog/LocalEventLog;->access$200(Lcom/android/server/location/eventlog/LocalEventLog;)[Lcom/android/server/location/eventlog/LocalEventLog$Log;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    aget-object v0, v0, v1

    iget-wide v1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCurrentRealtimeMs:J

    invoke-interface {v0}, Lcom/android/server/location/eventlog/LocalEventLog$Log;->getTimeDeltaMs()J

    move-result-wide v3

    add-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mSystemTimeDeltaMs:J

    add-long/2addr v1, v3

    invoke-direct {p0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->increment()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/location/eventlog/LocalEventLog;->getTimePrefix(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/server/location/eventlog/LocalEventLog$Log;->getLogString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
