.class public final synthetic Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/view/IDisplayWindowRotationCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl;IIILandroid/view/IDisplayWindowRotationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl;

    iput p2, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl$$ExternalSyntheticLambda0;->f$4:Landroid/view/IDisplayWindowRotationCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl;

    iget v1, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl$$ExternalSyntheticLambda0;->f$3:I

    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl$$ExternalSyntheticLambda0;->f$4:Landroid/view/IDisplayWindowRotationCallback;

    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl;->this$0:Lcom/android/wm/shell/common/DisplayChangeController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/window/WindowContainerTransaction;

    invoke-direct {v4}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayChangeController;->mRotationListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    invoke-interface {v5, v1, v2, v3, v4}, Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;->onRotateDisplay(IIILandroid/window/WindowContainerTransaction;)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0, v3, v4}, Landroid/view/IDisplayWindowRotationCallback;->continueRotateDisplay(ILandroid/window/WindowContainerTransaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "DisplayChangeController"

    const-string v1, "Failed to continue rotation"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
