.class public final synthetic Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Landroid/os/Parcelable;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Parcelable;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda5;->f$2:Landroid/os/Parcelable;

    iput-object p4, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/TaskView;

    iget-object v1, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda5;->f$2:Landroid/os/Parcelable;

    check-cast v2, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityOptions;

    sget v3, Lcom/android/wm/shell/TaskView;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v3, v1, v2, p0}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object p0, v0, Lcom/android/wm/shell/TaskView;->mTaskViewTransitions:Lcom/android/wm/shell/TaskViewTransitions;

    iget-object v1, p0, Lcom/android/wm/shell/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3, v0}, Lcom/android/wm/shell/TaskViewTransitions$PendingTransition;-><init>(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/TaskView;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/wm/shell/TaskViewTransitions;->startNextTransition()V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    iget-object v1, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/wm/shell/transition/WindowThumbnail;

    iget-object v2, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda5;->f$2:Landroid/os/Parcelable;

    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    sget-boolean v3, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->sDisableCustomTaskAnimationProperty:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lcom/android/wm/shell/transition/WindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v3, v1, Lcom/android/wm/shell/transition/WindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->release()V

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/wm/shell/transition/WindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    :goto_1
    iget-object v0, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
