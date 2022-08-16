.class public final Lkotlinx/coroutines/scheduling/TasksKt;
.super Ljava/lang/Object;
.source "Tasks.kt"


# static fields
.field public static final CORE_POOL_SIZE:I

.field public static final IDLE_WORKER_KEEP_ALIVE_NS:J

.field public static final MAX_POOL_SIZE:I

.field public static final WORK_STEALING_TIME_RESOLUTION_NS:J

.field public static schedulerTimeSource:Lkotlinx/coroutines/scheduling/NanoTimeSource;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-wide/16 v3, 0x1

    const-wide v5, 0x7fffffffffffffffL

    const-string v0, "kotlinx.coroutines.scheduler.resolution.ns"

    const-wide/32 v1, 0x186a0

    invoke-static/range {v0 .. v6}, Landroidx/appcompat/R$attr;->systemProp(Ljava/lang/String;JJJ)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/scheduling/TasksKt;->WORK_STEALING_TIME_RESOLUTION_NS:J

    const/16 v0, 0x10

    const/16 v1, 0xc

    const-string v2, "kotlinx.coroutines.scheduler.blocking.parallelism"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v3, v1}, Landroidx/appcompat/R$attr;->systemProp$default(Ljava/lang/String;IIII)I

    sget v0, Lkotlinx/coroutines/internal/SystemPropsKt__SystemPropsKt;->AVAILABLE_PROCESSORS:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x1

    const/16 v4, 0x8

    const-string v5, "kotlinx.coroutines.scheduler.core.pool.size"

    invoke-static {v5, v1, v2, v3, v4}, Landroidx/appcompat/R$attr;->systemProp$default(Ljava/lang/String;IIII)I

    move-result v1

    sput v1, Lkotlinx/coroutines/scheduling/TasksKt;->CORE_POOL_SIZE:I

    mul-int/lit16 v0, v0, 0x80

    const v2, 0x1ffffe

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v0

    const/4 v1, 0x4

    const-string v4, "kotlinx.coroutines.scheduler.max.pool.size"

    invoke-static {v4, v0, v3, v2, v1}, Landroidx/appcompat/R$attr;->systemProp$default(Ljava/lang/String;IIII)I

    move-result v0

    sput v0, Lkotlinx/coroutines/scheduling/TasksKt;->MAX_POOL_SIZE:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0x1

    const-wide v6, 0x7fffffffffffffffL

    const-string v1, "kotlinx.coroutines.scheduler.keep.alive.sec"

    invoke-static/range {v1 .. v7}, Landroidx/appcompat/R$attr;->systemProp(Ljava/lang/String;JJJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/scheduling/TasksKt;->IDLE_WORKER_KEEP_ALIVE_NS:J

    sget-object v0, Lkotlinx/coroutines/scheduling/NanoTimeSource;->INSTANCE:Lkotlinx/coroutines/scheduling/NanoTimeSource;

    sput-object v0, Lkotlinx/coroutines/scheduling/TasksKt;->schedulerTimeSource:Lkotlinx/coroutines/scheduling/NanoTimeSource;

    return-void
.end method
