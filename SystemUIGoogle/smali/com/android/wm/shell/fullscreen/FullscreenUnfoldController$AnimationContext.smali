.class public final Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;
.super Ljava/lang/Object;
.source "FullscreenUnfoldController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationContext"
.end annotation


# instance fields
.field public final mCurrentCropRect:Landroid/graphics/Rect;

.field public final mEndCropRect:Landroid/graphics/Rect;

.field public final mLeash:Landroid/view/SurfaceControl;

.field public final mMatrix:Landroid/graphics/Matrix;

.field public final mStartCropRect:Landroid/graphics/Rect;

.field public mTaskInfo:Landroid/app/TaskInfo;

.field public final synthetic this$0:Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;Landroid/view/SurfaceControl;Landroid/view/InsetsSource;Landroid/app/TaskInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->this$0:Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mCurrentCropRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mMatrix:Landroid/graphics/Matrix;

    iput-object p2, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0, p3, p4}, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->update(Landroid/view/InsetsSource;Landroid/app/TaskInfo;)V

    return-void
.end method


# virtual methods
.method public final update(Landroid/view/InsetsSource;Landroid/app/TaskInfo;)V
    .locals 2

    iput-object p2, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mTaskInfo:Landroid/app/TaskInfo;

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->this$0:Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;

    iget v0, v0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;->mExpandedTaskBarHeight:F

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    iget-object p2, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/InsetsSource;->calculateVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3da3d70a    # 0.08f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iget-object p2, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, p2, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    iput v1, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3cf5c28f    # 0.03f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iget-object p2, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
