.class public final Lcom/android/systemui/animation/LaunchAnimator;
.super Ljava/lang/Object;
.source "LaunchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/animation/LaunchAnimator$Companion;,
        Lcom/android/systemui/animation/LaunchAnimator$Controller;,
        Lcom/android/systemui/animation/LaunchAnimator$State;,
        Lcom/android/systemui/animation/LaunchAnimator$Timings;,
        Lcom/android/systemui/animation/LaunchAnimator$Interpolators;
    }
.end annotation


# static fields
.field public static final SRC_MODE:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field public final cornerRadii:[F

.field public final interpolators:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

.field public final launchContainerLocation:[I

.field public final timings:Lcom/android/systemui/animation/LaunchAnimator$Timings;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/android/systemui/animation/LaunchAnimator;->SRC_MODE:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/animation/LaunchAnimator$Timings;Lcom/android/systemui/animation/LaunchAnimator$Interpolators;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/LaunchAnimator;->timings:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    iput-object p2, p0, Lcom/android/systemui/animation/LaunchAnimator;->interpolators:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/systemui/animation/LaunchAnimator;->launchContainerLocation:[I

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/systemui/animation/LaunchAnimator;->cornerRadii:[F

    return-void
.end method


# virtual methods
.method public final isExpandingFullyAbove$frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib(Landroid/view/ViewGroup;Lcom/android/systemui/animation/LaunchAnimator$State;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/animation/LaunchAnimator;->launchContainerLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v0, p2, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    iget-object v1, p0, Lcom/android/systemui/animation/LaunchAnimator;->launchContainerLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    iget v0, p2, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    if-lt v0, v4, :cond_0

    iget v0, p2, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    iget-object p0, p0, Lcom/android/systemui/animation/LaunchAnimator;->launchContainerLocation:[I

    aget p0, p0, v3

    if-gt v0, p0, :cond_0

    iget p2, p2, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, p0

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2
.end method

.method public final startAnimation(Lcom/android/systemui/animation/LaunchAnimator$Controller;Lcom/android/systemui/animation/LaunchAnimator$State;IZ)Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;
    .locals 35

    move-object/from16 v2, p0

    move-object/from16 v15, p2

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;

    move-result-object v7

    iget v8, v7, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    iget v10, v7, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    iget v0, v7, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    iget v1, v7, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    add-int v3, v0, v1

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-int v5, v1, v0

    iget v12, v7, Lcom/android/systemui/animation/LaunchAnimator$State;->topCornerRadius:F

    iget v14, v7, Lcom/android/systemui/animation/LaunchAnimator$State;->bottomCornerRadius:F

    new-instance v9, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget v0, v15, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    iput v0, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v11, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget v0, v15, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    iput v0, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v13, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget v0, v15, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    iput v0, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v6, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget v0, v15, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    iput v0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v0, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget v1, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v4, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iput v1, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget v1, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v16, v0

    iget v0, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr v1, v0

    iput v1, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v0, v15, Lcom/android/systemui/animation/LaunchAnimator$State;->topCornerRadius:F

    iget v1, v15, Lcom/android/systemui/animation/LaunchAnimator$State;->bottomCornerRadius:F

    move/from16 v19, v14

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v14

    invoke-virtual {v2, v14, v15}, Lcom/android/systemui/animation/LaunchAnimator;->isExpandingFullyAbove$frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib(Landroid/view/ViewGroup;Lcom/android/systemui/animation/LaunchAnimator$State;)Z

    move-result v22

    new-instance v15, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v15}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move/from16 v27, v0

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    move/from16 v17, v1

    iget-object v1, v2, Lcom/android/systemui/animation/LaunchAnimator;->timings:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    iget-wide v1, v1, Lcom/android/systemui/animation/LaunchAnimator$Timings;->totalDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getOpeningWindowSyncView()Landroid/view/View;

    move-result-object v28

    if-nez v28, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    :goto_0
    move-object/from16 v29, v1

    if-eqz v28, :cond_1

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move/from16 v30, v1

    goto :goto_1

    :cond_1
    const/16 v30, 0x0

    :goto_1
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v23

    move-object/from16 v18, v23

    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    move/from16 v31, v17

    move-object v1, v2

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v20, Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v17, v20

    invoke-direct/range {v20 .. v20}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object/from16 p3, v2

    new-instance v2, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;

    move-object/from16 v20, v2

    move-object/from16 v21, p1

    move-object/from16 v24, v15

    move/from16 v25, v30

    move-object/from16 v26, v29

    invoke-direct/range {v20 .. v26}, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;-><init>(Lcom/android/systemui/animation/LaunchAnimator$Controller;ZLandroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;ZLandroid/view/ViewOverlay;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;

    move-object/from16 v32, v0

    move/from16 v20, v27

    move-object v0, v2

    move-object/from16 v33, p3

    move-object/from16 v34, v2

    move-object/from16 v2, p0

    move-object/from16 v21, v4

    move-object/from16 v4, v16

    move-object/from16 v27, v6

    move-object/from16 v6, v21

    move-object/from16 v26, v13

    move/from16 v13, v20

    move-object/from16 v21, v14

    move/from16 v14, v19

    move-object/from16 v19, v15

    move/from16 v15, v31

    move/from16 v16, v30

    move-object/from16 v20, v29

    move-object/from16 v22, v28

    move-object/from16 v23, p1

    move/from16 v24, p4

    move-object/from16 v25, p2

    invoke-direct/range {v0 .. v27}, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/animation/LaunchAnimator;FLkotlin/jvm/internal/Ref$FloatRef;ILkotlin/jvm/internal/Ref$IntRef;Lcom/android/systemui/animation/LaunchAnimator$State;ILkotlin/jvm/internal/Ref$IntRef;ILkotlin/jvm/internal/Ref$IntRef;FFFFZLkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;Landroid/view/ViewOverlay;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/animation/LaunchAnimator$Controller;ZLcom/android/systemui/animation/LaunchAnimator$State;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-instance v1, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;

    move-object/from16 v2, v33

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/animation/ValueAnimator;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
