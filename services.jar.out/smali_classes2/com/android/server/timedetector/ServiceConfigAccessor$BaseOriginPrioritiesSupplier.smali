.class abstract Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;
.super Ljava/lang/Object;
.source "ServiceConfigAccessor.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timedetector/ServiceConfigAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseOriginPrioritiesSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "[I>;"
    }
.end annotation


# instance fields
.field private mLastPriorityInts:[I

.field private mLastPriorityStrings:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/timedetector/ServiceConfigAccessor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;->get()[I

    move-result-object v0

    return-object v0
.end method

.method public get()[I
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;->lookupPriorityStrings()[Ljava/lang/String;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;->mLastPriorityStrings:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;->mLastPriorityInts:[I

    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    array-length v2, v0

    new-array v2, v2, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    const/4 v2, 0x0

    :goto_0
    :try_start_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    invoke-static {v3}, Lcom/android/server/timedetector/TimeDetectorStrategy;->stringToOrigin(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    goto :goto_2

    :catch_0
    move-exception v2

    const/4 v1, 0x0

    :cond_3
    :goto_2
    :try_start_2
    iput-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;->mLastPriorityStrings:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;->mLastPriorityInts:[I

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected abstract lookupPriorityStrings()[Ljava/lang/String;
.end method
