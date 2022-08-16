.class public final Lcom/android/systemui/util/animation/TransitionLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "TransitionLayout.kt"


# instance fields
.field public final boundsRect:Landroid/graphics/Rect;

.field public currentState:Lcom/android/systemui/util/animation/TransitionViewState;

.field public desiredMeasureHeight:I

.field public desiredMeasureWidth:I

.field public isPreDrawApplicatorRegistered:Z

.field public measureAsConstraint:Z

.field public final originalGoneChildrenSet:Ljava/util/LinkedHashSet;

.field public final originalViewAlphas:Ljava/util/LinkedHashMap;

.field public final preDrawApplicator:Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;

.field public transitionVisibility:I

.field public updateScheduled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/util/animation/TransitionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/util/animation/TransitionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->boundsRect:Landroid/graphics/Rect;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->originalGoneChildrenSet:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->originalViewAlphas:Ljava/util/LinkedHashMap;

    new-instance p1, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p1}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    new-instance p1, Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;-><init>(Lcom/android/systemui/util/animation/TransitionLayout;)V

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->preDrawApplicator:Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/util/animation/TransitionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final applyCurrentState()V
    .locals 13

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    iget-object v1, v1, Lcom/android/systemui/util/animation/TransitionViewState;->contentTranslation:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_d

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    iget-object v6, v6, Lcom/android/systemui/util/animation/TransitionViewState;->widgetStates:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v6, :cond_0

    goto/16 :goto_a

    :cond_0
    instance-of v7, v4, Landroid/widget/TextView;

    if-eqz v7, :cond_2

    iget v7, v6, Lcom/android/systemui/util/animation/WidgetState;->width:I

    iget v8, v6, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    if-ge v7, v8, :cond_2

    move-object v7, v4

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    iget v7, v6, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    iget v8, v6, Lcom/android/systemui/util/animation/WidgetState;->width:I

    sub-int/2addr v7, v8

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, v6, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    if-ne v8, v9, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v9, v6, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    if-eq v8, v9, :cond_4

    :cond_3
    iget v8, v6, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v10, v6, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v4, v3, v3, v8, v9}, Landroid/view/View;->layout(IIII)V

    :cond_4
    if-nez v7, :cond_5

    move v8, v3

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_3
    iget v9, v6, Lcom/android/systemui/util/animation/WidgetState;->x:F

    float-to-int v9, v9

    add-int/2addr v9, v2

    sub-int/2addr v9, v8

    iget v10, v6, Lcom/android/systemui/util/animation/WidgetState;->y:F

    float-to-int v10, v10

    add-int/2addr v10, v1

    const/4 v11, 0x1

    if-eqz v7, :cond_6

    move v7, v11

    goto :goto_4

    :cond_6
    move v7, v3

    :goto_4
    if-eqz v7, :cond_7

    iget v12, v6, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    goto :goto_5

    :cond_7
    iget v12, v6, Lcom/android/systemui/util/animation/WidgetState;->width:I

    :goto_5
    if-eqz v7, :cond_8

    iget v7, v6, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    goto :goto_6

    :cond_8
    iget v7, v6, Lcom/android/systemui/util/animation/WidgetState;->height:I

    :goto_6
    add-int/2addr v12, v9

    add-int/2addr v7, v10

    invoke-virtual {v4, v9, v10, v12, v7}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    iget v7, v6, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setScaleX(F)V

    iget v7, v6, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    invoke-virtual {v4, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v4}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_9

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    :cond_9
    iget v9, v6, Lcom/android/systemui/util/animation/WidgetState;->width:I

    add-int/2addr v9, v8

    iget v10, v6, Lcom/android/systemui/util/animation/WidgetState;->height:I

    invoke-virtual {v7, v8, v3, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    iget v7, v6, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    invoke-static {v4, v7, v3}, Landroidx/leanback/R$style;->fadeIn(Landroid/view/View;FZ)V

    iget-boolean v7, v6, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    if-nez v7, :cond_c

    iget v6, v6, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-nez v6, :cond_a

    goto :goto_7

    :cond_a
    move v11, v3

    :goto_7
    if-eqz v11, :cond_b

    goto :goto_8

    :cond_b
    move v6, v3

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v6, 0x4

    :goto_9
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    move v4, v5

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    iget v4, v2, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    add-int/2addr v4, v0

    iget v2, v2, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v4, v2}, Landroid/view/ViewGroup;->setLeftTopRightBottom(IIII)V

    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->boundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    iget-object v0, v0, Lcom/android/systemui/util/animation/TransitionViewState;->translation:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    iget-object v0, v0, Lcom/android/systemui/util/animation/TransitionViewState;->translation:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    iget v0, v0, Lcom/android/systemui/util/animation/TransitionViewState;->alpha:F

    invoke-static {p0, v0, v3}, Landroidx/leanback/R$style;->fadeIn(Landroid/view/View;FZ)V

    iget v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->transitionVisibility:I

    if-eqz v0, :cond_e

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/animation/TransitionLayout;->setTransitionVisibility(I)V

    :cond_e
    return-void
.end method

