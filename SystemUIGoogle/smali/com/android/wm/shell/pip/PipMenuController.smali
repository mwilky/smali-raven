.class public interface abstract Lcom/android/wm/shell/pip/PipMenuController;
.super Ljava/lang/Object;
.source "PipMenuController.java"


# direct methods
.method public static getPipMenuLayoutParams(Ljava/lang/String;II)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7f6

    const v4, 0x20840010

    const/4 v5, -0x3

    move-object v0, v6

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget p1, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 p2, 0x20000000

    or-int/2addr p1, p2

    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v6
.end method


# virtual methods
.method public abstract attach(Landroid/view/SurfaceControl;)V
.end method

.method public abstract detach()V
.end method

.method public abstract isMenuVisible()Z
.end method

.method public movePipMenu(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    return-void
.end method

.method public onFocusTaskChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    return-void
.end method

.method public resizePipMenu(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    return-void
.end method

.method public updateMenuBounds(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
