.class public final Landroidx/constraintlayout/motion/widget/MotionController;
.super Ljava/lang/Object;
.source "MotionController.java"


# instance fields
.field public mArcSpline:Landroidx/constraintlayout/motion/utils/ArcCurveFit;

.field public mAttributeInterpCount:[I

.field public mAttributeNames:[Ljava/lang/String;

.field public mAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/SplineSet;",
            ">;"
        }
    .end annotation
.end field

.field public mCurveFitType:I

.field public mCycleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;",
            ">;"
        }
    .end annotation
.end field

.field public mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field public mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field public mId:I

.field public mInterpolateData:[D

.field public mInterpolateVariables:[I

.field public mInterpolateVelocity:[D

.field public mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/Key;",
            ">;"
        }
    .end annotation
.end field

.field public mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

.field public mMotionPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionPaths;",
            ">;"
        }
    .end annotation
.end field

.field public mMotionStagger:F

.field public mPathMotionArc:I

.field public mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

.field public mStaggerOffset:F

.field public mStaggerScale:F

.field public mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field public mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field public mTimeCycleAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;",
            ">;"
        }
    .end annotation
.end field

.field public mValuesBuff:[F

.field public mVelocity:[F

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [F

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz p1, :cond_0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getAdjustedPosition(F[F)F
    .locals 10

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    aput v1, p2, v2

    goto :goto_0

    :cond_0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_2

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    cmpg-float v5, p1, v4

    if-gez v5, :cond_1

    move p1, v0

    :cond_1
    cmpl-float v5, p1, v4

    if-lez v5, :cond_2

    float-to-double v8, p1

    cmpg-double v5, v8, v6

    if-gez v5, :cond_2

    sub-float/2addr p1, v4

    mul-float/2addr p1, v3

    :cond_2
    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    const/high16 v4, 0x7fc00000    # Float.NaN

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v6, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    if-eqz v6, :cond_3

    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    cmpg-float v8, v7, p1

    if-gez v8, :cond_4

    move-object v3, v6

    move v0, v7

    goto :goto_1

    :cond_4
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v4, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_8

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v4

    :goto_2
    sub-float/2addr p1, v0

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    float-to-double p0, p1

    invoke-virtual {v3, p0, p1}, Landroidx/constraintlayout/motion/utils/Easing;->get(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v0, v4

    if-eqz p2, :cond_7

    invoke-virtual {v3, p0, p1}, Landroidx/constraintlayout/motion/utils/Easing;->getDiff(D)D

    move-result-wide p0

    double-to-float p0, p0

    aput p0, p2, v2

    :cond_7
    move p1, v0

    :cond_8
    return p1
.end method

.method public final getDpDt(FFF[F)V
    .locals 10

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result p1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    aget-object v0, v0, v1

    float-to-double v2, p1

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v0, v2, v3, p1}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object p1, p1, v1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    aget p1, p1, v1

    :goto_0
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    array-length v0, v8

    if-ge v1, v0, :cond_0

    aget-wide v4, v8, v1

    float-to-double v6, p1

    mul-double/2addr v4, v6

    aput-wide v4, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/ArcCurveFit;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v1, v0

    if-lez v1, :cond_1

    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->getPos(D[D)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/ArcCurveFit;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->getSlope(D[D)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v0, p2

    move v1, p3

    move-object v2, p4

    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v4 .. v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    return-void

    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    sub-float/2addr v0, v2

    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    sub-float/2addr v2, v3

    iget v3, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float/2addr v3, v4

    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float/2addr p1, p0

    add-float/2addr v3, v0

    add-float/2addr p1, v2

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float v4, p0, p2

    mul-float/2addr v4, v0

    mul-float/2addr v3, p2

    add-float/2addr v3, v4

    aput v3, p4, v1

    sub-float/2addr p0, p3

    mul-float/2addr p0, v2

    mul-float/2addr p1, p3

    add-float/2addr p1, p0

    const/4 p0, 0x1

    aput p1, p4, p0

    return-void
.end method

.method public final interpolate(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p4

    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v8

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/SplineSet;

    invoke-virtual {v3, v7, v8}, Landroidx/constraintlayout/motion/widget/SplineSet;->setProperty(Landroid/view/View;F)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    const/4 v9, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v11, v1

    move v12, v9

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;

    instance-of v2, v1, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;

    if-eqz v2, :cond_1

    move-object v11, v1

    check-cast v11, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;

    goto :goto_1

    :cond_1
    move v2, v8

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setProperty(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;)Z

    move-result v1

    or-int/2addr v12, v1

    goto :goto_1

    :cond_2
    move-object v11, v1

    move v12, v9

    :cond_3
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    if-eqz v1, :cond_31

    aget-object v1, v1, v9

    float-to-double v13, v8

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v1, v13, v14, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v1, v1, v9

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v13, v14, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/ArcCurveFit;

    if-eqz v1, :cond_4

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v3, v2

    if-lez v3, :cond_4

    invoke-virtual {v1, v13, v14, v2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->getPos(D[D)V

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/ArcCurveFit;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v13, v14, v2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->getSlope(D[D)V

    :cond_4
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    iget v5, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v6, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v9, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v10, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    array-length v15, v2

    if-eqz v15, :cond_5

    iget-object v15, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    array-length v15, v15

    move/from16 p1, v5

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget v5, v2, v5

    if-gt v15, v5, :cond_6

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget v5, v2, v5

    add-int/lit8 v5, v5, 0x1

    new-array v15, v5, [D

    iput-object v15, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    new-array v5, v5, [D

    iput-object v5, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    goto :goto_2

    :cond_5
    move/from16 p1, v5

    :cond_6
    :goto_2
    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    move v15, v9

    move/from16 v16, v10

    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v5, v9, v10}, Ljava/util/Arrays;->fill([DD)V

    const/4 v5, 0x0

    :goto_3
    array-length v9, v2

    if-ge v5, v9, :cond_7

    iget-object v9, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget v10, v2, v5

    aget-wide v17, v3, v5

    aput-wide v17, v9, v10

    iget-object v9, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    aget-wide v17, v4, v5

    aput-wide v17, v9, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide/from16 v19, v13

    move/from16 v17, v16

    move/from16 v16, v10

    move v10, v9

    move v9, v6

    move/from16 v6, p1

    :goto_4
    iget-object v13, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    array-length v14, v13

    if-ge v2, v14, :cond_f

    aget-wide v13, v13, v2

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_6

    :cond_8
    iget-object v13, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget-wide v13, v13, v2

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v13

    if-eqz v13, :cond_9

    const-wide/16 v13, 0x0

    goto :goto_5

    :cond_9
    iget-object v13, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget-wide v13, v13, v2

    const-wide/16 v21, 0x0

    add-double v13, v13, v21

    :goto_5
    double-to-float v13, v13

    iget-object v14, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    move/from16 v18, v13

    aget-wide v13, v14, v2

    double-to-float v13, v13

    const/4 v14, 0x1

    if-eq v2, v14, :cond_e

    const/4 v14, 0x2

    if-eq v2, v14, :cond_d

    const/4 v14, 0x3

    if-eq v2, v14, :cond_c

    const/4 v14, 0x4

    if-eq v2, v14, :cond_b

    const/4 v13, 0x5

    if-eq v2, v13, :cond_a

    goto :goto_6

    :cond_a
    move/from16 v3, v18

    goto :goto_6

    :cond_b
    move v5, v13

    move/from16 v17, v18

    goto :goto_6

    :cond_c
    move/from16 v16, v13

    move/from16 v15, v18

    goto :goto_6

    :cond_d
    move v4, v13

    move/from16 v9, v18

    goto :goto_6

    :cond_e
    move v10, v13

    move/from16 v6, v18

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_f
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_11

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v7, v2}, Landroid/view/View;->setRotation(F)V

    :cond_10
    move-object/from16 p1, v11

    goto :goto_7

    :cond_11
    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_12

    const/4 v2, 0x0

    :cond_12
    const/high16 v13, 0x40000000    # 2.0f

    div-float v16, v16, v13

    add-float v10, v16, v10

    div-float/2addr v5, v13

    add-float/2addr v5, v4

    float-to-double v13, v2

    float-to-double v2, v3

    float-to-double v4, v5

    move-object/from16 p1, v11

    float-to-double v10, v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    add-double/2addr v4, v2

    add-double/2addr v4, v13

    double-to-float v2, v4

    invoke-virtual {v7, v2}, Landroid/view/View;->setRotation(F)V

    :goto_7
    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v6, v2

    float-to-int v3, v6

    add-float/2addr v9, v2

    float-to-int v2, v9

    add-float/2addr v6, v15

    float-to-int v4, v6

    add-float v9, v9, v17

    float-to-int v5, v9

    sub-int v6, v4, v3

    sub-int v9, v5, v2

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getWidth()I

    move-result v10

    if-ne v6, v10, :cond_14

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getHeight()I

    move-result v10

    if-eq v9, v10, :cond_13

    goto :goto_8

    :cond_13
    const/4 v10, 0x0

    goto :goto_9

    :cond_14
    :goto_8
    const/4 v10, 0x1

    :goto_9
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget v11, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    if-ne v11, v6, :cond_15

    iget v11, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    if-eq v11, v9, :cond_16

    :cond_15
    const/4 v10, 0x1

    :cond_16
    if-eqz v10, :cond_17

    iput v6, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    iput v9, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    invoke-virtual {v7, v6, v9}, Landroid/view/View;->measure(II)V

    :cond_17
    invoke-virtual {v7, v3, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/SplineSet;

    instance-of v3, v2, Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;

    if-eqz v3, :cond_18

    check-cast v2, Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    const/4 v6, 0x1

    aget-wide v9, v3, v6

    invoke-virtual {v2, v8}, Landroidx/constraintlayout/motion/widget/SplineSet;->get(F)F

    move-result v2

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v7, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_a

    :cond_19
    if-eqz p1, :cond_1a

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    const/4 v2, 0x0

    aget-wide v9, v1, v2

    const/4 v2, 0x1

    aget-wide v13, v1, v2

    move-object/from16 v1, p1

    move v2, v8

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->get(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;)F

    move-result v1

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    move-object/from16 v11, p1

    iget-boolean v1, v11, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mContinue:Z

    or-int/2addr v1, v12

    move v12, v1

    :cond_1a
    const/4 v1, 0x1

    :goto_b
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    array-length v3, v2

    if-ge v1, v3, :cond_1b

    aget-object v2, v2, v1

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    move-wide/from16 v4, v19

    invoke-virtual {v2, v4, v5, v3}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[F)V

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    add-int/lit8 v6, v1, -0x1

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    invoke-virtual {v2, v7, v3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setInterpolatedValue(Landroid/view/View;[F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    if-nez v2, :cond_1e

    const/4 v2, 0x0

    cmpg-float v2, v8, v2

    if-gtz v2, :cond_1c

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    :cond_1c
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v8, v2

    if-ltz v2, :cond_1d

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    :cond_1d
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    if-eq v2, v1, :cond_1e

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    :goto_c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    if-eqz v1, :cond_30

    const/4 v1, 0x0

    :goto_d
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    array-length v3, v2

    if-ge v1, v3, :cond_30

    aget-object v2, v2, v1

    iget v3, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_20

    iget-object v0, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    if-nez v0, :cond_1f

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget v1, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    :cond_1f
    iget-object v0, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    iget-boolean v1, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    const/4 v3, 0x0

    invoke-static {v3, v0, v1}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->setUpRect(Landroid/graphics/RectF;Landroid/view/View;Z)V

    iget-boolean v0, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    invoke-static {v3, v7, v0}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->setUpRect(Landroid/graphics/RectF;Landroid/view/View;Z)V

    throw v3

    :cond_20
    iget-boolean v3, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    if-eqz v3, :cond_21

    iget v3, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    sub-float v4, v8, v3

    iget v5, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    sub-float/2addr v5, v3

    mul-float/2addr v5, v4

    const/4 v3, 0x0

    cmpg-float v3, v5, v3

    if-gez v3, :cond_22

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    const/4 v3, 0x1

    goto :goto_e

    :cond_21
    iget v3, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    sub-float v3, v8, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_22

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    :cond_22
    const/4 v3, 0x0

    :goto_e
    iget-boolean v4, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    if-eqz v4, :cond_23

    iget v4, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    sub-float v5, v8, v4

    iget v6, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, v5

    const/4 v4, 0x0

    cmpg-float v6, v6, v4

    if-gez v6, :cond_24

    cmpg-float v4, v5, v4

    if-gez v4, :cond_24

    const/4 v4, 0x0

    iput-boolean v4, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    const/4 v4, 0x1

    goto :goto_f

    :cond_23
    iget v4, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    sub-float v4, v8, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_24

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    :cond_24
    const/4 v4, 0x0

    :goto_f
    iget-boolean v5, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    if-eqz v5, :cond_25

    iget v5, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    sub-float v6, v8, v5

    iget v9, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    sub-float/2addr v9, v5

    mul-float/2addr v9, v6

    const/4 v5, 0x0

    cmpg-float v9, v9, v5

    if-gez v9, :cond_26

    cmpl-float v5, v6, v5

    if-lez v5, :cond_26

    const/4 v5, 0x0

    iput-boolean v5, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    const/4 v5, 0x1

    goto :goto_10

    :cond_25
    iget v5, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    sub-float v5, v8, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_26

    const/4 v5, 0x1

    iput-boolean v5, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    :cond_26
    const/4 v5, 0x0

    :goto_10
    iput v8, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    if-nez v4, :cond_27

    if-nez v3, :cond_27

    if-eqz v5, :cond_28

    :cond_27
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v6, :cond_28

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_28

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    invoke-interface {v9}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionTrigger()V

    goto :goto_11

    :cond_28
    iget v6, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    const/4 v9, -0x1

    if-ne v6, v9, :cond_29

    move-object v6, v7

    goto :goto_12

    :cond_29
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v9, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    :goto_12
    const-string v9, "Could not find method \""

    const-string v10, "Exception in call \""

    const-string v11, " "

    const-string v13, "\"on class "

    const-string v14, "KeyTrigger"

    if-eqz v4, :cond_2b

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    if-eqz v4, :cond_2b

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeCross:Ljava/lang/reflect/Method;

    if-nez v4, :cond_2a

    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v15, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 p1, v12

    const/4 v12, 0x0

    :try_start_1
    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v4, v15, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeCross:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_13

    :catch_0
    move/from16 p1, v12

    :catch_1
    invoke-static {v9}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v12, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_2a
    move/from16 p1, v12

    :goto_13
    :try_start_2
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeCross:Ljava/lang/reflect/Method;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_14

    :catch_2
    invoke-static {v10}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v12, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_2b
    move/from16 p1, v12

    :goto_14
    if-eqz v5, :cond_2d

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    if-eqz v4, :cond_2d

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveCross:Ljava/lang/reflect/Method;

    if-nez v4, :cond_2c

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveCross:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_15

    :catch_3
    invoke-static {v9}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_15
    :try_start_4
    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveCross:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_16

    :catch_4
    invoke-static {v10}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_16
    if-eqz v3, :cond_2f

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    if-eqz v3, :cond_2f

    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCross:Ljava/lang/reflect/Method;

    if-nez v3, :cond_2e

    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCross:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_17

    :catch_5
    invoke-static {v9}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_17
    :try_start_6
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCross:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_18

    :catch_6
    invoke-static {v10}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_18
    add-int/lit8 v1, v1, 0x1

    move/from16 v12, p1

    goto/16 :goto_d

    :cond_30
    move/from16 p1, v12

    move/from16 v12, p1

    goto :goto_19

    :cond_31
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    invoke-static {v4, v2, v8, v2}, Landroidx/constraintlayout/motion/widget/MotionController$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v2

    iget v4, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v5, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    invoke-static {v5, v4, v8, v4}, Landroidx/constraintlayout/motion/widget/MotionController$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v4

    iget v5, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v6, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    invoke-static {v6, v5, v8, v5}, Landroidx/constraintlayout/motion/widget/MotionController$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v9

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    invoke-static {v3, v1, v8, v1}, Landroidx/constraintlayout/motion/widget/MotionController$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v2, v11

    float-to-int v13, v2

    add-float/2addr v4, v11

    float-to-int v11, v4

    add-float/2addr v2, v9

    float-to-int v2, v2

    add-float/2addr v4, v10

    float-to-int v4, v4

    sub-int v9, v2, v13

    sub-int v10, v4, v11

    cmpl-float v5, v6, v5

    if-nez v5, :cond_32

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_33

    :cond_32
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v10, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v7, v3, v1}, Landroid/view/View;->measure(II)V

    :cond_33
    invoke-virtual {v7, v13, v11, v2, v4}, Landroid/view/View;->layout(IIII)V

    :goto_19
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    instance-of v3, v2, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;

    if-eqz v3, :cond_34

    check-cast v2, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    const/4 v6, 0x1

    aget-wide v9, v3, v6

    invoke-virtual {v2, v8}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->get(F)F

    move-result v2

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v7, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_1a

    :cond_34
    invoke-virtual {v2, v7, v8}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->setProperty(Landroid/view/View;F)V

    goto :goto_1a

    :cond_35
    return v12
.end method

.method public final readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    return-void
.end method

.method public final setup(IIJ)V
    .locals 43

    move-object/from16 v0, p0

    const-class v1, D

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput v6, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    :cond_0
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    iget v9, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    invoke-static {v8, v9}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v8

    const-string v9, "alpha"

    if-eqz v8, :cond_1

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    iget v10, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    invoke-static {v8, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v8

    const-string v10, "elevation"

    if-eqz v8, :cond_2

    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    iget v11, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    if-eq v8, v11, :cond_4

    iget v12, v6, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    if-nez v12, :cond_4

    if-eqz v8, :cond_3

    if-nez v11, :cond_4

    :cond_3
    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    iget v11, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    invoke-static {v8, v11}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v8

    const-string/jumbo v11, "rotation"

    if-eqz v8, :cond_5

    invoke-virtual {v3, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    const-string/jumbo v12, "transitionPathRotate"

    if-eqz v8, :cond_6

    iget v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    invoke-virtual {v3, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    const-string/jumbo v13, "progress"

    if-eqz v8, :cond_8

    iget v8, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_9

    :cond_8
    invoke-virtual {v3, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    iget v14, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    invoke-static {v8, v14}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v8

    const-string/jumbo v14, "rotationX"

    if-eqz v8, :cond_a

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    iget v15, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    invoke-static {v8, v15}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v8

    const-string/jumbo v15, "rotationY"

    if-eqz v8, :cond_b

    invoke-virtual {v3, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    iget v8, v6, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    move-object/from16 v16, v1

    iget v1, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    invoke-static {v8, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v1

    const-string/jumbo v8, "scaleX"

    if-eqz v1, :cond_c

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    iget v1, v6, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    move-object/from16 v17, v14

    iget v14, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    invoke-static {v1, v14}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v1

    const-string/jumbo v14, "scaleY"

    if-eqz v1, :cond_d

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    iget v1, v6, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    move-object/from16 v18, v15

    iget v15, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    invoke-static {v1, v15}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v1

    const-string/jumbo v15, "translationX"

    if-eqz v1, :cond_e

    invoke-virtual {v3, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    iget v1, v6, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    move-object/from16 v19, v15

    iget v15, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    invoke-static {v1, v15}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v1

    const-string/jumbo v15, "translationY"

    if-eqz v1, :cond_f

    invoke-virtual {v3, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f
    iget v1, v6, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    iget v6, v7, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    invoke-static {v1, v6}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    move-result v1

    const-string/jumbo v6, "translationZ"

    if-eqz v1, :cond_10

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v1

    move-object/from16 v1, v20

    check-cast v1, Landroidx/constraintlayout/motion/widget/Key;

    move-object/from16 v20, v15

    instance-of v15, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;

    if-eqz v15, :cond_12

    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyPosition;

    new-instance v15, Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v28, v6

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v29, v13

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object/from16 v22, v15

    move/from16 v23, p1

    move/from16 v24, p2

    move-object/from16 v25, v1

    move-object/from16 v26, v6

    move-object/from16 v27, v13

    invoke-direct/range {v22 .. v27}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-static {v6, v15}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_11

    const-string v13, " KeyPath positon \""

    invoke-static {v13}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v22, v8

    iget v8, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "\" outside of range"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v13, "MotionController"

    invoke-static {v13, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_11
    move-object/from16 v22, v8

    :goto_1
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    neg-int v6, v6

    const/4 v13, -0x1

    add-int/2addr v6, v13

    invoke-virtual {v8, v6, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v1, v1, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->mCurveFit:I

    if-eq v1, v13, :cond_17

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    goto :goto_2

    :cond_12
    move-object/from16 v28, v6

    move-object/from16 v22, v8

    move-object/from16 v29, v13

    instance-of v6, v1, Landroidx/constraintlayout/motion/widget/KeyCycle;

    if-eqz v6, :cond_13

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    goto :goto_2

    :cond_13
    instance-of v6, v1, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    if-eqz v6, :cond_14

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    goto :goto_2

    :cond_14
    instance-of v6, v1, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    if-eqz v6, :cond_16

    if-nez v7, :cond_15

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_15
    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_16
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/motion/widget/Key;->setInterpolation(Ljava/util/HashMap;)V

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    :cond_17
    :goto_2
    move-object/from16 v15, v20

    move-object/from16 v1, v21

    move-object/from16 v8, v22

    move-object/from16 v6, v28

    move-object/from16 v13, v29

    goto/16 :goto_0

    :cond_18
    move-object/from16 v28, v6

    move-object/from16 v22, v8

    move-object/from16 v29, v13

    move-object/from16 v20, v15

    goto :goto_3

    :cond_19
    move-object/from16 v28, v6

    move-object/from16 v22, v8

    move-object/from16 v29, v13

    move-object/from16 v20, v15

    const/4 v7, 0x0

    :goto_3
    const/4 v1, 0x0

    if-eqz v7, :cond_1a

    new-array v1, v1, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    :cond_1a
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    const-string/jumbo v6, "waveVariesBy"

    const-string v7, ","

    const-string/jumbo v13, "waveOffset"

    const-string v15, "CUSTOM,"

    const/16 v21, 0xb

    const/16 v23, 0xa

    const/16 v24, 0x9

    const/16 v25, 0x8

    const/16 v26, 0x5

    if-nez v1, :cond_30

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v8, v27

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1c

    move-object/from16 p2, v1

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    const/16 v30, 0x1

    aget-object v27, v27, v30

    move-object/from16 v27, v4

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroidx/constraintlayout/motion/widget/Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5

    :cond_1b
    new-instance v4, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;

    invoke-direct {v4, v8, v1}, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    move-object/from16 v1, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v3

    move-object v3, v4

    move-object/from16 v4, v29

    move-object/from16 v29, v13

    move-object/from16 v13, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v17

    goto/16 :goto_12

    :cond_1c
    move-object/from16 p2, v1

    move-object/from16 v27, v4

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_6
    move-object/from16 v1, v22

    move-object/from16 v4, v29

    :goto_7
    move-object/from16 v22, v6

    move-object/from16 v29, v13

    move-object/from16 v13, v20

    move-object/from16 v6, v28

    :goto_8
    move-object/from16 v28, v3

    move-object/from16 v3, v17

    :goto_9
    move-object/from16 v20, v19

    :goto_a
    move-object/from16 v19, v18

    goto/16 :goto_f

    :sswitch_0
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_6

    :cond_1d
    const/16 v1, 0xd

    goto :goto_b

    :sswitch_1
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_6

    :cond_1e
    const/16 v1, 0xc

    goto :goto_b

    :sswitch_2
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_6

    :cond_1f
    move/from16 v1, v21

    goto :goto_b

    :sswitch_3
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_6

    :cond_20
    move/from16 v1, v23

    goto :goto_b

    :sswitch_4
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_6

    :cond_21
    move/from16 v1, v24

    goto :goto_b

    :sswitch_5
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_6

    :cond_22
    move/from16 v1, v25

    goto :goto_b

    :sswitch_6
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_6

    :cond_23
    const/4 v1, 0x7

    :goto_b
    move-object/from16 v4, v29

    move-object/from16 v29, v13

    move-object/from16 v13, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v18

    move-object/from16 v42, v17

    move/from16 v17, v1

    move-object/from16 v1, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v3

    move-object/from16 v3, v42

    goto/16 :goto_10

    :sswitch_7
    move-object/from16 v1, v22

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v4, v29

    :goto_c
    move-object/from16 v28, v3

    move-object/from16 v29, v13

    move-object/from16 v3, v17

    move-object/from16 v13, v20

    goto :goto_9

    :cond_24
    const/4 v4, 0x6

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    move-object/from16 v28, v3

    move-object/from16 v3, v17

    move/from16 v17, v4

    move-object/from16 v4, v29

    move-object/from16 v29, v13

    move-object/from16 v13, v20

    goto/16 :goto_d

    :sswitch_8
    move-object/from16 v1, v22

    move-object/from16 v4, v29

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_25

    goto/16 :goto_7

    :cond_25
    move-object/from16 v22, v6

    move-object/from16 v29, v13

    move-object/from16 v13, v20

    move-object/from16 v6, v28

    move-object/from16 v28, v3

    move-object/from16 v3, v17

    move-object/from16 v20, v19

    move/from16 v17, v26

    goto/16 :goto_e

    :sswitch_9
    move-object/from16 v1, v22

    move-object/from16 v4, v29

    move-object/from16 v22, v6

    move-object/from16 v6, v28

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_26

    goto :goto_c

    :cond_26
    const/16 v28, 0x4

    move-object/from16 v29, v13

    move-object/from16 v13, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v18

    move/from16 v42, v28

    move-object/from16 v28, v3

    move-object/from16 v3, v17

    move/from16 v17, v42

    goto/16 :goto_10

    :sswitch_a
    move-object/from16 v1, v22

    move-object/from16 v4, v29

    move-object/from16 v22, v6

    move-object/from16 v29, v13

    move-object/from16 v13, v20

    move-object/from16 v6, v28

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_27

    goto/16 :goto_8

    :cond_27
    const/16 v20, 0x3

    move-object/from16 v28, v3

    move-object/from16 v3, v17

    move/from16 v17, v20

    :goto_d
    move-object/from16 v20, v19

    goto :goto_e

    :sswitch_b
    move-object/from16 v1, v22

    move-object/from16 v4, v29

    move-object/from16 v22, v6

    move-object/from16 v29, v13

    move-object/from16 v13, v20

    move-object/from16 v6, v28

    move-object/from16 v28, v3

    move-object/from16 v3, v19

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_28

    move-object/from16 v20, v3

    move-object/from16 v3, v17

    goto/16 :goto_a

    :cond_28
    const/16 v19, 0x2

    move-object/from16 v20, v3

    move-object/from16 v3, v17

    move/from16 v17, v19

    :goto_e
    move-object/from16 v19, v18

    goto :goto_10

    :sswitch_c
    move-object/from16 v1, v22

    move-object/from16 v4, v29

    move-object/from16 v22, v6

    move-object/from16 v29, v13

    move-object/from16 v13, v20

    move-object/from16 v6, v28

    move-object/from16 v28, v3

    move-object/from16 v3, v18

    move-object/from16 v20, v19

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_29

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    goto :goto_f

    :cond_29
    const/16 v18, 0x1

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    move/from16 v17, v18

    goto :goto_10

    :sswitch_d
    move-object/from16 v1, v22

    move-object/from16 v4, v29

    move-object/from16 v22, v6

    move-object/from16 v29, v13

    move-object/from16 v13, v20

    move-object/from16 v6, v28

    move-object/from16 v28, v3

    move-object/from16 v3, v17

    move-object/from16 v20, v19

    move-object/from16 v19, v18

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2a

    goto :goto_f

    :cond_2a
    const/16 v17, 0x0

    goto :goto_10

    :goto_f
    const/16 v17, -0x1

    :goto_10
    packed-switch v17, :pswitch_data_0

    const/16 v17, 0x0

    goto :goto_11

    :pswitch_0
    new-instance v17, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;-><init>()V

    goto :goto_11

    :pswitch_1
    new-instance v17, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;-><init>()V

    goto :goto_11

    :pswitch_2
    new-instance v17, Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;-><init>()V

    goto :goto_11

    :pswitch_3
    new-instance v17, Landroidx/constraintlayout/motion/widget/SplineSet$ElevationSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/SplineSet$ElevationSet;-><init>()V

    goto :goto_11

    :pswitch_4
    new-instance v17, Landroidx/constraintlayout/motion/widget/SplineSet$RotationSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/SplineSet$RotationSet;-><init>()V

    goto :goto_11

    :pswitch_5
    new-instance v17, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;-><init>()V

    goto :goto_11

    :pswitch_6
    new-instance v17, Landroidx/constraintlayout/motion/widget/SplineSet$ScaleYset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/SplineSet$ScaleYset;-><init>()V

    goto :goto_11

    :pswitch_7
    new-instance v17, Landroidx/constraintlayout/motion/widget/SplineSet$ScaleXset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/SplineSet$ScaleXset;-><init>()V

    goto :goto_11

    :pswitch_8
    new-instance v17, Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;-><init>()V

    goto :goto_11

    :pswitch_9
    new-instance v17, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationZset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationZset;-><init>()V

    goto :goto_11

    :pswitch_a
    new-instance v17, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationYset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationYset;-><init>()V

    goto :goto_11

    :pswitch_b
    new-instance v17, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationXset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationXset;-><init>()V

    goto :goto_11

    :pswitch_c
    new-instance v17, Landroidx/constraintlayout/motion/widget/SplineSet$RotationYset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/SplineSet$RotationYset;-><init>()V

    goto :goto_11

    :pswitch_d
    new-instance v17, Landroidx/constraintlayout/motion/widget/SplineSet$RotationXset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/SplineSet$RotationXset;-><init>()V

    :goto_11
    move-object/from16 v18, v3

    move-object/from16 v3, v17

    :goto_12
    if-nez v3, :cond_2b

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v3, v28

    move-object/from16 v28, v6

    move-object/from16 v20, v13

    move-object/from16 v6, v22

    move-object/from16 v13, v29

    move-object/from16 v22, v1

    move-object/from16 v29, v4

    move-object/from16 v4, v27

    move-object/from16 v1, p2

    goto/16 :goto_4

    :cond_2b
    iput-object v8, v3, Landroidx/constraintlayout/motion/widget/SplineSet;->mType:Ljava/lang/String;

    move-object/from16 v17, v13

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v13, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v28

    move-object/from16 v13, v29

    move-object/from16 v29, v4

    move-object/from16 v28, v6

    move-object/from16 v6, v22

    move-object/from16 v4, v27

    move-object/from16 v22, v1

    move-object/from16 v1, p2

    move-object/from16 v42, v20

    move-object/from16 v20, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v42

    goto/16 :goto_4

    :cond_2c
    move-object/from16 v27, v4

    move-object/from16 v1, v22

    move-object/from16 v4, v29

    move-object/from16 v22, v6

    move-object/from16 v29, v13

    move-object/from16 v6, v28

    move-object/from16 v28, v3

    move-object/from16 v42, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v42

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2d
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/Key;

    instance-of v13, v8, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    if-eqz v13, :cond_2d

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v8, v13}, Landroidx/constraintlayout/motion/widget/Key;->addValues(Ljava/util/HashMap;)V

    goto :goto_13

    :cond_2e
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const/4 v13, 0x0

    invoke-virtual {v3, v8, v13}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const/16 v13, 0x64

    invoke-virtual {v3, v8, v13}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2f

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_15

    :cond_2f
    const/4 v13, 0x0

    :goto_15
    move-object/from16 p2, v3

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/SplineSet;

    invoke-virtual {v3, v13}, Landroidx/constraintlayout/motion/widget/SplineSet;->setup(I)V

    move-object/from16 v3, p2

    goto :goto_14

    :cond_30
    move-object/from16 v27, v4

    move-object/from16 v1, v22

    move-object/from16 v4, v29

    move-object/from16 v22, v6

    move-object/from16 v29, v13

    move-object/from16 v6, v28

    move-object/from16 v28, v3

    move-object/from16 v42, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v42

    :cond_31
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    const-string v8, "CUSTOM"

    if-nez v3, :cond_56

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    if-nez v3, :cond_32

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    :cond_32
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    goto :goto_16

    :cond_33
    invoke-virtual {v3, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_35

    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    aget-object v30, v30, v31

    move-object/from16 p2, v2

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroidx/constraintlayout/motion/widget/Key;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_17

    :cond_34
    new-instance v2, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;

    invoke-direct {v2, v3, v13}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    move-object/from16 v30, v19

    move-object/from16 v13, v20

    move-object/from16 v20, v7

    move-object/from16 v19, v15

    move-object/from16 v15, v18

    move-object/from16 v18, v5

    move-object v5, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v6

    move-wide/from16 v6, p3

    goto/16 :goto_24

    :cond_35
    move-object/from16 p2, v2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    :goto_18
    move-object/from16 v2, v17

    :goto_19
    move-object/from16 v13, v20

    :goto_1a
    move-object/from16 v20, v7

    move-object/from16 v7, v19

    :goto_1b
    move-object/from16 v19, v15

    move-object/from16 v15, v18

    goto/16 :goto_21

    :sswitch_e
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_18

    :cond_36
    move/from16 v2, v21

    goto :goto_1d

    :sswitch_f
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    goto :goto_18

    :cond_37
    move/from16 v2, v23

    goto :goto_1d

    :sswitch_10
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_18

    :cond_38
    move/from16 v2, v24

    goto :goto_1d

    :sswitch_11
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto :goto_18

    :cond_39
    move/from16 v2, v25

    goto :goto_1d

    :sswitch_12
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_18

    :cond_3a
    const/4 v2, 0x7

    goto :goto_1c

    :sswitch_13
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    goto :goto_18

    :cond_3b
    const/4 v2, 0x6

    goto :goto_1c

    :sswitch_14
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_18

    :cond_3c
    move/from16 v2, v26

    :goto_1c
    move-object/from16 v13, v20

    move-object/from16 v42, v17

    move/from16 v17, v2

    move-object/from16 v2, v42

    goto :goto_1f

    :sswitch_15
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    goto :goto_18

    :cond_3d
    const/4 v2, 0x4

    :goto_1d
    move v13, v2

    move-object/from16 v2, v17

    goto :goto_1e

    :sswitch_16
    move-object/from16 v2, v17

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3e

    goto :goto_19

    :cond_3e
    const/4 v13, 0x3

    :goto_1e
    move/from16 v17, v13

    move-object/from16 v13, v20

    goto :goto_1f

    :sswitch_17
    move-object/from16 v2, v17

    move-object/from16 v13, v20

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3f

    goto :goto_1a

    :cond_3f
    const/16 v17, 0x2

    :goto_1f
    move-object/from16 v20, v7

    move-object/from16 v7, v19

    goto :goto_20

    :sswitch_18
    move-object/from16 v2, v17

    move-object/from16 v13, v20

    move-object/from16 v20, v7

    move-object/from16 v7, v19

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_40

    goto/16 :goto_1b

    :cond_40
    const/16 v17, 0x1

    :goto_20
    move-object/from16 v19, v15

    move-object/from16 v15, v18

    goto :goto_22

    :sswitch_19
    move-object/from16 v2, v17

    move-object/from16 v13, v20

    move-object/from16 v20, v7

    move-object/from16 v7, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v18

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_41

    goto :goto_21

    :cond_41
    const/16 v17, 0x0

    goto :goto_22

    :goto_21
    const/16 v17, -0x1

    :goto_22
    packed-switch v17, :pswitch_data_1

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v30, v7

    move-wide/from16 v6, p3

    const/4 v5, 0x0

    goto :goto_24

    :pswitch_e
    new-instance v17, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$AlphaSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$AlphaSet;-><init>()V

    goto :goto_23

    :pswitch_f
    new-instance v17, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;-><init>()V

    goto :goto_23

    :pswitch_10
    new-instance v17, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ElevationSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ElevationSet;-><init>()V

    goto :goto_23

    :pswitch_11
    new-instance v17, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationSet;-><init>()V

    goto :goto_23

    :pswitch_12
    new-instance v17, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleYset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleYset;-><init>()V

    goto :goto_23

    :pswitch_13
    new-instance v17, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleXset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleXset;-><init>()V

    goto :goto_23

    :pswitch_14
    new-instance v17, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet;-><init>()V

    goto :goto_23

    :pswitch_15
    new-instance v17, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationZset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationZset;-><init>()V

    goto :goto_23

    :pswitch_16
    new-instance v17, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationYset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationYset;-><init>()V

    goto :goto_23

    :pswitch_17
    new-instance v17, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationXset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationXset;-><init>()V

    goto :goto_23

    :pswitch_18
    new-instance v17, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationYset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationYset;-><init>()V

    goto :goto_23

    :pswitch_19
    new-instance v17, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationXset;

    invoke-direct/range {v17 .. v17}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationXset;-><init>()V

    :goto_23
    move-object/from16 v18, v5

    move-object/from16 v30, v7

    move-object/from16 v5, v17

    move-object/from16 v17, v6

    move-wide/from16 v6, p3

    iput-wide v6, v5, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->last_time:J

    :goto_24
    if-nez v5, :cond_42

    goto :goto_25

    :cond_42
    iput-object v3, v5, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->mType:Ljava/lang/String;

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_25
    move-object/from16 v6, v17

    move-object/from16 v5, v18

    move-object/from16 v7, v20

    move-object/from16 v17, v2

    move-object/from16 v20, v13

    move-object/from16 v18, v15

    move-object/from16 v15, v19

    move-object/from16 v19, v30

    move-object/from16 v2, p2

    goto/16 :goto_16

    :cond_43
    move-object/from16 v2, v17

    move-object/from16 v30, v19

    move-object/from16 v13, v20

    move-object/from16 v17, v6

    move-object/from16 v19, v15

    move-object/from16 v15, v18

    move-object/from16 v18, v5

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v3, :cond_54

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/Key;

    instance-of v6, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    if-eqz v6, :cond_53

    check-cast v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_27
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_53

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 p2, v3

    move-object/from16 v3, v20

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v31, v20

    check-cast v31, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_52

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_2

    :goto_28
    move-object/from16 v20, v6

    move-object/from16 p3, v7

    move-object/from16 v6, v17

    goto/16 :goto_2c

    :sswitch_1a
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_44

    goto :goto_28

    :cond_44
    move/from16 v20, v21

    goto :goto_2a

    :sswitch_1b
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_45

    goto :goto_28

    :cond_45
    move/from16 v20, v23

    goto :goto_2a

    :sswitch_1c
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_46

    goto :goto_28

    :cond_46
    move/from16 v20, v24

    goto :goto_2a

    :sswitch_1d
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_47

    goto :goto_29

    :cond_47
    move/from16 v20, v25

    goto :goto_2a

    :sswitch_1e
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_48

    goto :goto_28

    :cond_48
    const/16 v20, 0x7

    goto :goto_2a

    :sswitch_1f
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_49

    :goto_29
    goto :goto_28

    :cond_49
    const/16 v20, 0x6

    :goto_2a
    move-object/from16 p3, v7

    move-object/from16 v7, v30

    move/from16 v42, v20

    move-object/from16 v20, v6

    move-object/from16 v6, v17

    move/from16 v17, v42

    goto/16 :goto_30

    :sswitch_20
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4a

    goto :goto_28

    :cond_4a
    move-object/from16 v20, v6

    move-object/from16 p3, v7

    move-object/from16 v6, v17

    move/from16 v17, v26

    goto :goto_2e

    :sswitch_21
    move-object/from16 v20, v6

    move-object/from16 v6, v17

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4b

    goto :goto_2b

    :cond_4b
    const/16 v17, 0x4

    goto :goto_2d

    :sswitch_22
    move-object/from16 v20, v6

    move-object/from16 v6, v17

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4c

    goto :goto_2b

    :cond_4c
    const/16 v17, 0x3

    goto :goto_2d

    :sswitch_23
    move-object/from16 v20, v6

    move-object/from16 v6, v17

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4d

    :goto_2b
    move-object/from16 p3, v7

    :goto_2c
    move-object/from16 v7, v30

    goto :goto_2f

    :cond_4d
    const/16 v17, 0x2

    :goto_2d
    move-object/from16 p3, v7

    :goto_2e
    move-object/from16 v7, v30

    goto :goto_30

    :sswitch_24
    move-object/from16 v20, v6

    move-object/from16 p3, v7

    move-object/from16 v6, v17

    move-object/from16 v7, v30

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4e

    goto :goto_2f

    :cond_4e
    const/16 v17, 0x1

    goto :goto_30

    :sswitch_25
    move-object/from16 v20, v6

    move-object/from16 p3, v7

    move-object/from16 v6, v17

    move-object/from16 v7, v30

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4f

    goto :goto_2f

    :cond_4f
    const/16 v17, 0x0

    goto :goto_30

    :goto_2f
    const/16 v17, -0x1

    :goto_30
    packed-switch v17, :pswitch_data_2

    move-object/from16 v38, v2

    move-object/from16 v30, v7

    move-object/from16 v37, v13

    move-object/from16 v17, v15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UNKNOWN addValues \""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyTimeCycles"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    :pswitch_1a
    iget v3, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_50

    iget v3, v5, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    move-object/from16 v17, v15

    iget v15, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    move-object/from16 v30, v7

    iget v7, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    move-object/from16 v37, v13

    iget v13, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    move-object/from16 v38, v2

    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v32, v15

    move/from16 v33, v7

    move/from16 v34, v2

    move/from16 v35, v3

    move/from16 v36, v13

    invoke-virtual/range {v31 .. v36}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setPoint$1(FFFII)V

    goto/16 :goto_31

    :cond_50
    move-object/from16 v38, v2

    move-object/from16 v30, v7

    move-object/from16 v37, v13

    move-object/from16 v17, v15

    goto/16 :goto_31

    :pswitch_1b
    move-object/from16 v38, v2

    move-object/from16 v30, v7

    move-object/from16 v37, v13

    move-object/from16 v17, v15

    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_51

    iget v2, v5, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v3, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    iget v7, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v15, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v32, v3

    move/from16 v33, v7

    move/from16 v34, v15

    move/from16 v35, v2

    move/from16 v36, v13

    invoke-virtual/range {v31 .. v36}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setPoint$1(FFFII)V

    goto/16 :goto_31

    :pswitch_1c
    move-object/from16 v38, v2

    move-object/from16 v30, v7

    move-object/from16 v37, v13

    move-object/from16 v17, v15

    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_51

    iget v2, v5, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v3, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    iget v7, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v15, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v32, v3

    move/from16 v33, v7

    move/from16 v34, v15

    move/from16 v35, v2

    move/from16 v36, v13

    invoke-virtual/range {v31 .. v36}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setPoint$1(FFFII)V

    goto/16 :goto_31

    :pswitch_1d
    move-object/from16 v38, v2

    move-object/from16 v30, v7

    move-object/from16 v37, v13

    move-object/from16 v17, v15

    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_51

    iget v2, v5, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v3, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    iget v7, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v15, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v32, v3

    move/from16 v33, v7

    move/from16 v34, v15

    move/from16 v35, v2

    move/from16 v36, v13

    invoke-virtual/range {v31 .. v36}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setPoint$1(FFFII)V

    goto/16 :goto_31

    :pswitch_1e
    move-object/from16 v38, v2

    move-object/from16 v30, v7

    move-object/from16 v37, v13

    move-object/from16 v17, v15

    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_51

    iget v2, v5, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v3, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    iget v7, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v15, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v32, v3

    move/from16 v33, v7

    move/from16 v34, v15

    move/from16 v35, v2

    move/from16 v36, v13

    invoke-virtual/range {v31 .. v36}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setPoint$1(FFFII)V

    goto/16 :goto_31

    :pswitch_1f
    move-object/from16 v38, v2

    move-object/from16 v30, v7

    move-object/from16 v37, v13

    move-object/from16 v17, v15

    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_51

    iget v2, v5, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v3, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    iget v7, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v15, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v32, v3

    move/from16 v33, v7

    move/from16 v34, v15

    move/from16 v35, v2

    move/from16 v36, v13

    invoke-virtual/range {v31 .. v36}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setPoint$1(FFFII)V

    goto/16 :goto_31

    :pswitch_20
    move-object/from16 v38, v2

    move-object/from16 v30, v7

    move-object/from16 v37, v13

    move-object/from16 v17, v15

    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_51

    iget v2, v5, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v3, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    iget v7, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v15, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v32, v3

    move/from16 v33, v7

    move/from16 v34, v15

    move/from16 v35, v2

    move/from16 v36, v13

    invoke-virtual/range {v31 .. v36}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setPoint$1(FFFII)V

    goto/16 :goto_31

    :pswitch_21
    move-object/from16 v38, v2

    move-object/from16 v30, v7

    move-object/from16 v37, v13

    move-object/from16 v17, v15

    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_51

    iget v2, v5, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v3, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    iget v7, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v15, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v32, v3

    move/from16 v33, v7

    move/from16 v34, v15

    move/from16 v35, v2

    move/from16 v36, v13

    invoke-virtual/range {v31 .. v36}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setPoint$1(FFFII)V

    goto/16 :goto_31

    :pswitch_22
    move-object/from16 v38, v2

    move-object/from16 v30, v7

    move-object/from16 v37, v13

    move-object/from16 v17, v15

    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_51

    iget v2, v5, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v3, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    iget v7, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v15, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v32, v3

    move/from16 v33, v7

    move/from16 v34, v15

    move/from16 v35, v2

    move/from16 v36, v13

    invoke-virtual/range {v31 .. v36}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setPoint$1(FFFII)V

    goto/16 :goto_31

    :pswitch_23
    move-object/from16 v38, v2

    move-object/from16 v30, v7

    move-object/from16 v37, v13

    move-object/from16 v17, v15

    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_51

    iget v2, v5, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v3, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    iget v7, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v15, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v32, v3

    move/from16 v33, v7

    move/from16 v34, v15

    move/from16 v35, v2

    move/from16 v36, v13

    invoke-virtual/range {v31 .. v36}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setPoint$1(FFFII)V

    goto :goto_31

    :pswitch_24
    move-object/from16 v38, v2

    move-object/from16 v30, v7

    move-object/from16 v37, v13

    move-object/from16 v17, v15

    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_51

    iget v2, v5, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v3, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    iget v7, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v15, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v32, v3

    move/from16 v33, v7

    move/from16 v34, v15

    move/from16 v35, v2

    move/from16 v36, v13

    invoke-virtual/range {v31 .. v36}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setPoint$1(FFFII)V

    goto :goto_31

    :pswitch_25
    move-object/from16 v38, v2

    move-object/from16 v30, v7

    move-object/from16 v37, v13

    move-object/from16 v17, v15

    iget v2, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_51

    iget v2, v5, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v3, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    iget v7, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    iget v13, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    iget v15, v5, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    move/from16 v32, v3

    move/from16 v33, v7

    move/from16 v34, v15

    move/from16 v35, v2

    move/from16 v36, v13

    invoke-virtual/range {v31 .. v36}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setPoint$1(FFFII)V

    :cond_51
    :goto_31
    move-object/from16 v3, p2

    move-object/from16 v7, p3

    move-object/from16 v15, v17

    move-object/from16 v13, v37

    move-object/from16 v2, v38

    move-object/from16 v17, v6

    move-object/from16 v6, v20

    goto/16 :goto_27

    :cond_52
    const/4 v0, 0x7

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    const/4 v0, 0x0

    throw v0

    :cond_53
    move-object/from16 v38, v2

    move-object/from16 p2, v3

    move-object/from16 v37, v13

    move-object/from16 v6, v17

    move-object/from16 v17, v15

    move-object/from16 v3, p2

    move-object/from16 v15, v17

    move-object/from16 v13, v37

    move-object/from16 v2, v38

    move-object/from16 v17, v6

    goto/16 :goto_26

    :cond_54
    move-object/from16 v38, v2

    move-object/from16 v37, v13

    move-object/from16 v6, v17

    move-object/from16 v17, v15

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v5, v18

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_33

    :cond_55
    const/4 v7, 0x0

    :goto_33
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;

    invoke-virtual {v3, v7}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setup(I)V

    move-object/from16 v18, v5

    goto :goto_32

    :cond_56
    move-object/from16 v38, v17

    move-object/from16 v17, v18

    move-object/from16 v30, v19

    move-object/from16 v37, v20

    move-object/from16 v19, v15

    :cond_57
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    new-array v3, v2, [Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/4 v7, 0x0

    aput-object v5, v3, v7

    add-int/lit8 v5, v2, -0x1

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    aput-object v13, v3, v5

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_58

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    const/4 v13, -0x1

    if-ne v5, v13, :cond_58

    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    :cond_58
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x1

    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_59

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/motion/widget/MotionPaths;

    add-int/lit8 v15, v7, 0x1

    aput-object v13, v3, v7

    move v7, v15

    goto :goto_34

    :cond_59
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_35
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v15, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v15, v13}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5a

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p2, v7

    move-object/from16 v7, v19

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v7, v28

    invoke-virtual {v7, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5b

    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_5a
    move-object/from16 p2, v7

    move-object/from16 v7, v28

    :cond_5b
    :goto_36
    move-object/from16 v28, v7

    move-object/from16 v7, p2

    goto :goto_35

    :cond_5c
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v5, v5

    new-array v5, v5, [I

    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpCount:[I

    const/4 v5, 0x0

    :goto_37
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v13, v7

    if-ge v5, v13, :cond_5f

    aget-object v7, v7, v5

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpCount:[I

    const/4 v15, 0x0

    aput v15, v13, v5

    const/4 v13, 0x0

    :goto_38
    if-ge v13, v2, :cond_5e

    aget-object v15, v3, v13

    iget-object v15, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v15, v7}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5d

    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpCount:[I

    aget v18, v15, v5

    aget-object v13, v3, v13

    iget-object v13, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v7

    add-int v7, v7, v18

    aput v7, v15, v5

    goto :goto_39

    :cond_5d
    add-int/lit8 v13, v13, 0x1

    goto :goto_38

    :cond_5e
    :goto_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    :cond_5f
    const/4 v5, 0x0

    aget-object v5, v3, v5

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    const/4 v13, -0x1

    if-eq v5, v13, :cond_60

    const/4 v5, 0x1

    goto :goto_3a

    :cond_60
    const/4 v5, 0x0

    :goto_3a
    array-length v7, v7

    add-int/lit8 v7, v7, 0x12

    new-array v13, v7, [Z

    const/4 v15, 0x1

    :goto_3b
    if-ge v15, v2, :cond_61

    move-object/from16 v28, v6

    aget-object v6, v3, v15

    add-int/lit8 v18, v15, -0x1

    move-object/from16 v19, v4

    aget-object v4, v3, v18

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v18, 0x0

    aget-boolean v20, v13, v18

    move-object/from16 v31, v1

    iget v1, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    move-object/from16 v32, v14

    iget v14, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    invoke-static {v1, v14}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v1

    or-int v1, v20, v1

    aput-boolean v1, v13, v18

    const/4 v1, 0x1

    aget-boolean v1, v13, v1

    iget v14, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    move-object/from16 v18, v11

    iget v11, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    invoke-static {v14, v11}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v11

    or-int/2addr v11, v5

    or-int/2addr v1, v11

    const/4 v11, 0x1

    aput-boolean v1, v13, v11

    const/4 v1, 0x2

    aget-boolean v1, v13, v1

    iget v11, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v14, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    invoke-static {v11, v14}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v11

    or-int/2addr v11, v5

    or-int/2addr v1, v11

    const/4 v11, 0x2

    aput-boolean v1, v13, v11

    const/4 v1, 0x3

    aget-boolean v1, v13, v1

    iget v11, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v14, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    invoke-static {v11, v14}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v11

    or-int/2addr v1, v11

    const/4 v11, 0x3

    aput-boolean v1, v13, v11

    const/4 v1, 0x4

    aget-boolean v11, v13, v1

    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    invoke-static {v6, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v4

    or-int/2addr v4, v11

    aput-boolean v4, v13, v1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    move-object/from16 v6, v28

    move-object/from16 v1, v31

    move-object/from16 v14, v32

    goto :goto_3b

    :cond_61
    move-object/from16 v31, v1

    move-object/from16 v19, v4

    move-object/from16 v28, v6

    move-object/from16 v18, v11

    move-object/from16 v32, v14

    const/4 v1, 0x0

    const/4 v4, 0x1

    :goto_3c
    if-ge v4, v7, :cond_63

    aget-boolean v5, v13, v4

    if-eqz v5, :cond_62

    add-int/lit8 v1, v1, 0x1

    :cond_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_63
    new-array v4, v1, [I

    iput-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    new-array v4, v1, [D

    iput-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    new-array v1, v1, [D

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    const/4 v1, 0x0

    const/4 v4, 0x1

    :goto_3d
    if-ge v4, v7, :cond_65

    aget-boolean v5, v13, v4

    if-eqz v5, :cond_64

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    add-int/lit8 v6, v1, 0x1

    aput v4, v5, v1

    move v1, v6

    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    :cond_65
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    array-length v1, v1

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v1, v4, v5

    const/4 v1, 0x0

    aput v2, v4, v1

    move-object/from16 v5, v16

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    new-array v6, v2, [D

    move v7, v1

    :goto_3e
    if-ge v1, v2, :cond_68

    aget-object v11, v3, v1

    aget-object v13, v4, v1

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    const/4 v15, 0x6

    new-array v15, v15, [F

    move-object/from16 v16, v10

    iget v10, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    aput v10, v15, v7

    iget v7, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    const/4 v10, 0x1

    aput v7, v15, v10

    iget v7, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    const/4 v10, 0x2

    aput v7, v15, v10

    iget v7, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    const/4 v10, 0x3

    aput v7, v15, v10

    iget v7, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    const/4 v10, 0x4

    aput v7, v15, v10

    iget v7, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    aput v7, v15, v26

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_3f
    array-length v11, v14

    if-ge v7, v11, :cond_67

    aget v11, v14, v7

    move-object/from16 v20, v14

    const/4 v14, 0x6

    if-ge v11, v14, :cond_66

    add-int/lit8 v14, v10, 0x1

    aget v11, v15, v11

    move/from16 p2, v14

    move-object/from16 v33, v15

    float-to-double v14, v11

    aput-wide v14, v13, v10

    move/from16 v10, p2

    goto :goto_40

    :cond_66
    move-object/from16 v33, v15

    :goto_40
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v14, v20

    move-object/from16 v15, v33

    goto :goto_3f

    :cond_67
    aget-object v7, v3, v1

    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    float-to-double v10, v7

    aput-wide v10, v6, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x0

    move-object/from16 v10, v16

    goto :goto_3e

    :cond_68
    move-object/from16 v16, v10

    const/4 v10, 0x0

    :goto_41
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    array-length v13, v11

    if-ge v10, v13, :cond_6a

    aget v11, v11, v10

    sget-object v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    const/4 v14, 0x6

    if-ge v11, v14, :cond_69

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    aget v14, v14, v10

    aget-object v13, v13, v14

    const-string v14, " ["

    invoke-static {v11, v13, v14}, Landroidx/constraintlayout/motion/widget/MotionController$$ExternalSyntheticOutline1;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    :goto_42
    if-ge v13, v2, :cond_69

    invoke-static {v11}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v14, v4, v13

    aget-wide v14, v14, v10

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v13, v13, 0x1

    goto :goto_42

    :cond_69
    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    :cond_6a
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    new-array v10, v10, [Landroidx/constraintlayout/motion/utils/CurveFit;

    iput-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v10, 0x0

    :goto_43
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v13, v11

    if-ge v10, v13, :cond_70

    aget-object v11, v11, v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    move/from16 v1, v20

    :goto_44
    if-ge v15, v2, :cond_6f

    aget-object v7, v3, v15

    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v11}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6e

    if-nez v14, :cond_6b

    new-array v13, v2, [D

    aget-object v7, v3, v15

    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v7

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/16 v20, 0x1

    aput v7, v14, v20

    const/4 v7, 0x0

    aput v2, v14, v7

    invoke-static {v5, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, [[D

    :cond_6b
    aget-object v7, v3, v15

    move-object/from16 v20, v12

    iget v12, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move-object/from16 v34, v8

    move-object/from16 v33, v9

    float-to-double v8, v12

    aput-wide v8, v13, v1

    aget-object v8, v14, v1

    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v9

    const/4 v12, 0x1

    if-ne v9, v12, :cond_6d

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    move-result v7

    move-object/from16 p4, v11

    float-to-double v11, v7

    const/4 v7, 0x0

    aput-wide v11, v8, v7

    :cond_6c
    move-object/from16 v39, v13

    move-object/from16 v40, v14

    goto :goto_46

    :cond_6d
    move-object/from16 p4, v11

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v9

    new-array v11, v9, [F

    invoke-virtual {v7, v11}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    const/4 v7, 0x0

    const/4 v12, 0x0

    :goto_45
    if-ge v7, v9, :cond_6c

    add-int/lit8 v35, v12, 0x1

    move/from16 v36, v9

    aget v9, v11, v7

    move-object/from16 v39, v13

    move-object/from16 v40, v14

    float-to-double v13, v9

    aput-wide v13, v8, v12

    add-int/lit8 v7, v7, 0x1

    move/from16 v12, v35

    move/from16 v9, v36

    move-object/from16 v13, v39

    move-object/from16 v14, v40

    goto :goto_45

    :goto_46
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v13, v39

    move-object/from16 v14, v40

    goto :goto_47

    :cond_6e
    move-object/from16 v34, v8

    move-object/from16 v33, v9

    move-object/from16 p4, v11

    move-object/from16 v20, v12

    :goto_47
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, p4

    move-object/from16 v12, v20

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    goto/16 :goto_44

    :cond_6f
    move-object/from16 v34, v8

    move-object/from16 v33, v9

    move-object/from16 v20, v12

    invoke-static {v13, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v7

    invoke-static {v14, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    add-int/lit8 v10, v10, 0x1

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    invoke-static {v9, v7, v1}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v1

    aput-object v1, v8, v10

    move-object/from16 v9, v33

    move-object/from16 v8, v34

    goto/16 :goto_43

    :cond_70
    move-object/from16 v34, v8

    move-object/from16 v33, v9

    move-object/from16 v20, v12

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    invoke-static {v7, v6, v4}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v1, v6

    aget-object v1, v3, v6

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_72

    new-array v1, v2, [I

    new-array v4, v2, [D

    const/4 v7, 0x2

    new-array v8, v7, [I

    const/4 v9, 0x1

    aput v7, v8, v9

    aput v2, v8, v6

    invoke-static {v5, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    const/4 v6, 0x0

    :goto_48
    if-ge v6, v2, :cond_71

    aget-object v7, v3, v6

    iget v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    aput v8, v1, v6

    iget v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    float-to-double v8, v8

    aput-wide v8, v4, v6

    aget-object v8, v5, v6

    iget v9, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    float-to-double v9, v9

    const/4 v11, 0x0

    aput-wide v9, v8, v11

    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    float-to-double v9, v7

    const/4 v7, 0x1

    aput-wide v9, v8, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    :cond_71
    new-instance v2, Landroidx/constraintlayout/motion/utils/ArcCurveFit;

    invoke-direct {v2, v1, v4, v5}, Landroidx/constraintlayout/motion/utils/ArcCurveFit;-><init>([I[D[[D)V

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/ArcCurveFit;

    :cond_72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v1, :cond_9f

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/high16 v2, 0x7fc00000    # Float.NaN

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v4, v34

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    new-instance v5, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet;

    invoke-direct {v5}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet;-><init>()V

    move-object/from16 p4, v1

    move-object v10, v5

    move-object/from16 v8, v16

    move-object/from16 v9, v18

    move-object/from16 v13, v19

    move-object/from16 v7, v20

    move-object/from16 v14, v28

    move-object/from16 v5, v29

    move-object/from16 v18, v30

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    move-object/from16 v6, v33

    move-object/from16 v1, v37

    move-object/from16 v15, v38

    goto/16 :goto_5c

    :cond_73
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_3

    move-object/from16 p4, v1

    move-object/from16 v8, v16

    move-object/from16 v10, v17

    move-object/from16 v9, v18

    move-object/from16 v13, v19

    move-object/from16 v7, v20

    move-object/from16 v14, v28

    move-object/from16 v5, v29

    move-object/from16 v18, v30

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    move-object/from16 v6, v33

    :goto_4a
    move-object/from16 v1, v37

    move-object/from16 v15, v38

    goto/16 :goto_59

    :sswitch_26
    move-object/from16 v5, v29

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_74

    move-object/from16 v6, v33

    goto :goto_4b

    :cond_74
    const/16 v6, 0xd

    move v7, v6

    move-object/from16 v6, v33

    goto :goto_4d

    :sswitch_27
    move-object/from16 v5, v29

    move-object/from16 v6, v33

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_75

    :goto_4b
    move-object/from16 p4, v1

    move-object/from16 v8, v16

    move-object/from16 v10, v17

    move-object/from16 v9, v18

    move-object/from16 v13, v19

    move-object/from16 v7, v20

    :goto_4c
    move-object/from16 v14, v28

    move-object/from16 v18, v30

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    goto :goto_4a

    :cond_75
    const/16 v7, 0xc

    :goto_4d
    move-object/from16 p4, v1

    move-object/from16 v8, v16

    move-object/from16 v10, v17

    move-object/from16 v9, v18

    move-object/from16 v13, v19

    move-object/from16 v14, v28

    move-object/from16 v18, v30

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    move-object/from16 v1, v37

    move-object/from16 v15, v38

    move/from16 v16, v7

    move-object/from16 v7, v20

    goto/16 :goto_5a

    :sswitch_28
    move-object/from16 v7, v20

    move-object/from16 v5, v29

    move-object/from16 v6, v33

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_76

    move-object/from16 p4, v1

    move-object/from16 v8, v16

    move-object/from16 v10, v17

    move-object/from16 v9, v18

    move-object/from16 v13, v19

    goto :goto_4c

    :cond_76
    move-object/from16 v8, v16

    move-object/from16 v9, v18

    move-object/from16 v13, v19

    move/from16 v14, v21

    move-object/from16 v10, v22

    :goto_4e
    move-object/from16 v12, v31

    move-object/from16 v11, v32

    goto/16 :goto_56

    :sswitch_29
    move-object/from16 v8, v16

    move-object/from16 v7, v20

    move-object/from16 v5, v29

    move-object/from16 v6, v33

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_77

    move-object/from16 v9, v18

    goto :goto_4f

    :cond_77
    move-object/from16 v9, v18

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto :goto_51

    :sswitch_2a
    move-object/from16 v8, v16

    move-object/from16 v9, v18

    move-object/from16 v7, v20

    move-object/from16 v5, v29

    move-object/from16 v6, v33

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_78

    :goto_4f
    move-object/from16 v10, v22

    goto :goto_50

    :cond_78
    move-object/from16 v10, v22

    move/from16 v11, v24

    goto :goto_51

    :sswitch_2b
    move-object/from16 v8, v16

    move-object/from16 v9, v18

    move-object/from16 v7, v20

    move-object/from16 v10, v22

    move-object/from16 v5, v29

    move-object/from16 v6, v33

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_79

    :goto_50
    move-object/from16 v11, v32

    goto :goto_52

    :cond_79
    move/from16 v11, v25

    :goto_51
    move v14, v11

    move-object/from16 v13, v19

    goto :goto_4e

    :sswitch_2c
    move-object/from16 v8, v16

    move-object/from16 v9, v18

    move-object/from16 v7, v20

    move-object/from16 v10, v22

    move-object/from16 v5, v29

    move-object/from16 v11, v32

    move-object/from16 v6, v33

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7a

    :goto_52
    move-object/from16 v13, v19

    move-object/from16 v14, v28

    move-object/from16 v12, v31

    goto/16 :goto_57

    :cond_7a
    const/4 v12, 0x7

    move-object/from16 p4, v1

    move-object/from16 v22, v10

    move/from16 v16, v12

    move-object/from16 v10, v17

    move-object/from16 v13, v19

    move-object/from16 v14, v28

    move-object/from16 v18, v30

    move-object/from16 v12, v31

    goto :goto_54

    :sswitch_2d
    move-object/from16 v8, v16

    move-object/from16 v9, v18

    move-object/from16 v7, v20

    move-object/from16 v10, v22

    move-object/from16 v5, v29

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    move-object/from16 v6, v33

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7b

    move-object/from16 v13, v19

    goto :goto_55

    :cond_7b
    const/4 v13, 0x6

    move-object/from16 p4, v1

    move-object/from16 v22, v10

    move/from16 v16, v13

    move-object/from16 v10, v17

    move-object/from16 v13, v19

    :goto_53
    move-object/from16 v14, v28

    move-object/from16 v18, v30

    :goto_54
    move-object/from16 v1, v37

    move-object/from16 v15, v38

    goto/16 :goto_5a

    :sswitch_2e
    move-object/from16 v8, v16

    move-object/from16 v9, v18

    move-object/from16 v13, v19

    move-object/from16 v7, v20

    move-object/from16 v10, v22

    move-object/from16 v5, v29

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    move-object/from16 v6, v33

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7c

    :goto_55
    move-object/from16 v14, v28

    goto :goto_57

    :cond_7c
    move/from16 v14, v26

    :goto_56
    move-object/from16 p4, v1

    move-object/from16 v22, v10

    move/from16 v16, v14

    move-object/from16 v10, v17

    goto :goto_53

    :sswitch_2f
    move-object/from16 v8, v16

    move-object/from16 v9, v18

    move-object/from16 v13, v19

    move-object/from16 v7, v20

    move-object/from16 v10, v22

    move-object/from16 v14, v28

    move-object/from16 v5, v29

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    move-object/from16 v6, v33

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7d

    :goto_57
    move-object/from16 p4, v1

    move-object/from16 v22, v10

    move-object/from16 v10, v17

    move-object/from16 v18, v30

    goto/16 :goto_4a

    :cond_7d
    move-object/from16 v15, v38

    const/16 v16, 0x4

    goto :goto_58

    :sswitch_30
    move-object/from16 v8, v16

    move-object/from16 v9, v18

    move-object/from16 v13, v19

    move-object/from16 v7, v20

    move-object/from16 v10, v22

    move-object/from16 v14, v28

    move-object/from16 v5, v29

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    move-object/from16 v6, v33

    move-object/from16 v15, v38

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7e

    move-object/from16 p4, v1

    move-object/from16 v22, v10

    move-object/from16 v10, v17

    move-object/from16 v18, v30

    move-object/from16 v1, v37

    goto/16 :goto_59

    :cond_7e
    const/16 v16, 0x3

    :goto_58
    move-object/from16 p4, v1

    move-object/from16 v22, v10

    move-object/from16 v10, v17

    move-object/from16 v18, v30

    move-object/from16 v1, v37

    goto/16 :goto_5a

    :sswitch_31
    move-object/from16 p4, v1

    move-object/from16 v8, v16

    move-object/from16 v9, v18

    move-object/from16 v13, v19

    move-object/from16 v7, v20

    move-object/from16 v10, v22

    move-object/from16 v14, v28

    move-object/from16 v5, v29

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    move-object/from16 v6, v33

    move-object/from16 v1, v37

    move-object/from16 v15, v38

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7f

    move-object/from16 v22, v10

    move-object/from16 v10, v17

    move-object/from16 v18, v30

    goto/16 :goto_59

    :cond_7f
    const/16 v16, 0x2

    move-object/from16 v22, v10

    move-object/from16 v10, v17

    move-object/from16 v18, v30

    goto/16 :goto_5a

    :sswitch_32
    move-object/from16 p4, v1

    move-object/from16 v8, v16

    move-object/from16 v9, v18

    move-object/from16 v13, v19

    move-object/from16 v7, v20

    move-object/from16 v14, v28

    move-object/from16 v5, v29

    move-object/from16 v10, v30

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    move-object/from16 v6, v33

    move-object/from16 v1, v37

    move-object/from16 v15, v38

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_80

    move-object/from16 v18, v10

    move-object/from16 v10, v17

    goto :goto_59

    :cond_80
    const/16 v16, 0x1

    move-object/from16 v18, v10

    move-object/from16 v10, v17

    goto :goto_5a

    :sswitch_33
    move-object/from16 p4, v1

    move-object/from16 v8, v16

    move-object/from16 v10, v17

    move-object/from16 v9, v18

    move-object/from16 v13, v19

    move-object/from16 v7, v20

    move-object/from16 v14, v28

    move-object/from16 v5, v29

    move-object/from16 v18, v30

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    move-object/from16 v6, v33

    move-object/from16 v1, v37

    move-object/from16 v15, v38

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_81

    goto :goto_59

    :cond_81
    const/16 v16, 0x0

    goto :goto_5a

    :goto_59
    const/16 v16, -0x1

    :goto_5a
    packed-switch v16, :pswitch_data_3

    const/16 v16, 0x0

    :goto_5b
    move-object/from16 v17, v10

    move-object/from16 v10, v16

    goto :goto_5c

    :pswitch_26
    new-instance v16, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;-><init>()V

    goto :goto_5b

    :pswitch_27
    new-instance v16, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;-><init>()V

    goto :goto_5b

    :pswitch_28
    new-instance v16, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;-><init>()V

    goto :goto_5b

    :pswitch_29
    new-instance v16, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ElevationSet;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ElevationSet;-><init>()V

    goto :goto_5b

    :pswitch_2a
    new-instance v16, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationSet;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationSet;-><init>()V

    goto :goto_5b

    :pswitch_2b
    new-instance v16, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;-><init>()V

    goto :goto_5b

    :pswitch_2c
    new-instance v16, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleYset;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleYset;-><init>()V

    goto :goto_5b

    :pswitch_2d
    new-instance v16, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleXset;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleXset;-><init>()V

    goto :goto_5b

    :pswitch_2e
    new-instance v16, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ProgressSet;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ProgressSet;-><init>()V

    goto :goto_5b

    :pswitch_2f
    new-instance v16, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationZset;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationZset;-><init>()V

    goto :goto_5b

    :pswitch_30
    new-instance v16, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationYset;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationYset;-><init>()V

    goto :goto_5b

    :pswitch_31
    new-instance v16, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationXset;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationXset;-><init>()V

    goto :goto_5b

    :pswitch_32
    new-instance v16, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationYset;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationYset;-><init>()V

    goto :goto_5b

    :pswitch_33
    new-instance v16, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationXset;

    invoke-direct/range {v16 .. v16}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationXset;-><init>()V

    goto :goto_5b

    :goto_5c
    if-nez v10, :cond_82

    move-object/from16 v37, v1

    move-object/from16 v34, v4

    move-object/from16 v29, v5

    move-object/from16 v33, v6

    move-object/from16 v20, v7

    move-object/from16 v16, v8

    move-object/from16 v32, v11

    move-object/from16 v31, v12

    move-object/from16 v19, v13

    move-object/from16 v28, v14

    move-object/from16 v38, v15

    move-object/from16 v30, v18

    move-object/from16 v1, p4

    move-object/from16 v18, v9

    goto/16 :goto_49

    :cond_82
    move-object/from16 v19, v1

    iget v1, v10, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mVariesBy:I

    move-object/from16 v20, v15

    const/4 v15, 0x1

    if-ne v1, v15, :cond_83

    const/4 v1, 0x1

    goto :goto_5d

    :cond_83
    const/4 v1, 0x0

    :goto_5d
    if-eqz v1, :cond_8b

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_8b

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/16 v2, 0x63

    int-to-float v2, v2

    const/high16 v15, 0x3f800000    # 1.0f

    div-float/2addr v15, v2

    const-wide/16 v27, 0x0

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/16 v29, 0x64

    move-wide/from16 v31, v27

    move-object/from16 v28, v14

    move/from16 v14, v16

    move-object/from16 v16, v13

    move/from16 v13, v29

    move-wide/from16 v29, v31

    :goto_5e
    if-ge v14, v13, :cond_8a

    int-to-float v13, v14

    mul-float/2addr v13, v15

    move-object/from16 v27, v11

    move-object/from16 v33, v12

    float-to-double v11, v13

    move-wide/from16 v34, v11

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v11, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/16 v36, 0x0

    const/high16 v37, 0x7fc00000    # Float.NaN

    :goto_5f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_86

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v39, v12

    move-object/from16 v12, v38

    check-cast v12, Landroidx/constraintlayout/motion/widget/MotionPaths;

    move/from16 v38, v15

    iget-object v15, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    if-eqz v15, :cond_85

    move-object/from16 v40, v15

    iget v15, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    cmpg-float v41, v15, v13

    if-gez v41, :cond_84

    move/from16 v36, v15

    move-object/from16 v11, v40

    goto :goto_60

    :cond_84
    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_85

    iget v12, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move/from16 v37, v12

    :cond_85
    :goto_60
    move/from16 v15, v38

    move-object/from16 v12, v39

    goto :goto_5f

    :cond_86
    move/from16 v38, v15

    if-eqz v11, :cond_88

    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_87

    const/high16 v37, 0x3f800000    # 1.0f

    :cond_87
    sub-float v13, v13, v36

    sub-float v37, v37, v36

    div-float v13, v13, v37

    float-to-double v12, v13

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/motion/utils/Easing;->get(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float v11, v11, v37

    add-float v11, v11, v36

    float-to-double v11, v11

    goto :goto_61

    :cond_88
    move-wide/from16 v11, v34

    :goto_61
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v13, v11, v12, v15}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v1, v15}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter([I[D[FI)V

    if-lez v14, :cond_89

    float-to-double v11, v2

    const/4 v2, 0x1

    aget v2, v1, v2

    move-object v13, v8

    move-object/from16 v34, v9

    float-to-double v8, v2

    sub-double v8, v29, v8

    aget v2, v1, v15

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    float-to-double v6, v2

    sub-double v6, v31, v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    add-double/2addr v6, v11

    double-to-float v2, v6

    goto :goto_62

    :cond_89
    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object v13, v8

    move-object/from16 v34, v9

    :goto_62
    aget v6, v1, v15

    float-to-double v6, v6

    const/4 v8, 0x1

    aget v8, v1, v8

    float-to-double v8, v8

    add-int/lit8 v14, v14, 0x1

    const/16 v11, 0x64

    move-wide/from16 v31, v6

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move-object/from16 v12, v33

    move/from16 v15, v38

    move-wide/from16 v29, v8

    move-object v8, v13

    move-object/from16 v9, v34

    move v13, v11

    move-object/from16 v11, v27

    goto/16 :goto_5e

    :cond_8a
    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object v13, v8

    move-object/from16 v34, v9

    move-object/from16 v27, v11

    move-object/from16 v33, v12

    goto :goto_63

    :cond_8b
    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v34, v9

    move-object/from16 v27, v11

    move-object/from16 v33, v12

    move-object/from16 v16, v13

    move-object/from16 v28, v14

    move-object v13, v8

    :goto_63
    iput-object v3, v10, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mType:Ljava/lang/String;

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p4

    move-object/from16 v37, v19

    move-object/from16 v38, v20

    move-object/from16 v32, v27

    move-object/from16 v20, v30

    move-object/from16 v31, v33

    move-object/from16 v19, v16

    move-object/from16 v30, v18

    move-object/from16 v33, v29

    move-object/from16 v18, v34

    move-object/from16 v34, v4

    move-object/from16 v29, v5

    move-object/from16 v16, v13

    goto/16 :goto_49

    :cond_8c
    move-object/from16 v13, v16

    move-object/from16 v16, v19

    move-object/from16 v5, v29

    move-object/from16 v27, v32

    move-object/from16 v29, v33

    move-object/from16 v4, v34

    move-object/from16 v19, v37

    move-object/from16 v34, v18

    move-object/from16 v18, v30

    move-object/from16 v33, v31

    move-object/from16 v30, v20

    move-object/from16 v20, v38

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/Key;

    instance-of v3, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;

    if-eqz v3, :cond_9d

    check-cast v2, Landroidx/constraintlayout/motion/widget/KeyCycle;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_65
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9c

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_4

    :goto_66
    move-object/from16 p4, v1

    move-object v10, v13

    move-object/from16 v14, v16

    move-object/from16 v1, v17

    move-object/from16 v12, v27

    move-object/from16 v15, v28

    move-object/from16 v8, v29

    :goto_67
    move-object/from16 v9, v30

    :goto_68
    move-object/from16 v13, v33

    move-object/from16 v11, v34

    goto/16 :goto_73

    :sswitch_34
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8d

    goto :goto_66

    :cond_8d
    move-object/from16 v8, v29

    move-object/from16 v9, v30

    const/16 v10, 0xc

    goto :goto_69

    :sswitch_35
    move-object/from16 v8, v29

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8e

    move-object/from16 p4, v1

    move-object v10, v13

    move-object/from16 v14, v16

    move-object/from16 v1, v17

    move-object/from16 v12, v27

    move-object/from16 v15, v28

    goto :goto_67

    :cond_8e
    move/from16 v10, v21

    move-object/from16 v9, v30

    goto :goto_69

    :sswitch_36
    move-object/from16 v8, v29

    move-object/from16 v9, v30

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8f

    move-object/from16 p4, v1

    move-object v10, v13

    move-object/from16 v14, v16

    move-object/from16 v1, v17

    move-object/from16 v12, v27

    move-object/from16 v15, v28

    goto :goto_68

    :cond_8f
    move/from16 v10, v23

    :goto_69
    move v12, v10

    move-object v10, v13

    goto :goto_6a

    :sswitch_37
    move-object v10, v13

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_90

    move-object/from16 v11, v34

    goto :goto_6b

    :cond_90
    move/from16 v12, v24

    :goto_6a
    move-object/from16 v11, v34

    goto :goto_6c

    :sswitch_38
    move-object v10, v13

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v11, v34

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_91

    :goto_6b
    move-object/from16 p4, v1

    move-object/from16 v14, v16

    move-object/from16 v1, v17

    move-object/from16 v12, v27

    goto :goto_6d

    :cond_91
    move/from16 v12, v25

    :goto_6c
    move-object/from16 p4, v1

    move-object/from16 v14, v16

    move-object/from16 v1, v20

    move-object/from16 v15, v28

    move-object/from16 v13, v33

    move/from16 v16, v12

    move-object/from16 v12, v27

    goto/16 :goto_6f

    :sswitch_39
    move-object v10, v13

    move-object/from16 v12, v27

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v11, v34

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_92

    move-object/from16 p4, v1

    move-object/from16 v14, v16

    move-object/from16 v1, v17

    :goto_6d
    move-object/from16 v15, v28

    move-object/from16 v13, v33

    goto/16 :goto_73

    :cond_92
    const/4 v13, 0x7

    move-object/from16 p4, v1

    move-object/from16 v14, v16

    move-object/from16 v1, v17

    move-object/from16 v15, v28

    move/from16 v16, v13

    move-object/from16 v13, v33

    goto/16 :goto_74

    :sswitch_3a
    move-object v10, v13

    move-object/from16 v12, v27

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v13, v33

    move-object/from16 v11, v34

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_93

    move-object/from16 p4, v1

    move-object/from16 v14, v16

    move-object/from16 v1, v17

    move-object/from16 v15, v28

    goto/16 :goto_73

    :cond_93
    const/4 v14, 0x6

    move-object/from16 p4, v1

    move-object/from16 v1, v17

    move-object/from16 v15, v28

    move-object/from16 v42, v16

    move/from16 v16, v14

    move-object/from16 v14, v42

    goto/16 :goto_74

    :sswitch_3b
    move-object v10, v13

    move-object/from16 v14, v16

    move-object/from16 v12, v27

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v13, v33

    move-object/from16 v11, v34

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_94

    move-object/from16 v15, v28

    goto :goto_6e

    :cond_94
    move-object/from16 p4, v1

    move-object/from16 v1, v17

    move/from16 v16, v26

    move-object/from16 v15, v28

    goto/16 :goto_74

    :sswitch_3c
    move-object v10, v13

    move-object/from16 v14, v16

    move-object/from16 v12, v27

    move-object/from16 v15, v28

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v13, v33

    move-object/from16 v11, v34

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_95

    :goto_6e
    move-object/from16 p4, v1

    goto :goto_70

    :cond_95
    move-object/from16 p4, v1

    move-object/from16 v1, v20

    const/16 v16, 0x4

    goto :goto_6f

    :sswitch_3d
    move-object/from16 p4, v1

    move-object v10, v13

    move-object/from16 v14, v16

    move-object/from16 v1, v20

    move-object/from16 v12, v27

    move-object/from16 v15, v28

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v13, v33

    move-object/from16 v11, v34

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_96

    move-object/from16 v20, v1

    goto :goto_70

    :cond_96
    const/16 v16, 0x3

    :goto_6f
    move-object/from16 v20, v1

    goto :goto_72

    :sswitch_3e
    move-object/from16 p4, v1

    move-object v10, v13

    move-object/from16 v14, v16

    move-object/from16 v1, v19

    move-object/from16 v12, v27

    move-object/from16 v15, v28

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v13, v33

    move-object/from16 v11, v34

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_97

    move-object/from16 v19, v1

    :goto_70
    move-object/from16 v1, v18

    goto :goto_71

    :cond_97
    const/16 v16, 0x2

    move-object/from16 v19, v1

    goto :goto_72

    :sswitch_3f
    move-object/from16 p4, v1

    move-object v10, v13

    move-object/from16 v14, v16

    move-object/from16 v1, v18

    move-object/from16 v12, v27

    move-object/from16 v15, v28

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v13, v33

    move-object/from16 v11, v34

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_98

    :goto_71
    move-object/from16 v18, v1

    move-object/from16 v1, v17

    goto :goto_73

    :cond_98
    const/16 v16, 0x1

    move-object/from16 v18, v1

    :goto_72
    move-object/from16 v1, v17

    goto :goto_74

    :sswitch_40
    move-object/from16 p4, v1

    move-object v10, v13

    move-object/from16 v14, v16

    move-object/from16 v1, v17

    move-object/from16 v12, v27

    move-object/from16 v15, v28

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v13, v33

    move-object/from16 v11, v34

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_99

    goto :goto_73

    :cond_99
    const/16 v16, 0x0

    goto :goto_74

    :goto_73
    const/16 v16, -0x1

    :goto_74
    packed-switch v16, :pswitch_data_4

    move-object/from16 v17, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v4

    const-string v4, "  UNKNOWN  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "WARNING! KeyCycle"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x7fc00000    # Float.NaN

    goto :goto_76

    :pswitch_34
    move-object/from16 v17, v1

    iget v1, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    goto :goto_75

    :pswitch_35
    move-object/from16 v17, v1

    iget v1, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    goto :goto_75

    :pswitch_36
    move-object/from16 v17, v1

    iget v1, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    goto :goto_75

    :pswitch_37
    move-object/from16 v17, v1

    iget v1, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    goto :goto_75

    :pswitch_38
    move-object/from16 v17, v1

    iget v1, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    goto :goto_75

    :pswitch_39
    move-object/from16 v17, v1

    iget v1, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    goto :goto_75

    :pswitch_3a
    move-object/from16 v17, v1

    iget v1, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    goto :goto_75

    :pswitch_3b
    move-object/from16 v17, v1

    iget v1, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    goto :goto_75

    :pswitch_3c
    move-object/from16 v17, v1

    iget v1, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    goto :goto_75

    :pswitch_3d
    move-object/from16 v17, v1

    iget v1, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    goto :goto_75

    :pswitch_3e
    move-object/from16 v17, v1

    iget v1, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    goto :goto_75

    :pswitch_3f
    move-object/from16 v17, v1

    iget v1, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    goto :goto_75

    :pswitch_40
    move-object/from16 v17, v1

    iget v1, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    :goto_75
    move-object/from16 v34, v4

    :goto_76
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_9b

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    iget v7, v2, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    move-object/from16 v16, v3

    iget v3, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    move-object/from16 v29, v5

    iget v5, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    move-object/from16 v22, v6

    iget v6, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    move-object/from16 v33, v8

    iget v8, v2, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    move-object/from16 v27, v2

    iget-object v2, v4, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    move-object/from16 v30, v9

    new-instance v9, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;

    invoke-direct {v9, v6, v8, v1, v7}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;-><init>(FFFI)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, -0x1

    if-eq v5, v1, :cond_9a

    iput v5, v4, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mVariesBy:I

    :cond_9a
    iput v3, v4, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWaveShape:I

    move-object/from16 v1, p4

    move-object/from16 v28, v15

    move-object/from16 v3, v16

    move-object/from16 v6, v22

    move-object/from16 v2, v27

    move-object/from16 v5, v29

    move-object/from16 v29, v33

    move-object/from16 v4, v34

    move-object/from16 v34, v11

    move-object/from16 v27, v12

    move-object/from16 v33, v13

    move-object/from16 v16, v14

    move-object v13, v10

    goto/16 :goto_65

    :cond_9b
    move-object/from16 v1, p4

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v27, v12

    move-object/from16 v33, v13

    move-object/from16 v16, v14

    move-object/from16 v28, v15

    move-object/from16 v4, v34

    move-object v13, v10

    move-object/from16 v34, v11

    goto/16 :goto_65

    :cond_9c
    const/4 v0, 0x7

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    const/4 v0, 0x0

    throw v0

    :cond_9d
    move-object/from16 p4, v1

    move-object v10, v13

    move-object/from16 v14, v16

    move-object/from16 v12, v27

    move-object/from16 v15, v28

    move-object/from16 v13, v33

    move-object/from16 v11, v34

    move-object/from16 v34, v4

    move-object/from16 v33, v29

    move-object/from16 v29, v5

    move-object/from16 v1, p4

    move-object/from16 v27, v12

    move-object/from16 v16, v14

    move-object/from16 v28, v15

    move-object/from16 v5, v29

    move-object/from16 v29, v33

    move-object/from16 v4, v34

    move-object/from16 v34, v11

    move-object/from16 v33, v13

    move-object v13, v10

    goto/16 :goto_64

    :cond_9e
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->setup()V

    goto :goto_77

    :cond_9f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x2f893320 -> :sswitch_5
        -0x266f082 -> :sswitch_4
        -0x42d1a3 -> :sswitch_3
        0x2382115 -> :sswitch_2
        0x589b15e -> :sswitch_1
        0x94e04ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4a771f66 -> :sswitch_19
        -0x4a771f65 -> :sswitch_18
        -0x490b9c39 -> :sswitch_17
        -0x490b9c38 -> :sswitch_16
        -0x490b9c37 -> :sswitch_15
        -0x3bab3dd3 -> :sswitch_14
        -0x3621dfb2 -> :sswitch_13
        -0x3621dfb1 -> :sswitch_12
        -0x266f082 -> :sswitch_11
        -0x42d1a3 -> :sswitch_10
        0x2382115 -> :sswitch_f
        0x589b15e -> :sswitch_e
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x4a771f66 -> :sswitch_25
        -0x4a771f65 -> :sswitch_24
        -0x490b9c39 -> :sswitch_23
        -0x490b9c38 -> :sswitch_22
        -0x490b9c37 -> :sswitch_21
        -0x3bab3dd3 -> :sswitch_20
        -0x3621dfb2 -> :sswitch_1f
        -0x3621dfb1 -> :sswitch_1e
        -0x266f082 -> :sswitch_1d
        -0x42d1a3 -> :sswitch_1c
        0x2382115 -> :sswitch_1b
        0x589b15e -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x4a771f66 -> :sswitch_33
        -0x4a771f65 -> :sswitch_32
        -0x490b9c39 -> :sswitch_31
        -0x490b9c38 -> :sswitch_30
        -0x490b9c37 -> :sswitch_2f
        -0x3bab3dd3 -> :sswitch_2e
        -0x3621dfb2 -> :sswitch_2d
        -0x3621dfb1 -> :sswitch_2c
        -0x2f893320 -> :sswitch_2b
        -0x266f082 -> :sswitch_2a
        -0x42d1a3 -> :sswitch_29
        0x2382115 -> :sswitch_28
        0x589b15e -> :sswitch_27
        0x94e04ec -> :sswitch_26
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x4a771f66 -> :sswitch_40
        -0x4a771f65 -> :sswitch_3f
        -0x490b9c39 -> :sswitch_3e
        -0x490b9c38 -> :sswitch_3d
        -0x490b9c37 -> :sswitch_3c
        -0x3bab3dd3 -> :sswitch_3b
        -0x3621dfb2 -> :sswitch_3a
        -0x3621dfb1 -> :sswitch_39
        -0x266f082 -> :sswitch_38
        -0x42d1a3 -> :sswitch_37
        0x2382115 -> :sswitch_36
        0x589b15e -> :sswitch_35
        0x94e04ec -> :sswitch_34
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, " start: x: "

    invoke-static {v0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " end: x: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
