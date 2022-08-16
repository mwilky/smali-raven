.class public Landroidx/constraintlayout/utils/widget/MotionTelltales;
.super Landroidx/constraintlayout/utils/widget/MockView;
.source "MotionTelltales.java"


# instance fields
.field public mInvertMatrix:Landroid/graphics/Matrix;

.field public mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public mPaintTelltales:Landroid/graphics/Paint;

.field public mTailColor:I

.field public mTailScale:F

.field public mVelocityMode:I

.field public velocity:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    const v2, -0xff01

    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    const/high16 v2, 0x3e800000    # 0.25f

    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    if-eqz p2, :cond_3

    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_0
    if-ge v1, p2, :cond_3

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    if-nez v2, :cond_0

    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    goto :goto_1

    :cond_0
    if-ne v2, v0, :cond_1

    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget v3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    iget p2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/high16 p1, 0x40a00000    # 5.0f

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 32

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/utils/widget/MockView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput-object v1, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    :cond_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x5

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    move-object v7, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_2b

    aget v14, v4, v6

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v3, :cond_2a

    aget v13, v4, v15

    iget-object v8, v7, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v12, v7, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    iget v11, v7, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    iget v9, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    iget v10, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget-object v3, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_2

    const v3, 0x3727c5ac    # 1.0E-5f

    iget v9, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    iget-object v10, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v5, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    add-float/2addr v5, v3

    invoke-interface {v10, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    iget-object v10, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v3, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    invoke-interface {v10, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    sub-float/2addr v5, v10

    const v3, 0x3727c5ac    # 1.0E-5f

    div-float/2addr v5, v3

    mul-float/2addr v5, v9

    iget v3, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    div-float v9, v5, v3

    :cond_2
    iget-object v3, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v5, v3, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    if-eqz v5, :cond_3

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity$1()F

    move-result v9

    :cond_3
    move v3, v9

    iget-object v5, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    and-int/lit8 v7, v11, 0x1

    const/16 v16, 0x1

    if-nez v7, :cond_28

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v17

    iget-object v8, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    invoke-virtual {v5, v10, v8}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v8

    iget-object v9, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string/jumbo v10, "translationX"

    const/16 v18, 0x0

    if-nez v9, :cond_4

    move-object/from16 v19, v4

    move-object/from16 v9, v18

    goto :goto_2

    :cond_4
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/motion/widget/SplineSet;

    move-object/from16 v19, v4

    :goto_2
    iget-object v4, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    move/from16 v20, v11

    const-string/jumbo v11, "translationY"

    if-nez v4, :cond_5

    move/from16 v21, v6

    move-object/from16 v4, v18

    goto :goto_3

    :cond_5
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/SplineSet;

    move/from16 v21, v6

    :goto_3
    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    move/from16 v22, v15

    const-string/jumbo v15, "rotation"

    if-nez v6, :cond_6

    move/from16 v23, v2

    move-object/from16 v6, v18

    goto :goto_4

    :cond_6
    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/SplineSet;

    move/from16 v23, v2

    :goto_4
    iget-object v2, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    move/from16 v24, v1

    const-string/jumbo v1, "scaleX"

    if-nez v2, :cond_7

    move-object/from16 v2, v18

    goto :goto_5

    :cond_7
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/SplineSet;

    :goto_5
    iget-object v0, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    move/from16 v25, v3

    const-string/jumbo v3, "scaleY"

    if-nez v0, :cond_8

    move/from16 v26, v7

    move-object/from16 v0, v18

    goto :goto_6

    :cond_8
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/SplineSet;

    move/from16 v26, v7

    :goto_6
    iget-object v7, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v7, :cond_9

    move-object/from16 v7, v18

    goto :goto_7

    :cond_9
    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    :goto_7
    iget-object v10, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v10, :cond_a

    move-object/from16 v10, v18

    goto :goto_8

    :cond_a
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    :goto_8
    iget-object v11, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v11, :cond_b

    move-object/from16 v11, v18

    goto :goto_9

    :cond_b
    invoke-virtual {v11, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    :goto_9
    iget-object v15, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v15, :cond_c

    move-object/from16 v1, v18

    goto :goto_a

    :cond_c
    invoke-virtual {v15, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    :goto_a
    iget-object v15, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v15, :cond_d

    goto :goto_b

    :cond_d
    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    :goto_b
    move-object/from16 v3, v18

    new-instance v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;

    invoke-direct {v15}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;-><init>()V

    move-object/from16 v18, v12

    const/4 v12, 0x0

    iput v12, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDRotate:F

    iput v12, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDTranslateY:F

    iput v12, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDTranslateX:F

    iput v12, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDScaleY:F

    iput v12, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDScaleX:F

    if-eqz v6, :cond_e

    iget-object v12, v6, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    move/from16 v28, v13

    move/from16 v27, v14

    float-to-double v13, v8

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D)D

    move-result-wide v12

    double-to-float v12, v12

    iput v12, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDRotate:F

    invoke-virtual {v6, v8}, Landroidx/constraintlayout/motion/widget/SplineSet;->get(F)F

    move-result v12

    iput v12, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mRotate:F

    goto :goto_c

    :cond_e
    move/from16 v28, v13

    move/from16 v27, v14

    :goto_c
    if-eqz v9, :cond_f

    iget-object v12, v9, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v13, v8

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D)D

    move-result-wide v12

    double-to-float v12, v12

    iput v12, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDTranslateX:F

    :cond_f
    if-eqz v4, :cond_10

    iget-object v12, v4, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v13, v8

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D)D

    move-result-wide v12

    double-to-float v12, v12

    iput v12, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDTranslateY:F

    :cond_10
    if-eqz v2, :cond_11

    iget-object v12, v2, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v13, v8

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D)D

    move-result-wide v12

    double-to-float v12, v12

    iput v12, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDScaleX:F

    :cond_11
    if-eqz v0, :cond_12

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v13, v8

    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D)D

    move-result-wide v12

    double-to-float v12, v12

    iput v12, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDScaleY:F

    :cond_12
    if-eqz v11, :cond_13

    invoke-virtual {v11, v8}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->getSlope(F)F

    move-result v12

    iput v12, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDRotate:F

    :cond_13
    if-eqz v7, :cond_14

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->getSlope(F)F

    move-result v12

    iput v12, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDTranslateX:F

    :cond_14
    if-eqz v10, :cond_15

    invoke-virtual {v10, v8}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->getSlope(F)F

    move-result v12

    iput v12, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDTranslateY:F

    :cond_15
    if-nez v1, :cond_16

    if-nez v3, :cond_16

    goto :goto_d

    :cond_16
    if-nez v1, :cond_17

    invoke-virtual {v1, v8}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->getSlope(F)F

    move-result v12

    iput v12, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDScaleX:F

    :cond_17
    if-nez v3, :cond_18

    invoke-virtual {v3, v8}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->getSlope(F)F

    move-result v12

    iput v12, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDScaleY:F

    :cond_18
    :goto_d
    iget-object v12, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/ArcCurveFit;

    if-eqz v12, :cond_1a

    iget-object v0, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v1, v0

    if-lez v1, :cond_19

    float-to-double v1, v8

    invoke-virtual {v12, v1, v2, v0}, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->getPos(D[D)V

    iget-object v0, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/ArcCurveFit;

    iget-object v3, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->getSlope(D[D)V

    iget-object v0, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v11, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v12, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    iget-object v13, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v8, v28

    move/from16 v9, v27

    move-object/from16 v10, v18

    move/from16 v14, v20

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-static/range {v8 .. v13}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    goto :goto_e

    :cond_19
    move-object/from16 v0, v18

    move/from16 v14, v20

    move/from16 v1, v28

    :goto_e
    move-object v8, v15

    move v9, v1

    move/from16 v10, v27

    move/from16 v11, v26

    move/from16 v12, v17

    move-object v13, v0

    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    move/from16 v20, v14

    move-object v14, v0

    move v0, v1

    goto/16 :goto_12

    :cond_1a
    move-object/from16 v12, v18

    move/from16 v13, v28

    iget-object v14, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    if-eqz v14, :cond_1c

    iget-object v0, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    invoke-virtual {v5, v8, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v0

    iget-object v1, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    float-to-double v3, v0

    iget-object v0, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v3, v4, v0}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    iget-object v0, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v0, v0, v2

    iget-object v1, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v0, v3, v4, v1}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    iget-object v0, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    aget v0, v0, v2

    const/4 v1, 0x0

    :goto_f
    iget-object v2, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    array-length v3, v2

    if-ge v1, v3, :cond_1b

    aget-wide v3, v2, v1

    float-to-double v6, v0

    mul-double/2addr v3, v6

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1b
    iget-object v0, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v11, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v1, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v8, v13

    move/from16 v9, v27

    move-object v10, v12

    move-object v14, v12

    move-object v12, v2

    move v0, v13

    move-object v13, v1

    invoke-static/range {v8 .. v13}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    move-object v8, v15

    move v9, v0

    move/from16 v10, v27

    move/from16 v11, v26

    move/from16 v12, v17

    move-object v13, v14

    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    goto/16 :goto_12

    :cond_1c
    move-object v14, v12

    iget-object v12, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v18, v3

    iget v3, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v28, v1

    iget v1, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    sub-float/2addr v3, v1

    iget v1, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    move-object/from16 v29, v10

    iget v10, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    sub-float/2addr v1, v10

    iget v10, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    move-object/from16 v30, v7

    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float/2addr v10, v7

    iget v7, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float/2addr v7, v5

    add-float/2addr v10, v3

    add-float/2addr v7, v1

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v12, v5, v13

    mul-float/2addr v12, v3

    mul-float/2addr v10, v13

    add-float/2addr v10, v12

    const/4 v3, 0x0

    aput v10, v14, v3

    sub-float v5, v5, v27

    mul-float/2addr v5, v1

    mul-float v7, v7, v27

    add-float/2addr v7, v5

    aput v7, v14, v16

    const/4 v1, 0x0

    iput v1, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDRotate:F

    iput v1, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDTranslateY:F

    iput v1, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDTranslateX:F

    iput v1, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDScaleY:F

    iput v1, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDScaleX:F

    if-eqz v6, :cond_1d

    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    move v3, v13

    float-to-double v12, v8

    invoke-virtual {v1, v12, v13}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D)D

    move-result-wide v12

    double-to-float v1, v12

    iput v1, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDRotate:F

    invoke-virtual {v6, v8}, Landroidx/constraintlayout/motion/widget/SplineSet;->get(F)F

    move-result v1

    iput v1, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mRotate:F

    goto :goto_10

    :cond_1d
    move v3, v13

    :goto_10
    if-eqz v9, :cond_1e

    iget-object v1, v9, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v5, v8

    invoke-virtual {v1, v5, v6}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDTranslateX:F

    :cond_1e
    if-eqz v4, :cond_1f

    iget-object v1, v4, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v4, v8

    invoke-virtual {v1, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D)D

    move-result-wide v4

    double-to-float v1, v4

    iput v1, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDTranslateY:F

    :cond_1f
    if-eqz v2, :cond_20

    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v4, v8

    invoke-virtual {v1, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDScaleX:F

    :cond_20
    if-eqz v0, :cond_21

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v1, v8

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDScaleY:F

    :cond_21
    if-eqz v11, :cond_22

    invoke-virtual {v11, v8}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    iput v0, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDRotate:F

    :cond_22
    if-eqz v30, :cond_23

    move-object/from16 v7, v30

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    iput v0, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDTranslateX:F

    :cond_23
    if-eqz v29, :cond_24

    move-object/from16 v10, v29

    invoke-virtual {v10, v8}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    iput v0, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDTranslateY:F

    :cond_24
    if-nez v28, :cond_25

    if-nez v18, :cond_25

    goto :goto_11

    :cond_25
    if-nez v28, :cond_26

    move-object/from16 v1, v28

    invoke-virtual {v1, v8}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    iput v0, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDScaleX:F

    :cond_26
    if-nez v18, :cond_27

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    iput v0, v15, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDScaleY:F

    :cond_27
    :goto_11
    move-object v8, v15

    move v9, v3

    move/from16 v10, v27

    move/from16 v11, v26

    move/from16 v12, v17

    move v0, v3

    move-object v13, v14

    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    :goto_12
    move/from16 v1, v27

    goto :goto_13

    :cond_28
    move/from16 v24, v1

    move/from16 v23, v2

    move/from16 v25, v3

    move-object/from16 v19, v4

    move/from16 v21, v6

    move/from16 v20, v11

    move v0, v13

    move v1, v14

    move/from16 v22, v15

    move-object v14, v12

    invoke-virtual {v5, v10, v0, v1, v14}, Landroidx/constraintlayout/motion/widget/MotionController;->getDpDt(FFF[F)V

    :goto_13
    const/4 v2, 0x2

    move/from16 v3, v20

    if-ge v3, v2, :cond_29

    const/4 v2, 0x0

    aget v3, v14, v2

    mul-float v3, v3, v25

    aput v3, v14, v2

    aget v2, v14, v16

    mul-float v2, v2, v25

    aput v2, v14, v16

    :cond_29
    move-object/from16 v2, p0

    iget-object v3, v2, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    iget-object v4, v2, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapVectors([F)V

    move/from16 v3, v24

    int-to-float v4, v3

    mul-float v6, v4, v0

    move/from16 v0, v23

    int-to-float v4, v0

    mul-float v7, v4, v1

    iget-object v4, v2, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    const/4 v11, 0x0

    aget v5, v4, v11

    iget v8, v2, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    mul-float/2addr v5, v8

    sub-float v9, v6, v5

    aget v5, v4, v16

    mul-float/2addr v5, v8

    sub-float v10, v7, v5

    iget-object v5, v2, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapVectors([F)V

    iget-object v4, v2, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v8, v9

    move v9, v10

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v15, v22, 0x1

    move v14, v1

    move-object v7, v2

    move v1, v3

    move-object/from16 v4, v19

    move/from16 v6, v21

    const/4 v3, 0x5

    move v2, v0

    move-object v0, v7

    goto/16 :goto_1

    :cond_2a
    move v3, v1

    move-object/from16 v19, v4

    move/from16 v21, v6

    const/4 v11, 0x0

    move/from16 v31, v2

    move-object v2, v0

    move/from16 v0, v31

    add-int/lit8 v6, v21, 0x1

    const/4 v3, 0x5

    move-object/from16 v31, v2

    move v2, v0

    move-object/from16 v0, v31

    goto/16 :goto_0

    :cond_2b
    return-void

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
