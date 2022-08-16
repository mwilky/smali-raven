.class public final Landroidx/constraintlayout/motion/widget/MotionPaths;
.super Ljava/lang/Object;
.source "MotionPaths.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/motion/widget/MotionPaths;",
        ">;"
    }
.end annotation


# static fields
.field public static names:[Ljava/lang/String;


# instance fields
.field public attributes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public height:F

.field public mDrawPath:I

.field public mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

.field public mLastMeasuredHeight:I

.field public mLastMeasuredWidth:I

.field public mMode:I

.field public mPathMotionArc:I

.field public mPathRotate:F

.field public mTempDelta:[D

.field public mTempValue:[D

.field public position:F

.field public time:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string/jumbo v0, "position"

    const-string/jumbo v1, "x"

    const-string/jumbo v2, "y"

    const-string/jumbo v3, "width"

    const-string v4, "height"

    const-string/jumbo v5, "pathRotate"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    const/16 v0, 0x12

    new-array v1, v0, [D

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    return-void
.end method

.method public constructor <init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    const/high16 v5, 0x7fc00000    # Float.NaN

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    const/4 v6, -0x1

    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    const/16 v4, 0x12

    new-array v6, v4, [D

    iput-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    new-array v4, v4, [D

    iput-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    iget v4, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    iget v4, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x42c80000    # 100.0f

    if-eq v4, v7, :cond_b

    const/4 v7, 0x2

    if-eq v4, v7, :cond_6

    iget v4, v1, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v4, v4

    div-float/2addr v4, v9

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iget v9, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    iget v9, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v4

    goto :goto_0

    :cond_0
    iget v9, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    :goto_0
    iget v10, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v4

    goto :goto_1

    :cond_1
    iget v10, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    :goto_1
    iget v11, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v12, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float v13, v11, v12

    iget v14, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v15, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float v16, v14, v15

    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    iget v6, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    div-float v18, v12, v8

    add-float v18, v18, v6

    iget v7, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    div-float v19, v15, v8

    add-float v19, v19, v7

    iget v5, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    div-float/2addr v11, v8

    add-float/2addr v11, v5

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    div-float/2addr v14, v8

    add-float/2addr v14, v3

    sub-float v11, v11, v18

    sub-float v14, v14, v19

    mul-float v3, v11, v4

    add-float/2addr v3, v6

    mul-float/2addr v13, v9

    div-float v5, v13, v8

    sub-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    mul-float v3, v14, v4

    add-float/2addr v3, v7

    mul-float v16, v16, v10

    div-float v6, v16, v8

    sub-float/2addr v3, v6

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    add-float/2addr v12, v13

    float-to-int v3, v12

    int-to-float v3, v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float v15, v15, v16

    float-to-int v3, v15

    int-to-float v3, v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    :goto_2
    const/high16 v7, 0x7fc00000    # Float.NaN

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    move v8, v7

    :goto_3
    iget v9, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_4

    :cond_4
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    :goto_4
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v7, 0x2

    const/16 v17, 0x0

    goto :goto_5

    :cond_5
    move/from16 v17, v7

    const/4 v7, 0x2

    :goto_5
    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    iget v7, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    mul-float/2addr v3, v11

    add-float/2addr v3, v7

    mul-float v17, v17, v14

    add-float v17, v17, v3

    sub-float v3, v17, v5

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    mul-float/2addr v11, v8

    add-float/2addr v11, v2

    mul-float/2addr v14, v4

    add-float/2addr v14, v11

    sub-float/2addr v14, v6

    float-to-int v2, v14

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/Easing;

    move-result-object v2

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void

    :cond_6
    iget v4, v1, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v4, v4

    div-float/2addr v4, v9

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v4

    goto :goto_6

    :cond_7
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    :goto_6
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_8

    move v6, v4

    goto :goto_7

    :cond_8
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    :goto_7
    iget v7, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v9, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float v10, v7, v9

    iget v11, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v12, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float v13, v11, v12

    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iput v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    iget v14, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    div-float v15, v9, v8

    add-float/2addr v15, v14

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    div-float v16, v12, v8

    add-float v16, v16, v2

    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    div-float/2addr v7, v8

    add-float/2addr v7, v1

    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    div-float/2addr v11, v8

    add-float/2addr v11, v1

    sub-float/2addr v7, v15

    sub-float v11, v11, v16

    mul-float/2addr v7, v4

    add-float/2addr v7, v14

    mul-float/2addr v10, v5

    div-float v1, v10, v8

    sub-float/2addr v7, v1

    float-to-int v1, v7

    int-to-float v1, v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    mul-float/2addr v11, v4

    add-float/2addr v11, v2

    mul-float/2addr v13, v6

    div-float v1, v13, v8

    sub-float/2addr v11, v1

    float-to-int v1, v11

    int-to-float v1, v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    add-float/2addr v9, v10

    float-to-int v1, v9

    int-to-float v1, v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v12, v13

    float-to-int v1, v12

    int-to-float v1, v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    const/4 v1, 0x3

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    move-object/from16 v1, p3

    iget v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_9

    move/from16 v2, p1

    int-to-float v2, v2

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    int-to-float v2, v2

    mul-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    :cond_9
    iget v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_a

    move/from16 v2, p2

    int-to-float v2, v2

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    int-to-float v2, v2

    mul-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    :cond_a
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/Easing;

    move-result-object v2

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void

    :cond_b
    iget v4, v1, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v4, v4

    div-float/2addr v4, v9

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v4

    goto :goto_8

    :cond_c
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    :goto_8
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_d

    move v6, v4

    goto :goto_9

    :cond_d
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    :goto_9
    iget v9, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v10, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float/2addr v9, v10

    iget v10, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v11, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float/2addr v10, v11

    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iput v11, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    iget v11, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_e

    goto :goto_a

    :cond_e
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    :goto_a
    iget v11, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v12, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    div-float v13, v12, v8

    add-float/2addr v13, v11

    iget v14, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v15, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    div-float v16, v15, v8

    add-float v16, v16, v14

    iget v7, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v2, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    div-float/2addr v2, v8

    add-float/2addr v2, v7

    iget v7, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    div-float/2addr v3, v8

    add-float/2addr v3, v7

    sub-float/2addr v2, v13

    sub-float v3, v3, v16

    mul-float v7, v2, v4

    add-float/2addr v11, v7

    mul-float/2addr v9, v5

    div-float v5, v9, v8

    sub-float/2addr v11, v5

    float-to-int v11, v11

    int-to-float v11, v11

    iput v11, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    mul-float/2addr v4, v3

    add-float/2addr v14, v4

    mul-float/2addr v10, v6

    div-float v6, v10, v8

    sub-float/2addr v14, v6

    float-to-int v8, v14

    int-to-float v8, v8

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    add-float/2addr v12, v9

    float-to-int v8, v12

    int-to-float v8, v8

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v15, v10

    float-to-int v8, v15

    int-to-float v8, v8

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v8, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_f

    const/16 v17, 0x0

    goto :goto_b

    :cond_f
    iget v8, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    move/from16 v17, v8

    :goto_b
    neg-float v3, v3

    mul-float v3, v3, v17

    mul-float v2, v2, v17

    const/4 v8, 0x1

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    move-object/from16 v8, p4

    iget v9, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    add-float/2addr v9, v7

    sub-float/2addr v9, v5

    float-to-int v5, v9

    int-to-float v5, v5

    iget v7, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    add-float/2addr v7, v4

    sub-float/2addr v7, v6

    float-to-int v4, v7

    int-to-float v4, v4

    add-float/2addr v5, v3

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    add-float/2addr v4, v2

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/Easing;

    move-result-object v2

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void
.end method

.method public static diff(FF)Z
    .locals 3

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd    # 1.0E-6f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eq p0, p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public static setDpDt(FF[F[I[D[D)V
    .locals 12

    move-object v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    array-length v8, v0

    const/4 v9, 0x1

    if-ge v3, v8, :cond_4

    aget-wide v10, p4, v3

    double-to-float v8, v10

    aget-wide v10, p5, v3

    aget v10, v0, v3

    if-eq v10, v9, :cond_3

    const/4 v9, 0x2

    if-eq v10, v9, :cond_2

    const/4 v9, 0x3

    if-eq v10, v9, :cond_1

    const/4 v9, 0x4

    if-eq v10, v9, :cond_0

    goto :goto_1

    :cond_0
    move v6, v8

    goto :goto_1

    :cond_1
    move v4, v8

    goto :goto_1

    :cond_2
    move v7, v8

    goto :goto_1

    :cond_3
    move v5, v8

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    mul-float v0, v2, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v5, v0

    mul-float v0, v2, v6

    div-float/2addr v0, v3

    sub-float/2addr v7, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v4, v0

    mul-float/2addr v6, v0

    add-float/2addr v4, v5

    add-float/2addr v6, v7

    sub-float v3, v0, p0

    mul-float/2addr v3, v5

    mul-float/2addr v4, p0

    add-float/2addr v4, v3

    add-float/2addr v4, v2

    aput v4, p2, v1

    sub-float/2addr v0, p1

    mul-float/2addr v0, v7

    mul-float/2addr v6, p1

    add-float/2addr v6, v0

    add-float/2addr v6, v2

    aput v6, p2, v9

    return-void
.end method


# virtual methods
.method public final applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V
    .locals 5

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v0}, Landroidx/constraintlayout/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/Easing;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    sget-object v4, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public final getCenter([I[D[FI)V
    .locals 8

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    const/4 v5, 0x1

    if-ge v3, v4, :cond_4

    aget-wide v6, p2, v3

    double-to-float v4, v6

    aget v6, p1, v3

    if-eq v6, v5, :cond_3

    const/4 v5, 0x2

    if-eq v6, v5, :cond_2

    const/4 v5, 0x3

    if-eq v6, v5, :cond_1

    const/4 v5, 0x4

    if-eq v6, v5, :cond_0

    goto :goto_1

    :cond_0
    move p0, v4

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    move v0, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v2, p1

    add-float/2addr v2, v0

    const/4 p2, 0x0

    add-float/2addr v2, p2

    aput v2, p3, p4

    add-int/2addr p4, v5

    div-float/2addr p0, p1

    add-float/2addr p0, v1

    add-float/2addr p0, p2

    aput p0, p3, p4

    return-void
.end method

.method public final setBounds(FFFF)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    float-to-int p1, p3

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredWidth:I

    float-to-int p1, p4

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mLastMeasuredHeight:I

    return-void
.end method
