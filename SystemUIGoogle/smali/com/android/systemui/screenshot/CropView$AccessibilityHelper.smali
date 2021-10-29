.class Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/CropView;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/CropView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private getBoundaryContentDescription(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Ljava/lang/CharSequence;
    .locals 4

    sget-object v0, Lcom/android/systemui/screenshot/CropView$1;->$SwitchMap$com$android$systemui$screenshot$CropView$CropBoundary:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

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
    sget v0, Lcom/android/systemui/R$string;->screenshot_right_boundary_pct:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/systemui/R$string;->screenshot_left_boundary_pct:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/systemui/R$string;->screenshot_bottom_boundary_pct:I

    goto :goto_0

    :cond_3
    sget v0, Lcom/android/systemui/R$string;->screenshot_top_boundary_pct:I

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {p0, p1}, Lcom/android/systemui/screenshot/CropView;->access$500(Lcom/android/systemui/screenshot/CropView;Lcom/android/systemui/screenshot/CropView$CropBoundary;)F

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

.method private getNodeRect(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Landroid/graphics/Rect;
    .locals 5

    invoke-static {p1}, Lcom/android/systemui/screenshot/CropView;->access$600(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {v0, p1}, Lcom/android/systemui/screenshot/CropView;->access$500(Lcom/android/systemui/screenshot/CropView;Lcom/android/systemui/screenshot/CropView$CropBoundary;)F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/screenshot/CropView;->access$100(Lcom/android/systemui/screenshot/CropView;F)I

    move-result p1

    new-instance v0, Landroid/graphics/Rect;

    int-to-float p1, p1

    iget-object v1, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {v1}, Lcom/android/systemui/screenshot/CropView;->access$200(Lcom/android/systemui/screenshot/CropView;)F

    move-result v1

    sub-float v1, p1, v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {p0}, Lcom/android/systemui/screenshot/CropView;->access$200(Lcom/android/systemui/screenshot/CropView;)F

    move-result p0

    add-float/2addr p1, p0

    float-to-int p0, p1

    const/4 p1, 0x0

    invoke-direct {v0, p1, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget p0, v0, Landroid/graphics/Rect;->top:I

    if-gez p0, :cond_1

    neg-int p0, p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {v0, p1}, Lcom/android/systemui/screenshot/CropView;->access$500(Lcom/android/systemui/screenshot/CropView;Lcom/android/systemui/screenshot/CropView$CropBoundary;)F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/screenshot/CropView;->access$300(Lcom/android/systemui/screenshot/CropView;F)I

    move-result p1

    new-instance v0, Landroid/graphics/Rect;

    int-to-float p1, p1

    iget-object v1, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {v1}, Lcom/android/systemui/screenshot/CropView;->access$200(Lcom/android/systemui/screenshot/CropView;)F

    move-result v1

    sub-float v1, p1, v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {v2}, Lcom/android/systemui/screenshot/CropView;->access$000(Lcom/android/systemui/screenshot/CropView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v3}, Lcom/android/systemui/screenshot/CropView;->access$100(Lcom/android/systemui/screenshot/CropView;F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {v3}, Lcom/android/systemui/screenshot/CropView;->access$200(Lcom/android/systemui/screenshot/CropView;)F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {v3}, Lcom/android/systemui/screenshot/CropView;->access$200(Lcom/android/systemui/screenshot/CropView;)F

    move-result v3

    add-float/2addr p1, v3

    float-to-int p1, p1

    iget-object v3, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {v3}, Lcom/android/systemui/screenshot/CropView;->access$000(Lcom/android/systemui/screenshot/CropView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3, v4}, Lcom/android/systemui/screenshot/CropView;->access$100(Lcom/android/systemui/screenshot/CropView;F)I

    move-result v3

    int-to-float v3, v3

    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {p0}, Lcom/android/systemui/screenshot/CropView;->access$200(Lcom/android/systemui/screenshot/CropView;)F

    move-result p0

    sub-float/2addr v3, p0

    float-to-int p0, v3

    invoke-direct {v0, v1, v2, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private setNodePosition(Landroid/graphics/Rect;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p0, 0x0

    aget p0, v0, p0

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-void
.end method

.method private viewIdToBoundary(I)Lcom/android/systemui/screenshot/CropView$CropBoundary;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

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
.method protected getVirtualViewAt(FF)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {v0}, Lcom/android/systemui/screenshot/CropView;->access$000(Lcom/android/systemui/screenshot/CropView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/CropView;->access$100(Lcom/android/systemui/screenshot/CropView;F)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {v1}, Lcom/android/systemui/screenshot/CropView;->access$200(Lcom/android/systemui/screenshot/CropView;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {v0}, Lcom/android/systemui/screenshot/CropView;->access$000(Lcom/android/systemui/screenshot/CropView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/CropView;->access$100(Lcom/android/systemui/screenshot/CropView;F)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {v1}, Lcom/android/systemui/screenshot/CropView;->access$200(Lcom/android/systemui/screenshot/CropView;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {v0}, Lcom/android/systemui/screenshot/CropView;->access$000(Lcom/android/systemui/screenshot/CropView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/CropView;->access$100(Lcom/android/systemui/screenshot/CropView;F)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {v0}, Lcom/android/systemui/screenshot/CropView;->access$000(Lcom/android/systemui/screenshot/CropView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/CropView;->access$100(Lcom/android/systemui/screenshot/CropView;F)I

    move-result v0

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {p2}, Lcom/android/systemui/screenshot/CropView;->access$000(Lcom/android/systemui/screenshot/CropView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {p2, v0}, Lcom/android/systemui/screenshot/CropView;->access$300(Lcom/android/systemui/screenshot/CropView;F)I

    move-result p2

    int-to-float p2, p2

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {v0}, Lcom/android/systemui/screenshot/CropView;->access$200(Lcom/android/systemui/screenshot/CropView;)F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {p2}, Lcom/android/systemui/screenshot/CropView;->access$000(Lcom/android/systemui/screenshot/CropView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {p2, v0}, Lcom/android/systemui/screenshot/CropView;->access$300(Lcom/android/systemui/screenshot/CropView;F)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {p0}, Lcom/android/systemui/screenshot/CropView;->access$200(Lcom/android/systemui/screenshot/CropView;)F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 3

    const/16 p3, 0x1000

    if-eq p2, p3, :cond_0

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->viewIdToBoundary(I)Lcom/android/systemui/screenshot/CropView$CropBoundary;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {v1}, Lcom/android/systemui/screenshot/CropView;->access$200(Lcom/android/systemui/screenshot/CropView;)F

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/systemui/screenshot/CropView;->access$400(Lcom/android/systemui/screenshot/CropView;FLcom/android/systemui/screenshot/CropView$CropBoundary;)F

    move-result v1

    if-ne p2, p3, :cond_1

    neg-float v1, v1

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->this$0:Lcom/android/systemui/screenshot/CropView;

    invoke-static {p2, v0}, Lcom/android/systemui/screenshot/CropView;->access$500(Lcom/android/systemui/screenshot/CropView;Lcom/android/systemui/screenshot/CropView$CropBoundary;)F

    move-result p3

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/screenshot/CropView;->setBoundaryPosition(Lcom/android/systemui/screenshot/CropView$CropBoundary;F)V

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    const/4 p0, 0x1

    return p0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->viewIdToBoundary(I)Lcom/android/systemui/screenshot/CropView$CropBoundary;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->getBoundaryContentDescription(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->viewIdToBoundary(I)Lcom/android/systemui/screenshot/CropView$CropBoundary;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->getBoundaryContentDescription(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->getNodeRect(Lcom/android/systemui/screenshot/CropView$CropBoundary;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/CropView$AccessibilityHelper;->setNodePosition(Landroid/graphics/Rect;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

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
