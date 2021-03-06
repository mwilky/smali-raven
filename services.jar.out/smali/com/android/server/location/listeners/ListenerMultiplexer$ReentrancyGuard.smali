.class final Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;
.super Ljava/lang/Object;
.source "ListenerMultiplexer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/listeners/ListenerMultiplexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReentrancyGuard"
.end annotation


# instance fields
.field private mGuardCount:I

.field private mScheduledRemovals:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Lcom/android/server/location/listeners/ListenerRegistration<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;


# direct methods
.method constructor <init>(Lcom/android/server/location/listeners/ListenerMultiplexer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mGuardCount:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mScheduledRemovals:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/location/listeners/ListenerMultiplexer<",
            "TTKey;TT",
            "Listener;",
            "TTRegistration;TTMergedRegistration;>.ReentrancyGuard;"
        }
    .end annotation

    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mGuardCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mGuardCount:I

    return-object p0
.end method

.method public close()V
    .locals 8

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mGuardCount:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mGuardCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mGuardCount:I

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mScheduledRemovals:Landroid/util/ArraySet;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mScheduledRemovals:Landroid/util/ArraySet;

    :cond_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-static {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->access$100(Lcom/android/server/location/listeners/ListenerMultiplexer;)Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->acquire()Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/location/listeners/ListenerRegistration;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer$UpdateServiceBuffer;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v2
.end method

.method isReentrant()Z
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-static {v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->access$000(Lcom/android/server/location/listeners/ListenerMultiplexer;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    :cond_0
    iget v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mGuardCount:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method markForRemoval(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/android/server/location/listeners/ListenerRegistration<",
            "*>;)V"
        }
    .end annotation

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-static {v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->access$000(Lcom/android/server/location/listeners/ListenerMultiplexer;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->isReentrant()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mScheduledRemovals:Landroid/util/ArraySet;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->this$0:Lcom/android/server/location/listeners/ListenerMultiplexer;

    invoke-static {v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->access$000(Lcom/android/server/location/listeners/ListenerMultiplexer;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mScheduledRemovals:Landroid/util/ArraySet;

    :cond_1
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer$ReentrancyGuard;->mScheduledRemovals:Landroid/util/ArraySet;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method
