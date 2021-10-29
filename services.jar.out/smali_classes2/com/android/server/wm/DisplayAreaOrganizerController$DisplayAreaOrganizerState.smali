.class Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;
.super Ljava/lang/Object;
.source "DisplayAreaOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayAreaOrganizerState"
.end annotation


# instance fields
.field private final mDeathRecipient:Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;

.field private final mOrganizer:Landroid/window/IDisplayAreaOrganizer;

.field final synthetic this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController;Landroid/window/IDisplayAreaOrganizer;I)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->mDeathRecipient:Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;

    :try_start_0
    invoke-interface {p2}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;)Landroid/window/IDisplayAreaOrganizer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    return-object v0
.end method


# virtual methods
.method destroy()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    invoke-interface {v0}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iget-object v1, v1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;Landroid/os/IBinder;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->mDeathRecipient:Lcom/android/server/wm/DisplayAreaOrganizerController$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method public synthetic lambda$destroy$0$DisplayAreaOrganizerController$DisplayAreaOrganizerState(Landroid/os/IBinder;Lcom/android/server/wm/DisplayArea;)V
    .locals 2

    iget-object v0, p2, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    invoke-interface {v0}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->isTaskDisplayArea()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskDisplayArea;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayAreaOrganizerController;->access$200(Lcom/android/server/wm/DisplayAreaOrganizerController;Lcom/android/server/wm/TaskDisplayArea;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    :cond_1
    :goto_0
    return-void
.end method
