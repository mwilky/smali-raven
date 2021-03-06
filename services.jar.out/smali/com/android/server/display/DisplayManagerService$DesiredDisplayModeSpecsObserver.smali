.class Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DesiredDisplayModeSpecsObserver"
.end annotation


# instance fields
.field private mChanged:Z

.field private final mSpecsChangedConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->mSpecsChangedConsumer:Ljava/util/function/Consumer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->mChanged:Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$DisplayManagerService$DesiredDisplayModeSpecsObserver(Lcom/android/server/display/LogicalDisplay;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$7300(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayModeDirector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayModeDirector;->getDesiredDisplayModeSpecs(I)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    move-result-object v1

    nop

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDesiredDisplayModeSpecsLocked()Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/server/display/LogicalDisplay;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->mChanged:Z

    :cond_0
    return-void
.end method

.method public onDesiredDisplayModeSpecsChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->mChanged:Z

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$1700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->mSpecsChangedConsumer:Ljava/util/function/Consumer;

    invoke-virtual {v2, v3}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->mChanged:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, v1}, Lcom/android/server/display/DisplayManagerService;->access$2600(Lcom/android/server/display/DisplayManagerService;Z)V

    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;->mChanged:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
