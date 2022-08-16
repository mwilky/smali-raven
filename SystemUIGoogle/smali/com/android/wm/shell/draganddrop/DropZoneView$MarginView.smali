.class public final Lcom/android/wm/shell/draganddrop/DropZoneView$MarginView;
.super Landroid/view/View;
.source "DropZoneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/DropZoneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MarginView"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/draganddrop/DropZoneView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/DropZoneView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DropZoneView$MarginView;->this$0:Lcom/android/wm/shell/draganddrop/DropZoneView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropZoneView$MarginView;->this$0:Lcom/android/wm/shell/draganddrop/DropZoneView;

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DropZoneView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropZoneView$MarginView;->this$0:Lcom/android/wm/shell/draganddrop/DropZoneView;

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropZoneView;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DropZoneView;->mContainerMargin:[F

    const/4 v3, 0x0

    aget v3, v2, v3

    iget v0, v0, Lcom/android/wm/shell/draganddrop/DropZoneView;->mMarginPercent:F

    mul-float/2addr v3, v0

    const/4 v4, 0x1

    aget v2, v2, v4

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DropZoneView$MarginView;->this$0:Lcom/android/wm/shell/draganddrop/DropZoneView;

    iget-object v5, v4, Lcom/android/wm/shell/draganddrop/DropZoneView;->mContainerMargin:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget v4, v4, Lcom/android/wm/shell/draganddrop/DropZoneView;->mMarginPercent:F

    mul-float/2addr v5, v4

    sub-float v4, v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lcom/android/wm/shell/draganddrop/DropZoneView$MarginView;->this$0:Lcom/android/wm/shell/draganddrop/DropZoneView;

    iget-object v6, v5, Lcom/android/wm/shell/draganddrop/DropZoneView;->mContainerMargin:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    iget v7, v5, Lcom/android/wm/shell/draganddrop/DropZoneView;->mMarginPercent:F

    mul-float/2addr v6, v7

    sub-float/2addr v2, v6

    iget-boolean v6, v5, Lcom/android/wm/shell/draganddrop/DropZoneView;->mIgnoreBottomMargin:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    iget v6, v5, Lcom/android/wm/shell/draganddrop/DropZoneView;->mBottomInset:F

    :goto_0
    sub-float v6, v2, v6

    iget v2, v5, Lcom/android/wm/shell/draganddrop/DropZoneView;->mCornerRadius:F

    mul-float v8, v2, v7

    mul-float/2addr v7, v2

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v2, v3

    move v3, v0

    move v5, v6

    move v6, v8

    move-object v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropZoneView$MarginView;->this$0:Lcom/android/wm/shell/draganddrop/DropZoneView;

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DropZoneView;->mPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropZoneView$MarginView;->this$0:Lcom/android/wm/shell/draganddrop/DropZoneView;

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DropZoneView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropZoneView$MarginView;->this$0:Lcom/android/wm/shell/draganddrop/DropZoneView;

    iget p0, p0, Lcom/android/wm/shell/draganddrop/DropZoneView;->mMarginColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method
