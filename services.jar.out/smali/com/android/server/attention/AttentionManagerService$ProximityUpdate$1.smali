.class public Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;
.super Landroid/service/attention/IProximityUpdateCallback$Stub;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;-><init>(Lcom/android/server/attention/AttentionManagerService;Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

.field public final synthetic val$this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;Lcom/android/server/attention/AttentionManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;->this$1:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;->val$this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-direct {p0}, Landroid/service/attention/IProximityUpdateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onProximityUpdate(D)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;->this$1:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    iget-object v0, v0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;->this$1:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->-$$Nest$fgetmCallbackInternal(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;->onProximityUpdate(D)V

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;->this$1:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->freeIfInactiveLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
