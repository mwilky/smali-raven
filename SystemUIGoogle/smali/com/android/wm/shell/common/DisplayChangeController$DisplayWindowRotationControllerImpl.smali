.class public final Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl;
.super Landroid/view/IDisplayWindowRotationController$Stub;
.source "DisplayChangeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/common/DisplayChangeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayWindowRotationControllerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/DisplayChangeController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/DisplayChangeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl;->this$0:Lcom/android/wm/shell/common/DisplayChangeController;

    invoke-direct {p0}, Landroid/view/IDisplayWindowRotationController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRotateDisplay(IIILandroid/view/IDisplayWindowRotationCallback;)V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl;->this$0:Lcom/android/wm/shell/common/DisplayChangeController;

    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayChangeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v7, Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DisplayChangeController$DisplayWindowRotationControllerImpl;IIILandroid/view/IDisplayWindowRotationCallback;)V

    invoke-interface {v0, v7}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
