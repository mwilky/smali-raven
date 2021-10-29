.class Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;
.super Ljava/lang/Object;
.source "DisplayAreaOrganizerController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathRecipient"
.end annotation


# instance fields
.field mFeature:I

.field mOrganizer:Landroid/window/IDisplayAreaOrganizer;

.field final synthetic this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    iput p3, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->mFeature:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-static {v0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->access$000(Lcom/android/server/wm/DisplayAreaOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-static {v1}, Lcom/android/server/wm/DisplayAreaOrganizerController;->access$100(Lcom/android/server/wm/DisplayAreaOrganizerController;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;->mFeature:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->destroy()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
