.class final Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/LocalDisplayAdapter$DisplayEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalDisplayEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method private constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Lcom/android/server/display/LocalDisplayAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;-><init>(Lcom/android/server/display/LocalDisplayAdapter;)V

    return-void
.end method


# virtual methods
.method public onFrameRateOverridesChanged(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter;->access$900(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1, p5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->onFrameRateOverridesChanged([Landroid/view/DisplayEventReceiver$FrameRateOverride;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHotplug(JJZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    if-eqz p5, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter;->access$700(Lcom/android/server/display/LocalDisplayAdapter;J)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter;->access$800(Lcom/android/server/display/LocalDisplayAdapter;J)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onModeChanged(JJI)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayEventListener;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter;->access$900(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1, p5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->onActiveDisplayModeChangedLocked(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
