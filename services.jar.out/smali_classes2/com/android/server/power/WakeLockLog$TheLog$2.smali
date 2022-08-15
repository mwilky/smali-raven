.class public Lcom/android/server/power/WakeLockLog$TheLog$2;
.super Ljava/lang/Object;
.source "WakeLockLog.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/WakeLockLog$TheLog;->getAllItems(Lcom/android/server/power/WakeLockLog$LogEntry;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/android/server/power/WakeLockLog$LogEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public final mChangeValue:J

.field public mCurrent:I

.field public mCurrentTimeReference:J

.field public final synthetic this$0:Lcom/android/server/power/WakeLockLog$TheLog;

.field public final synthetic val$tempEntry:Lcom/android/server/power/WakeLockLog$LogEntry;


# direct methods
.method public constructor <init>(Lcom/android/server/power/WakeLockLog$TheLog;Lcom/android/server/power/WakeLockLog$LogEntry;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    iput-object p2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->val$tempEntry:Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/server/power/WakeLockLog$TheLog;->-$$Nest$fgetmStart(Lcom/android/server/power/WakeLockLog$TheLog;)I

    move-result p2

    iput p2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    invoke-static {p1}, Lcom/android/server/power/WakeLockLog$TheLog;->-$$Nest$fgetmStartTime(Lcom/android/server/power/WakeLockLog$TheLog;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrentTimeReference:J

    invoke-static {p1}, Lcom/android/server/power/WakeLockLog$TheLog;->-$$Nest$fgetmChangeCount(Lcom/android/server/power/WakeLockLog$TheLog;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mChangeValue:J

    return-void
.end method


# virtual methods
.method public final checkState()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mChangeValue:J

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-static {v2}, Lcom/android/server/power/WakeLockLog$TheLog;->-$$Nest$fgetmChangeCount(Lcom/android/server/power/WakeLockLog$TheLog;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer modified, old change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mChangeValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", new change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-static {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->-$$Nest$fgetmChangeCount(Lcom/android/server/power/WakeLockLog$TheLog;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/power/WakeLockLog$TheLog$2;->checkState()V

    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-static {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->-$$Nest$fgetmEnd(Lcom/android/server/power/WakeLockLog$TheLog;)I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Lcom/android/server/power/WakeLockLog$LogEntry;
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/power/WakeLockLog$TheLog$2;->checkState()V

    invoke-virtual {p0}, Lcom/android/server/power/WakeLockLog$TheLog$2;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrentTimeReference:J

    iget-object v4, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->val$tempEntry:Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/power/WakeLockLog$TheLog;->-$$Nest$mreadEntryAt(Lcom/android/server/power/WakeLockLog$TheLog;IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-static {v1}, Lcom/android/server/power/WakeLockLog$TheLog;->-$$Nest$fgetmTranslator(Lcom/android/server/power/WakeLockLog$TheLog;)Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-static {v3}, Lcom/android/server/power/WakeLockLog$TheLog;->-$$Nest$fgetmStartTime(Lcom/android/server/power/WakeLockLog$TheLog;)J

    move-result-wide v3

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v1

    iget v2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-static {v1}, Lcom/android/server/power/WakeLockLog$TheLog;->-$$Nest$fgetmBuffer(Lcom/android/server/power/WakeLockLog$TheLog;)[B

    move-result-object v1

    array-length v1, v1

    rem-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    iget-wide v1, v0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrentTimeReference:J

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "No more entries left."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/power/WakeLockLog$TheLog$2;->next()Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
