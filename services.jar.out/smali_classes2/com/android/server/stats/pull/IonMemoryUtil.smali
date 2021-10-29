.class public final Lcom/android/server/stats/pull/IonMemoryUtil;
.super Ljava/lang/Object;
.source "IonMemoryUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;
    }
.end annotation


# static fields
.field private static final DEBUG_SYSTEM_ION_HEAP_FILE:Ljava/lang/String; = "/sys/kernel/debug/ion/heaps/system"

.field private static final ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

.field private static final PROCESS_ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "IonMemoryUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    nop

    const-string v0, "\n\\s*total\\s*(\\d+)\\s*\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/pull/IonMemoryUtil;->ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

    nop

    const-string v0, "\n\\s+\\S+\\s+(\\d+)\\s+(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/pull/IonMemoryUtil;->PROCESS_ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseIonHeapSizeFromDebugfs(Ljava/lang/String;)J
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    sget-object v0, Lcom/android/server/stats/pull/IonMemoryUtil;->ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-wide v1

    :catch_0
    move-exception v3

    const-string v4, "IonMemoryUtil"

    const-string v5, "Failed to parse value"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v1
.end method

.method static parseProcessIonHeapSizesFromDebugfs(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/stats/pull/IonMemoryUtil;->PROCESS_ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;

    if-nez v6, :cond_1

    new-instance v7, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;

    invoke-direct {v7}, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;-><init>()V

    move-object v6, v7

    invoke-virtual {v1, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    iput v3, v6, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    iget-wide v7, v6, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->totalSizeInBytes:J

    add-long/2addr v7, v4

    iput-wide v7, v6, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->totalSizeInBytes:J

    iget v7, v6, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->count:I

    add-int/2addr v7, v2

    iput v7, v6, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->count:I

    iget-wide v7, v6, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->maxSizeInBytes:J

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->maxSizeInBytes:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "IonMemoryUtil"

    const-string v4, "Failed to parse value"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-object v2
.end method

.method private static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "IonMemoryUtil"

    const-string v2, "Failed to read file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, ""

    return-object v1
.end method

.method public static readProcessSystemIonHeapSizesFromDebugfs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;",
            ">;"
        }
    .end annotation

    const-string v0, "/sys/kernel/debug/ion/heaps/system"

    invoke-static {v0}, Lcom/android/server/stats/pull/IonMemoryUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/stats/pull/IonMemoryUtil;->parseProcessIonHeapSizesFromDebugfs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readSystemIonHeapSizeFromDebugfs()J
    .locals 2

    const-string v0, "/sys/kernel/debug/ion/heaps/system"

    invoke-static {v0}, Lcom/android/server/stats/pull/IonMemoryUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/stats/pull/IonMemoryUtil;->parseIonHeapSizeFromDebugfs(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
