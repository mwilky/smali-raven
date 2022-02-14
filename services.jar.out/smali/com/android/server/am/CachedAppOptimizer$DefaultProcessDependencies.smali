.class final Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"

# interfaces
.implements Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultProcessDependencies"
.end annotation


# static fields
.field public static mPidCompacting:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;->mPidCompacting:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;-><init>()V

    return-void
.end method


# virtual methods
.method public getRss(I)[J
    .locals 1

    invoke-static {p1}, Landroid/os/Process;->getRss(I)[J

    move-result-object v0

    return-object v0
.end method

.method public performCompaction(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sput p2, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;->mPidCompacting:I

    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->access$1900()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, v1}, Lcom/android/server/am/CachedAppOptimizer;->access$3200(II)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->access$1900()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2, v1}, Lcom/android/server/am/CachedAppOptimizer;->access$3200(II)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->access$1900()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2, v1}, Lcom/android/server/am/CachedAppOptimizer;->access$3200(II)V

    :cond_2
    :goto_0
    const/4 v0, -0x1

    sput v0, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;->mPidCompacting:I

    return-void
.end method
