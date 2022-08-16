.class public final synthetic Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/TaskView;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/TaskView;ZILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda15;->f$0:Lcom/android/wm/shell/TaskView;

    iput-boolean p2, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda15;->f$1:Z

    iput p3, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda15;->f$2:I

    iput-object p4, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda15;->f$3:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda15;->f$0:Lcom/android/wm/shell/TaskView;

    iget-boolean v1, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda15;->f$1:Z

    iget p0, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda15;->f$2:I

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/wm/shell/TaskView;->mListener:Lcom/android/wm/shell/TaskView$Listener;

    invoke-interface {v2, p0}, Lcom/android/wm/shell/TaskView$Listener;->onTaskCreated(I)V

    :cond_0
    if-eqz v1, :cond_1

    iget-boolean p0, v0, Lcom/android/wm/shell/TaskView;->mSurfaceCreated:Z

    if-nez p0, :cond_2

    :cond_1
    iget-object p0, v0, Lcom/android/wm/shell/TaskView;->mListener:Lcom/android/wm/shell/TaskView$Listener;

    iget-boolean v0, v0, Lcom/android/wm/shell/TaskView;->mSurfaceCreated:Z

    invoke-interface {p0, v0}, Lcom/android/wm/shell/TaskView$Listener;->onTaskVisibilityChanged(Z)V

    :cond_2
    return-void
.end method
