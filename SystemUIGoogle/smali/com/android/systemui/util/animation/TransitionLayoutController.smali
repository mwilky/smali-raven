.class public final Lcom/android/systemui/util/animation/TransitionLayoutController;
.super Ljava/lang/Object;
.source "TransitionLayoutController.kt"


# instance fields
.field public animationStartState:Lcom/android/systemui/util/animation/TransitionViewState;

.field public animator:Landroid/animation/ValueAnimator;

.field public currentHeight:I

.field public currentState:Lcom/android/systemui/util/animation/TransitionViewState;

.field public currentWidth:I

.field public sizeChangedListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public state:Lcom/android/systemui/util/animation/TransitionViewState;

.field public transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {v0}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    new-instance v0, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {v0}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->state:Lcom/android/systemui/util/animation/TransitionViewState;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/util/animation/TransitionLayoutController$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/util/animation/TransitionLayoutController$1$1;-><init>(Lcom/android/systemui/util/animation/TransitionLayoutController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object p0, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getGoneState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/DisappearParameters;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 7

    iget v0, p1, Lcom/android/systemui/util/animation/DisappearParameters;->disappearStart:F

    iget v1, p1, Lcom/android/systemui/util/animation/DisappearParameters;->disappearEnd:F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, p2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result p2

    invoke-static {p2, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p2

    invoke-virtual {p0, p3}, Lcom/android/systemui/util/animation/TransitionViewState;->copy(Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p3

    iget v0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    int-to-float v0, v0

    iget-object v1, p1, Lcom/android/systemui/util/animation/DisappearParameters;->disappearSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v0

    invoke-static {v0, v1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p3, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    iget v0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    int-to-float v0, v0

    iget-object v1, p1, Lcom/android/systemui/util/animation/DisappearParameters;->disappearSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v0

    invoke-static {v0, v1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p3, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    iget-object v1, p3, Lcom/android/systemui/util/animation/TransitionViewState;->translation:Landroid/graphics/PointF;

    iget v4, p0, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    iget v5, p3, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p1, Lcom/android/systemui/util/animation/DisappearParameters;->gonePivot:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v6

    iput v4, v1, Landroid/graphics/PointF;->x:F

    iget p0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    sub-int/2addr p0, v0

    int-to-float p0, p0

    iget v0, v5, Landroid/graphics/PointF;->y:F

    mul-float/2addr p0, v0

    iput p0, v1, Landroid/graphics/PointF;->y:F

    iget-object v0, p3, Lcom/android/systemui/util/animation/TransitionViewState;->contentTranslation:Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/android/systemui/util/animation/DisappearParameters;->contentTranslationFraction:Landroid/graphics/PointF;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v3

    mul-float/2addr v5, v4

    iput v5, v0, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget p0, p1, Lcom/android/systemui/util/animation/DisappearParameters;->fadeStartPosition:F

    invoke-static {p0, v3, v3, v2, p2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result p0

    invoke-static {p0, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    iput p0, p3, Lcom/android/systemui/util/animation/TransitionViewState;->alpha:F

    return-object p3
.end method


# virtual methods
.method public final applyStateToLayout(Lcom/android/systemui/util/animation/TransitionViewState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/TransitionLayout;->applyCurrentState()V

    :goto_0
    iget v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentHeight:I

    iget v1, p1, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentWidth:I

    iget v2, p1, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    if-eq v0, v2, :cond_3

    :cond_1
    iput v1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentHeight:I

    iget p1, p1, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    iput p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentWidth:I

    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->sizeChangedListener:Lkotlin/jvm/functions/Function2;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method public final getInterpolatedState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/TransitionViewState;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    if-nez p4, :cond_0

    new-instance v3, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {v3}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    move-object/from16 v4, p0

    goto :goto_0

    :cond_0
    move-object/from16 v4, p0

    move-object/from16 v3, p4

    :goto_0
    iget-object v4, v4, Lcom/android/systemui/util/animation/TransitionLayoutController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-nez v4, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_9

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    iget-object v9, v3, Lcom/android/systemui/util/animation/TransitionViewState;->widgetStates:Ljava/util/LinkedHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v9, :cond_2

    new-instance v9, Lcom/android/systemui/util/animation/WidgetState;

    const/16 v10, 0x1ff

    invoke-direct {v9, v10}, Lcom/android/systemui/util/animation/WidgetState;-><init>(I)V

    :cond_2
    iget-object v10, v0, Lcom/android/systemui/util/animation/TransitionViewState;->widgetStates:Ljava/util/LinkedHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    iget-object v11, v1, Lcom/android/systemui/util/animation/TransitionViewState;->widgetStates:Ljava/util/LinkedHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v11, :cond_4

    :goto_2
    move-object/from16 v18, v4

    move/from16 v19, v5

    goto/16 :goto_7

    :cond_4
    iget-boolean v12, v10, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    iget-boolean v13, v11, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    if-eq v12, v13, :cond_8

    const v13, 0x3f4ccccd    # 0.8f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x1

    const/high16 v17, 0x40000000    # 2.0f

    if-eqz v12, :cond_6

    invoke-static {v13, v15, v14, v15, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v12

    cmpg-float v14, v2, v13

    if-gez v14, :cond_5

    goto :goto_3

    :cond_5
    const/16 v16, 0x0

    :goto_3
    iget v14, v11, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    mul-float/2addr v13, v14

    invoke-static {v13, v14, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v13

    iget v14, v11, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    iget v6, v11, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    iget v15, v10, Lcom/android/systemui/util/animation/WidgetState;->x:F

    move-object/from16 v18, v4

    int-to-float v4, v14

    div-float v4, v4, v17

    sub-float/2addr v15, v4

    iget v4, v11, Lcom/android/systemui/util/animation/WidgetState;->x:F

    invoke-static {v15, v4, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    iget v15, v10, Lcom/android/systemui/util/animation/WidgetState;->y:F

    move/from16 v19, v4

    int-to-float v4, v6

    div-float v4, v4, v17

    sub-float/2addr v15, v4

    iget v4, v11, Lcom/android/systemui/util/animation/WidgetState;->y:F

    invoke-static {v15, v4, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    move/from16 p4, v19

    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v19, v5

    goto :goto_5

    :cond_6
    move-object/from16 v18, v4

    const v4, 0x3e4ccccc    # 0.19999999f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v14, v4, v14, v6, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v12

    cmpl-float v4, v2, v4

    if-lez v4, :cond_7

    goto :goto_4

    :cond_7
    const/16 v16, 0x0

    :goto_4
    iget v4, v10, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    mul-float/2addr v13, v4

    invoke-static {v4, v13, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v13

    iget v4, v10, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    iget v6, v10, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    iget v15, v10, Lcom/android/systemui/util/animation/WidgetState;->x:F

    iget v14, v11, Lcom/android/systemui/util/animation/WidgetState;->x:F

    move/from16 v19, v5

    int-to-float v5, v4

    div-float v5, v5, v17

    sub-float/2addr v14, v5

    invoke-static {v15, v14, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v5

    iget v14, v10, Lcom/android/systemui/util/animation/WidgetState;->y:F

    iget v15, v11, Lcom/android/systemui/util/animation/WidgetState;->y:F

    move/from16 v20, v4

    int-to-float v4, v6

    div-float v4, v4, v17

    sub-float/2addr v15, v4

    invoke-static {v14, v15, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    move/from16 p4, v5

    move/from16 v14, v20

    const/4 v15, 0x0

    :goto_5
    move v5, v4

    move/from16 v4, v16

    iput-boolean v4, v9, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    move/from16 v4, p4

    goto :goto_6

    :cond_8
    move-object/from16 v18, v4

    move/from16 v19, v5

    iput-boolean v12, v9, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    iget v14, v11, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    iget v6, v11, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    iget v4, v10, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    iget v5, v11, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    invoke-static {v4, v5, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v13

    iget v4, v10, Lcom/android/systemui/util/animation/WidgetState;->x:F

    iget v5, v11, Lcom/android/systemui/util/animation/WidgetState;->x:F

    invoke-static {v4, v5, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    iget v5, v10, Lcom/android/systemui/util/animation/WidgetState;->y:F

    iget v12, v11, Lcom/android/systemui/util/animation/WidgetState;->y:F

    invoke-static {v5, v12, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v5

    move v12, v2

    move v15, v12

    :goto_6
    iput v4, v9, Lcom/android/systemui/util/animation/WidgetState;->x:F

    iput v5, v9, Lcom/android/systemui/util/animation/WidgetState;->y:F

    iget v4, v10, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    iget v5, v11, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    invoke-static {v4, v5, v12}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    iput v4, v9, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    iget v4, v10, Lcom/android/systemui/util/animation/WidgetState;->width:I

    int-to-float v4, v4

    iget v5, v11, Lcom/android/systemui/util/animation/WidgetState;->width:I

    int-to-float v5, v5

    invoke-static {v4, v5, v15}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v9, Lcom/android/systemui/util/animation/WidgetState;->width:I

    iget v4, v10, Lcom/android/systemui/util/animation/WidgetState;->height:I

    int-to-float v4, v4

    iget v5, v11, Lcom/android/systemui/util/animation/WidgetState;->height:I

    int-to-float v5, v5

    invoke-static {v4, v5, v15}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v9, Lcom/android/systemui/util/animation/WidgetState;->height:I

    iput v13, v9, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    iput v14, v9, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    iput v6, v9, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    iget-object v4, v3, Lcom/android/systemui/util/animation/TransitionViewState;->widgetStates:Ljava/util/LinkedHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    move v7, v8

    move-object/from16 v4, v18

    move/from16 v5, v19

    goto/16 :goto_1

    :cond_9
    iget v4, v0, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    int-to-float v4, v4

    iget v5, v1, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    int-to-float v5, v5

    invoke-static {v4, v5, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    iget v4, v0, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    int-to-float v4, v4

    iget v5, v1, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    int-to-float v5, v5

    invoke-static {v4, v5, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    iget-object v4, v3, Lcom/android/systemui/util/animation/TransitionViewState;->translation:Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/android/systemui/util/animation/TransitionViewState;->translation:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, v1, Lcom/android/systemui/util/animation/TransitionViewState;->translation:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v5, v6, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, v3, Lcom/android/systemui/util/animation/TransitionViewState;->translation:Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/android/systemui/util/animation/TransitionViewState;->translation:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, v1, Lcom/android/systemui/util/animation/TransitionViewState;->translation:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v5, v6, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    iget v4, v0, Lcom/android/systemui/util/animation/TransitionViewState;->alpha:F

    iget v5, v1, Lcom/android/systemui/util/animation/TransitionViewState;->alpha:F

    invoke-static {v4, v5, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    iput v4, v3, Lcom/android/systemui/util/animation/TransitionViewState;->alpha:F

    iget-object v4, v3, Lcom/android/systemui/util/animation/TransitionViewState;->contentTranslation:Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/android/systemui/util/animation/TransitionViewState;->contentTranslation:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, v1, Lcom/android/systemui/util/animation/TransitionViewState;->contentTranslation:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v5, v6, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, v3, Lcom/android/systemui/util/animation/TransitionViewState;->contentTranslation:Landroid/graphics/PointF;

    iget-object v0, v0, Lcom/android/systemui/util/animation/TransitionViewState;->contentTranslation:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, v1, Lcom/android/systemui/util/animation/TransitionViewState;->contentTranslation:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    iput v0, v4, Landroid/graphics/PointF;->y:F

    return-object v3
.end method

.method public final setMeasureState(Lcom/android/systemui/util/animation/TransitionViewState;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    iget p1, p1, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    iget v1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->desiredMeasureWidth:I

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->desiredMeasureHeight:I

    if-eq p1, v1, :cond_3

    :cond_1
    iput v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->desiredMeasureWidth:I

    iput p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->desiredMeasureHeight:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInLayout()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->forceLayout()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final setState(Lcom/android/systemui/util/animation/TransitionViewState;ZZJJ)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    iget p3, p3, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/util/animation/TransitionViewState;->copy(Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->state:Lcom/android/systemui/util/animation/TransitionViewState;

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {p1, v0}, Lcom/android/systemui/util/animation/TransitionViewState;->copy(Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->animationStartState:Lcom/android/systemui/util/animation/TransitionViewState;

    iget-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p6, p7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->state:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {p0, p2}, Lcom/android/systemui/util/animation/TransitionLayoutController;->applyStateToLayout(Lcom/android/systemui/util/animation/TransitionViewState;)V

    iget-object p2, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/animation/TransitionViewState;->copy(Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p2, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->state:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {p0, p2}, Lcom/android/systemui/util/animation/TransitionLayoutController;->applyStateToLayout(Lcom/android/systemui/util/animation/TransitionViewState;)V

    iget-object p2, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/animation/TransitionViewState;->copy(Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    :cond_4
    :goto_2
    return-void
.end method
