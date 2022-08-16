.class public final Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;
.super Ljava/lang/Object;
.source "StageTaskUnfoldController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationContext"
.end annotation


# instance fields
.field public final mCurrentCropRect:Landroid/graphics/Rect;

.field public final mEndCropRect:Landroid/graphics/Rect;

.field public mIsLandscape:Z

.field public final mLeash:Landroid/view/SurfaceControl;

.field public mSplitPosition:I

.field public final mStartCropRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;Landroid/view/SurfaceControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->this$0:Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mCurrentCropRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mSplitPosition:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mIsLandscape:Z

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->update$1()V

    return-void
.end method


# virtual methods
.method public final update$1()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->this$0:Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mStageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->this$0:Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mTaskbarInsetsSource:Landroid/view/InsetsSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->this$0:Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;

    iget v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mExpandedTaskBarHeight:I

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->this$0:Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;

    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;->mTaskbarInsetsSource:Landroid/view/InsetsSource;

    invoke-virtual {v3, v2}, Landroid/view/InsetsSource;->calculateVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mEndCropRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-boolean v3, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mIsLandscape:Z

    if-eqz v3, :cond_4

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iget v3, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mSplitPosition:I

    if-nez v3, :cond_3

    move v3, v1

    move v1, v2

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_4

    :cond_4
    iget v3, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mSplitPosition:I

    if-nez v3, :cond_5

    move v0, v1

    move v1, v2

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_3

    :cond_6
    move v0, v2

    :goto_3
    invoke-static {v2, v1, v2, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    :goto_4
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController$AnimationContext;->mStartCropRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    return-void
.end method
