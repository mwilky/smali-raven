.class final Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;
.super Ljava/lang/Object;
.source "LaunchAnimator.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/LaunchAnimator;->startAnimation(Lcom/android/systemui/animation/LaunchAnimator$Controller;Lcom/android/systemui/animation/LaunchAnimator$State;IZ)Lcom/android/systemui/animation/LaunchAnimator$Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cancelled:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $controller:Lcom/android/systemui/animation/LaunchAnimator$Controller;

.field final synthetic $drawHole:Z

.field final synthetic $endBottom:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $endBottomCornerRadius:F

.field final synthetic $endCenterX:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $endLeft:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $endRight:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $endState:Lcom/android/systemui/animation/LaunchAnimator$State;

.field final synthetic $endTop:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $endTopCornerRadius:F

.field final synthetic $endWidth:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $launchContainer:Landroid/view/ViewGroup;

.field final synthetic $startBottom:I

.field final synthetic $startBottomCornerRadius:F

.field final synthetic $startCenterX:F

.field final synthetic $startTop:I

.field final synthetic $startTopCornerRadius:F

.field final synthetic $startWidth:I

.field final synthetic $state:Lcom/android/systemui/animation/LaunchAnimator$State;

.field final synthetic $windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

.field final synthetic this$0:Lcom/android/systemui/animation/LaunchAnimator;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/animation/LaunchAnimator;FLkotlin/jvm/internal/Ref$FloatRef;ILkotlin/jvm/internal/Ref$IntRef;Lcom/android/systemui/animation/LaunchAnimator$State;ILkotlin/jvm/internal/Ref$IntRef;ILkotlin/jvm/internal/Ref$IntRef;FFFFLandroid/graphics/drawable/GradientDrawable;Landroid/view/ViewGroup;ZLcom/android/systemui/animation/LaunchAnimator$Controller;Lcom/android/systemui/animation/LaunchAnimator$State;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 2

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$cancelled:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->this$0:Lcom/android/systemui/animation/LaunchAnimator;

    move v1, p3

    iput v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startCenterX:F

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endCenterX:Lkotlin/jvm/internal/Ref$FloatRef;

    move v1, p5

    iput v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startWidth:I

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endWidth:Lkotlin/jvm/internal/Ref$IntRef;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    move v1, p8

    iput v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startTop:I

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endTop:Lkotlin/jvm/internal/Ref$IntRef;

    move v1, p10

    iput v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startBottom:I

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endBottom:Lkotlin/jvm/internal/Ref$IntRef;

    move v1, p12

    iput v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startTopCornerRadius:F

    move v1, p13

    iput v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endTopCornerRadius:F

    move/from16 v1, p14

    iput v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startBottomCornerRadius:F

    move/from16 v1, p15

    iput v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endBottomCornerRadius:F

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$launchContainer:Landroid/view/ViewGroup;

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$drawHole:Z

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$controller:Lcom/android/systemui/animation/LaunchAnimator$Controller;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endState:Lcom/android/systemui/animation/LaunchAnimator$State;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endLeft:Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endRight:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$cancelled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endTop:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endState:Lcom/android/systemui/animation/LaunchAnimator$State;

    iget-object v4, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endBottom:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endLeft:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endRight:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v7, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endCenterX:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v8, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endWidth:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static/range {v2 .. v8}, Lcom/android/systemui/animation/LaunchAnimator;->access$startAnimation$maybeUpdateEndState(Lkotlin/jvm/internal/Ref$IntRef;Lcom/android/systemui/animation/LaunchAnimator$State;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->this$0:Lcom/android/systemui/animation/LaunchAnimator;

    invoke-static {v2}, Lcom/android/systemui/animation/LaunchAnimator;->access$getInterpolators$p(Lcom/android/systemui/animation/LaunchAnimator;)Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;->getPositionInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->this$0:Lcom/android/systemui/animation/LaunchAnimator;

    invoke-static {v3}, Lcom/android/systemui/animation/LaunchAnimator;->access$getInterpolators$p(Lcom/android/systemui/animation/LaunchAnimator;)Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;->getPositionXInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    iget v4, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startCenterX:F

    iget-object v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endCenterX:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v5, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v4, v5, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    iget v4, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startWidth:I

    iget-object v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endWidth:Lkotlin/jvm/internal/Ref$IntRef;

    iget v5, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v4, v5, v2}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    iget v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startTop:I

    iget-object v7, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endTop:Lkotlin/jvm/internal/Ref$IntRef;

    iget v7, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v6, v7, v2}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v6

    invoke-static {v6}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/animation/LaunchAnimator$State;->setTop(I)V

    iget-object v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    iget v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startBottom:I

    iget-object v7, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endBottom:Lkotlin/jvm/internal/Ref$IntRef;

    iget v7, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v6, v7, v2}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v6

    invoke-static {v6}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/animation/LaunchAnimator$State;->setBottom(I)V

    iget-object v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    sub-float v6, v3, v4

    invoke-static {v6}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/animation/LaunchAnimator$State;->setLeft(I)V

    iget-object v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    add-float/2addr v3, v4

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/android/systemui/animation/LaunchAnimator$State;->setRight(I)V

    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    iget v4, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startTopCornerRadius:F

    iget v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endTopCornerRadius:F

    invoke-static {v4, v5, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/animation/LaunchAnimator$State;->setTopCornerRadius(F)V

    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    iget v4, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startBottomCornerRadius:F

    iget v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endBottomCornerRadius:F

    invoke-static {v4, v5, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/animation/LaunchAnimator$State;->setBottomCornerRadius(F)V

    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    sget-object v9, Lcom/android/systemui/animation/LaunchAnimator;->Companion:Lcom/android/systemui/animation/LaunchAnimator$Companion;

    iget-object v4, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->this$0:Lcom/android/systemui/animation/LaunchAnimator;

    invoke-static {v4}, Lcom/android/systemui/animation/LaunchAnimator;->access$getTimings$p(Lcom/android/systemui/animation/LaunchAnimator;)Lcom/android/systemui/animation/LaunchAnimator$Timings;

    move-result-object v10

    iget-object v4, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->this$0:Lcom/android/systemui/animation/LaunchAnimator;

    invoke-static {v4}, Lcom/android/systemui/animation/LaunchAnimator;->access$getTimings$p(Lcom/android/systemui/animation/LaunchAnimator;)Lcom/android/systemui/animation/LaunchAnimator$Timings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/animation/LaunchAnimator$Timings;->getContentBeforeFadeOutDelay()J

    move-result-wide v12

    iget-object v4, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->this$0:Lcom/android/systemui/animation/LaunchAnimator;

    invoke-static {v4}, Lcom/android/systemui/animation/LaunchAnimator;->access$getTimings$p(Lcom/android/systemui/animation/LaunchAnimator;)Lcom/android/systemui/animation/LaunchAnimator$Timings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/animation/LaunchAnimator$Timings;->getContentBeforeFadeOutDuration()J

    move-result-wide v14

    move v11, v1

    invoke-virtual/range {v9 .. v15}, Lcom/android/systemui/animation/LaunchAnimator$Companion;->getProgress(Lcom/android/systemui/animation/LaunchAnimator$Timings;FJJ)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/systemui/animation/LaunchAnimator$State;->setVisible(Z)V

    iget-object v9, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->this$0:Lcom/android/systemui/animation/LaunchAnimator;

    iget-object v10, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    iget-object v11, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    iget-object v13, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$launchContainer:Landroid/view/ViewGroup;

    iget-boolean v14, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$drawHole:Z

    move v12, v1

    invoke-static/range {v9 .. v14}, Lcom/android/systemui/animation/LaunchAnimator;->access$applyStateToWindowBackgroundLayer(Lcom/android/systemui/animation/LaunchAnimator;Landroid/graphics/drawable/GradientDrawable;Lcom/android/systemui/animation/LaunchAnimator$State;FLandroid/view/View;Z)V

    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$controller:Lcom/android/systemui/animation/LaunchAnimator$Controller;

    iget-object v0, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-interface {v3, v0, v2, v1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->onLaunchAnimationProgress(Lcom/android/systemui/animation/LaunchAnimator$State;FF)V

    return-void
.end method
