.class final Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;
.super Ljava/lang/Object;
.source "ActivityLaunchAnimator.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->startAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityLaunchAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityLaunchAnimator.kt\ncom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,721:1\n1#2:722\n*E\n"
.end annotation


# instance fields
.field final synthetic $endBottom:I

.field final synthetic $endRadius:F

.field final synthetic $endTop:I

.field final synthetic $endWidth:I

.field final synthetic $endXCenter:F

.field final synthetic $navigationBar:Landroid/view/RemoteAnimationTarget;

.field final synthetic $startBottom:I

.field final synthetic $startBottomCornerRadius:F

.field final synthetic $startLeft:I

.field final synthetic $startRight:I

.field final synthetic $startTop:I

.field final synthetic $startTopCornerRadius:F

.field final synthetic $startWidth:I

.field final synthetic $startXCenter:F

.field final synthetic $state:Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

.field final synthetic $window:Landroid/view/RemoteAnimationTarget;

.field final synthetic $windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

.field final synthetic this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

.field final synthetic this$1:Lcom/android/systemui/animation/ActivityLaunchAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Lcom/android/systemui/animation/ActivityLaunchAnimator;FFIILcom/android/systemui/animation/ActivityLaunchAnimator$State;IIIIFFFLandroid/view/RemoteAnimationTarget;Landroid/graphics/drawable/GradientDrawable;Landroid/view/RemoteAnimationTarget;II)V
    .locals 2

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->this$1:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    move v1, p3

    iput v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$startXCenter:F

    move v1, p4

    iput v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$endXCenter:F

    move v1, p5

    iput v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$startWidth:I

    move v1, p6

    iput v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$endWidth:I

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$state:Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

    move v1, p8

    iput v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$startTop:I

    move v1, p9

    iput v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$endTop:I

    move v1, p10

    iput v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$startBottom:I

    move v1, p11

    iput v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$endBottom:I

    move v1, p12

    iput v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$startTopCornerRadius:F

    move v1, p13

    iput v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$endRadius:F

    move/from16 v1, p14

    iput v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$startBottomCornerRadius:F

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$window:Landroid/view/RemoteAnimationTarget;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$navigationBar:Landroid/view/RemoteAnimationTarget;

    move/from16 v1, p18

    iput v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$startLeft:I

    move/from16 v1, p19

    iput v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$startRight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    invoke-static {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->access$getCancelled$p(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->this$1:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->access$getAnimationInterpolator$p(Lcom/android/systemui/animation/ActivityLaunchAnimator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->this$1:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    invoke-static {v1}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->access$getAnimationInterpolatorX$p(Lcom/android/systemui/animation/ActivityLaunchAnimator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$startXCenter:F

    iget v3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$endXCenter:F

    invoke-static {v2, v3, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    iget v3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$startWidth:I

    iget v4, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$endWidth:I

    invoke-static {v2, v3, v4, v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->access$lerp(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;IIF)F

    move-result v2

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$state:Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

    iget-object v4, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    iget v5, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$startTop:I

    iget v6, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$endTop:I

    invoke-static {v4, v5, v6, v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->access$lerp(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;IIF)F

    move-result v4

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->setTop(I)V

    iget-object v3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$state:Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

    iget-object v4, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    iget v5, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$startBottom:I

    iget v6, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$endBottom:I

    invoke-static {v4, v5, v6, v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->access$lerp(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;IIF)F

    move-result v4

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->setBottom(I)V

    iget-object v3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$state:Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

    sub-float v4, v1, v2

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->setLeft(I)V

    iget-object v3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$state:Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

    add-float/2addr v1, v2

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->setRight(I)V

    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$state:Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

    iget v2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$startTopCornerRadius:F

    iget v3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$endRadius:F

    invoke-static {v2, v3, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->setTopCornerRadius(F)V

    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$state:Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

    iget v2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$startBottomCornerRadius:F

    iget v3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$endRadius:F

    invoke-static {v2, v3, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->setBottomCornerRadius(F)V

    iget-object v7, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$state:Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

    sget-object v1, Lcom/android/systemui/animation/ActivityLaunchAnimator;->Companion:Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x96

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;->getProgress(FJJ)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    if-gez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v7, v1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    iget-object v3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$window:Landroid/view/RemoteAnimationTarget;

    iget-object v4, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$state:Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

    invoke-static {v1, v3, v4}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->access$applyStateToWindow(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/ActivityLaunchAnimator$State;)V

    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    iget-object v3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    iget-object v4, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$state:Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

    invoke-static {v1, v3, v4, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->access$applyStateToWindowBackgroundLayer(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/graphics/drawable/GradientDrawable;Lcom/android/systemui/animation/ActivityLaunchAnimator$State;F)V

    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$navigationBar:Landroid/view/RemoteAnimationTarget;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    iget-object v4, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$state:Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

    invoke-static {v3, v1, v4, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->access$applyStateToNavigationBar(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/ActivityLaunchAnimator$State;F)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$state:Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

    invoke-virtual {v1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getTop()I

    move-result v1

    iget v3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$startTop:I

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$state:Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

    invoke-virtual {v1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getLeft()I

    move-result v1

    iget v3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$startLeft:I

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$state:Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

    invoke-virtual {v1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getBottom()I

    move-result v1

    iget v3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$startBottom:I

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$state:Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

    invoke-virtual {v1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getRight()I

    move-result v1

    iget v3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$startRight:I

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$state:Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

    invoke-virtual {v1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getTop()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->setTop(I)V

    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$state:Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

    invoke-virtual {v1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getLeft()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->setLeft(I)V

    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$state:Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

    invoke-virtual {v1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getRight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->setRight(I)V

    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$state:Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

    invoke-virtual {v1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getBottom()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->setBottom(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    invoke-static {v1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->access$getController$p(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;->$state:Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

    invoke-interface {v1, p0, v0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationProgress(Lcom/android/systemui/animation/ActivityLaunchAnimator$State;FF)V

    return-void
.end method