.method public final calculateViewState(Lcom/android/systemui/util/animation/MeasurementInput;Landroidx/constraintlayout/widget/ConstraintSet;Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x8

    if-ge v2, v0, :cond_2

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/util/animation/TransitionLayout;->originalGoneChildrenSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/util/animation/TransitionLayout;->originalViewAlphas:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    move v2, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/util/animation/TransitionLayout;->measureAsConstraint:Z

    iget v5, p1, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    iget p1, p1, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    invoke-virtual {p0, v5, p1}, Landroid/view/ViewGroup;->measure(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p0, p1, v5, v6, v7}, Landroid/view/ViewGroup;->layout(IIII)V

    iput-boolean v1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->measureAsConstraint:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v5, v1

    :goto_2
    const/4 v6, 0x0

    if-ge v5, p1, :cond_8

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v8, p3, Lcom/android/systemui/util/animation/TransitionViewState;->widgetStates:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_3

    new-instance v10, Lcom/android/systemui/util/animation/WidgetState;

    const/16 v11, 0x180

    invoke-direct {v10, v11}, Lcom/android/systemui/util/animation/WidgetState;-><init>(I)V

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    check-cast v10, Lcom/android/systemui/util/animation/WidgetState;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-ne v8, v4, :cond_4

    move v8, v2

    goto :goto_3

    :cond_4
    move v8, v1

    :goto_3
    iput-boolean v8, v10, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    if-eqz v8, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v8, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v8

    int-to-float v8, v8

    iput v8, v10, Lcom/android/systemui/util/animation/WidgetState;->x:F

    iget-object v8, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v8

    int-to-float v8, v8

    iput v8, v10, Lcom/android/systemui/util/animation/WidgetState;->y:F

    iget-object v8, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    iput v8, v10, Lcom/android/systemui/util/animation/WidgetState;->width:I

    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    iput v5, v10, Lcom/android/systemui/util/animation/WidgetState;->height:I

    iput v5, v10, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    iget v5, v10, Lcom/android/systemui/util/animation/WidgetState;->width:I

    iput v5, v10, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    iput v6, v10, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    iput v6, v10, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    iput v6, v10, Lcom/android/systemui/util/animation/WidgetState;->x:F

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    iput v6, v10, Lcom/android/systemui/util/animation/WidgetState;->y:F

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, v10, Lcom/android/systemui/util/animation/WidgetState;->width:I

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, v10, Lcom/android/systemui/util/animation/WidgetState;->height:I

    iget v8, v10, Lcom/android/systemui/util/animation/WidgetState;->width:I

    iput v8, v10, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    iput v6, v10, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v4, :cond_7

    move v6, v2

    goto :goto_4

    :cond_7
    move v6, v1

    :goto_4
    iput-boolean v6, v10, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    iput v5, v10, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    iput v3, v10, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    :goto_5
    move v5, v7

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iput p1, p3, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iput p1, p3, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    iget-object p1, p3, Lcom/android/systemui/util/animation/TransitionViewState;->translation:Landroid/graphics/PointF;

    invoke-virtual {p1, v6, v6}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p3, Lcom/android/systemui/util/animation/TransitionViewState;->contentTranslation:Landroid/graphics/PointF;

    invoke-virtual {p1, v6, v6}, Landroid/graphics/PointF;->set(FF)V

    iput v3, p3, Lcom/android/systemui/util/animation/TransitionViewState;->alpha:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v3, v1

    :goto_6
    if-ge v3, p1, :cond_c

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    iget-object v5, v5, Lcom/android/systemui/util/animation/TransitionViewState;->widgetStates:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v5, :cond_9

    goto :goto_7

    :cond_9
    iget-boolean v5, v5, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    if-nez v5, :cond_a

    move v5, v2

    goto :goto_8

    :cond_a
    :goto_7
    move v5, v1

    :goto_8
    if-nez v5, :cond_b

    const/4 v5, 0x4

    goto :goto_9

    :cond_b
    move v5, v1

    :goto_9
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    move v3, v4

    goto :goto_6

    :cond_c
    invoke-virtual {p0, v0, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    iget-boolean p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->updateScheduled:Z

    if-nez p1, :cond_d

    iput-boolean v2, p0, Lcom/android/systemui/util/animation/TransitionLayout;->updateScheduled:Z

    iget-boolean p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->isPreDrawApplicatorRegistered:Z

    if-nez p1, :cond_d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/util/animation/TransitionLayout;->preDrawApplicator:Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-boolean v2, p0, Lcom/android/systemui/util/animation/TransitionLayout;->isPreDrawApplicatorRegistered:Z

    :cond_d
    return-object p3
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->boundsRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :goto_1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_2
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->isPreDrawApplicatorRegistered:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->preDrawApplicator:Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->isPreDrawApplicatorRegistered:Z

    :cond_0
    return-void
.end method

.method public final onFinishInflate()V
    .locals 6

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, v1}, Landroid/view/View;->setId(I)V

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->originalGoneChildrenSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->originalViewAlphas:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 6

    iget-boolean p2, p0, Lcom/android/systemui/util/animation/TransitionLayout;->measureAsConstraint:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    move-object v0, p0

    move v1, p1

    invoke-super/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_1

    add-int/lit8 p4, p3, 0x1

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p3, p2, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    move p3, p4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/animation/TransitionLayout;->applyCurrentState()V

    :goto_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->measureAsConstraint:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_2

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    iget-object v1, v1, Lcom/android/systemui/util/animation/TransitionViewState;->widgetStates:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget v2, v1, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v1, v1, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    :goto_1
    move p1, v0

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->desiredMeasureWidth:I

    iget p2, p0, Lcom/android/systemui/util/animation/TransitionLayout;->desiredMeasureHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :goto_2
    return-void
.end method

.method public final setTransitionVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setTransitionVisibility(I)V

    iput p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->transitionVisibility:I

    return-void
.end method
