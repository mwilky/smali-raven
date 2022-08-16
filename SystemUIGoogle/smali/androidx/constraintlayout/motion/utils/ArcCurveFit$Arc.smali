.class public final Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;
.super Ljava/lang/Object;
.source "ArcCurveFit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/ArcCurveFit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Arc"
.end annotation


# static fields
.field public static ourPercent:[D


# instance fields
.field public linear:Z

.field public mArcDistance:D

.field public mArcVelocity:D

.field public mEllipseA:D

.field public mEllipseB:D

.field public mEllipseCenterX:D

.field public mEllipseCenterY:D

.field public mLut:[D

.field public mOneOverDeltaTime:D

.field public mTime1:D

.field public mTime2:D

.field public mTmpCosAngle:D

.field public mTmpSinAngle:D

.field public mVertical:Z

.field public mX1:D

.field public mX2:D

.field public mY1:D

.field public mY2:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x5b

    new-array v0, v0, [D

    sput-object v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    return-void
.end method

.method public constructor <init>(IDDDDDD)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v14, 0x0

    iput-boolean v14, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->linear:Z

    const/4 v15, 0x1

    if-ne v1, v15, :cond_0

    move v14, v15

    :cond_0
    iput-boolean v14, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    iput-wide v2, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    iput-wide v4, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    div-double v2, v17, v2

    iput-wide v2, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    const/4 v2, 0x3

    if-ne v2, v1, :cond_1

    iput-boolean v15, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->linear:Z

    :cond_1
    sub-double v1, v10, v6

    sub-double v3, v12, v8

    iget-boolean v5, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-nez v5, :cond_d

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    const-wide v19, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v5, v17, v19

    if-ltz v5, :cond_d

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    cmpg-double v5, v17, v19

    if-gez v5, :cond_2

    goto/16 :goto_6

    :cond_2
    const/16 v5, 0x65

    new-array v5, v5, [D

    iput-object v5, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mLut:[D

    iget-boolean v5, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    if-eqz v5, :cond_3

    const/4 v15, -0x1

    :cond_3
    int-to-double v14, v15

    mul-double/2addr v14, v1

    iput-wide v14, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseA:D

    if-eqz v5, :cond_4

    const/4 v15, 0x1

    goto :goto_0

    :cond_4
    const/4 v15, -0x1

    :goto_0
    int-to-double v14, v15

    mul-double/2addr v3, v14

    iput-wide v3, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseB:D

    if-eqz v5, :cond_5

    move-wide v6, v10

    :cond_5
    iput-wide v6, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    if-eqz v5, :cond_6

    move-wide v3, v8

    goto :goto_1

    :cond_6
    move-wide v3, v12

    :goto_1
    iput-wide v3, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    sub-double v3, v8, v12

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    :goto_2
    sget-object v14, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    const/16 v15, 0x5b

    const/16 v5, 0x5a

    if-ge v7, v15, :cond_8

    const-wide v17, 0x4056800000000000L    # 90.0

    move-object/from16 p4, v14

    int-to-double v14, v7

    mul-double v14, v14, v17

    int-to-double v5, v5

    div-double/2addr v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v14, v1

    mul-double/2addr v5, v3

    if-lez v7, :cond_7

    sub-double v10, v14, v10

    sub-double v12, v5, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    aput-wide v8, p4, v7

    :cond_7
    add-int/lit8 v7, v7, 0x1

    move-wide v12, v5

    move-wide v10, v14

    goto :goto_2

    :cond_8
    iput-wide v8, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    const/4 v1, 0x0

    :goto_3
    sget-object v2, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    if-ge v1, v15, :cond_9

    aget-wide v3, v2, v1

    div-double/2addr v3, v8

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    const/4 v14, 0x0

    :goto_4
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mLut:[D

    array-length v2, v1

    if-ge v14, v2, :cond_c

    int-to-double v2, v14

    array-length v1, v1

    const/4 v4, -0x1

    add-int/2addr v1, v4

    int-to-double v6, v1

    div-double/2addr v2, v6

    sget-object v1, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->ourPercent:[D

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v4

    if-ltz v4, :cond_a

    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mLut:[D

    div-int/lit8 v4, v4, 0x5a

    int-to-double v2, v4

    aput-wide v2, v1, v14

    const/4 v6, -0x1

    const-wide/16 v7, 0x0

    goto :goto_5

    :cond_a
    const/4 v6, -0x1

    if-ne v4, v6, :cond_b

    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mLut:[D

    const-wide/16 v7, 0x0

    aput-wide v7, v1, v14

    goto :goto_5

    :cond_b
    const-wide/16 v7, 0x0

    neg-int v4, v4

    add-int/lit8 v9, v4, -0x2

    add-int/2addr v4, v6

    int-to-double v10, v9

    aget-wide v12, v1, v9

    sub-double/2addr v2, v12

    aget-wide v15, v1, v4

    sub-double/2addr v15, v12

    div-double/2addr v2, v15

    add-double/2addr v2, v10

    int-to-double v9, v5

    div-double/2addr v2, v9

    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mLut:[D

    aput-wide v2, v1, v14

    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_c
    iget-wide v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    iget-wide v3, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    return-void

    :cond_d
    :goto_6
    move v5, v15

    iput-boolean v5, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->linear:Z

    iput-wide v6, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mX1:D

    iput-wide v10, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mX2:D

    iput-wide v8, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mY1:D

    iput-wide v12, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mY2:D

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    iput-wide v5, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mArcDistance:D

    iget-wide v7, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    mul-double/2addr v5, v7

    iput-wide v5, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mArcVelocity:D

    iget-wide v5, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    iget-wide v7, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double v9, v5, v7

    div-double/2addr v1, v9

    iput-wide v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseCenterX:D

    sub-double/2addr v5, v7

    div-double/2addr v3, v5

    iput-wide v3, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mEllipseCenterY:D

    return-void
.end method


# virtual methods
.method public final setPoint(D)V
    .locals 6

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mVertical:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    sub-double/2addr v0, p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    sub-double v0, p1, v0

    :goto_0
    iget-wide p1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mOneOverDeltaTime:D

    mul-double/2addr v0, p1

    const-wide p1, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1

    goto :goto_1

    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mLut:[D

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    int-to-double v3, v3

    mul-double/2addr v0, v3

    double-to-int v3, v0

    int-to-double v4, v3

    sub-double/2addr v0, v4

    aget-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    aget-wide v2, v2, v3

    sub-double/2addr v2, v4

    mul-double/2addr v2, v0

    add-double/2addr v2, v4

    :goto_1
    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    iput-wide p1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTmpSinAngle:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    iput-wide p1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTmpCosAngle:D

    return-void
.end method
