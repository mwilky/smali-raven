.class public final Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibilityHelper"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/CropView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/CropView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static viewIdToBoundary(I)Lcom/android/systemui/screenshot/CropView$CropBoundary;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->RIGHT:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->LEFT:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/systemui/screenshot/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    return-object p0
.end method


# virtual methods
.method public final getBoundaryContentDescription(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const v0, 0x7f13065d

    goto :goto_0

    :cond_1
    const v0, 0x7f13065b

    goto :goto_0

    :cond_2
    const v0, 0x7f130652

    goto :goto_0

    :cond_3
    const v0, 0x7f130662

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    sget v4, Lcom/android/systemui/screenshot/CropView;->$r8$clinit:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/CropView;->getBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;)F

    move-result p0

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getVirtualViewAt(FF)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    iget-object v1, v0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    iget v2, v1, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, v1, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v0}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    iget v2, v1, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    iget-object v0, v1, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v0}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    iget-object v1, v0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    move-result v0

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    iget-object v0, p2, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2, v0}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    move-result p2

    int-to-float p2, p2

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    iget v1, v0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    cmpg-float p2, p2, v1

    if-gez p2, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    iget-object p2, v0, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, p2}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    iget p0, p0, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public final getVisibleVirtualViews(Ljava/util/ArrayList;)V
    .locals 0

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 3

    const/16 p3, 0x1000

    if-eq p2, p3, :cond_0

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->viewIdToBoundary(I)Lcom/android/systemui/screenshot/CropView$CropBoundary;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    iget v2, v1, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/screenshot/CropView;->pixelDistanceToFraction(FLcom/android/systemui/screenshot/CropView$CropBoundary;)F

    move-result v1

    if-ne p2, p3, :cond_1

    neg-float v1, v1

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-virtual {p2, v0}, Lcom/android/systemui/screenshot/CropView;->getBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;)F

    move-result p3

    add-float/2addr p3, v1

    invoke-virtual {p2, p3, v0}, Lcom/android/systemui/screenshot/CropView;->setBoundaryPosition(FLcom/android/systemui/screenshot/CropView$CropBoundary;)V

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onPopulateEventForVirtualView(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0

    invoke-static {p2}, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->viewIdToBoundary(I)Lcom/android/systemui/screenshot/CropView$CropBoundary;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->getBoundaryContentDescription(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    invoke-static {p1}, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->viewIdToBoundary(I)Lcom/android/systemui/screenshot/CropView$CropBoundary;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->getBoundaryContentDescription(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/android/systemui/screenshot/CropView;->isVertical(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/screenshot/CropView;->getBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    move-result p1

    new-instance v0, Landroid/graphics/Rect;

    int-to-float p1, p1

    iget-object v2, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    iget v3, v2, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    sub-float v3, p1, v3

    float-to-int v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    iget v4, v4, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    add-float/2addr p1, v4

    float-to-int p1, p1

    invoke-direct {v0, v1, v3, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget p1, v0, Landroid/graphics/Rect;->top:I

    if-gez p1, :cond_1

    neg-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/screenshot/CropView;->getBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/screenshot/CropView;->fractionToHorizontalPixels(F)I

    move-result p1

    new-instance v0, Landroid/graphics/Rect;

    int-to-float p1, p1

    iget-object v2, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    iget v3, v2, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    sub-float v3, p1, v3

    float-to-int v3, v3

    iget-object v4, v2, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v4}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    iget v5, v4, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    add-float/2addr v2, v5

    float-to-int v2, v2

    add-float/2addr p1, v5

    float-to-int p1, p1

    iget-object v5, v4, Lcom/android/systemui/screenshot/CropView;->mCrop:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v5}, Lcom/android/systemui/screenshot/CropView;->fractionToVerticalPixels(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    iget v5, v5, Lcom/android/systemui/screenshot/CropView;->mCropTouchMargin:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v3, v2, p1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_1
    :goto_0
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget p0, p1, v1

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    iget-object p0, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    const-class p0, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    const/16 p0, 0x1000

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/16 p0, 0x2000

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    return-void
.end method
