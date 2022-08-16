.class public final Lcom/android/systemui/qs/PathInterpolatorBuilder;
.super Ljava/lang/Object;
.source "PathInterpolatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;
    }
.end annotation


# instance fields
.field public mDist:[F

.field public mX:[F

.field public mY:[F


# direct methods
.method public constructor <init>()V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v0, 0x3b03126f    # 0.002f

    invoke-virtual {v7, v0}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v0

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    aget v3, v0, v2

    cmpl-float v3, v3, v8

    if-nez v3, :cond_6

    const/4 v3, 0x2

    aget v4, v0, v3

    cmpl-float v4, v4, v8

    if-nez v4, :cond_6

    array-length v4, v0

    sub-int/2addr v4, v3

    aget v3, v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v3, v0, v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    new-array v3, v1, [F

    iput-object v3, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    new-array v3, v1, [F

    iput-object v3, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    new-array v3, v1, [F

    iput-object v3, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    const/4 v3, 0x0

    move v5, v3

    move v6, v5

    move v4, v8

    :goto_0
    if-ge v5, v1, :cond_4

    add-int/lit8 v7, v6, 0x1

    aget v6, v0, v6

    add-int/lit8 v9, v7, 0x1

    aget v7, v0, v7

    add-int/lit8 v10, v9, 0x1

    aget v9, v0, v9

    cmpl-float v8, v6, v8

    if-nez v8, :cond_1

    cmpl-float v8, v7, v4

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Path cannot have discontinuity in the X axis."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    cmpg-float v4, v7, v4

    if-ltz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    aput v7, v4, v5

    iget-object v8, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    aput v9, v8, v5

    if-lez v5, :cond_2

    aget v11, v4, v5

    add-int/lit8 v12, v5, -0x1

    aget v4, v4, v12

    sub-float/2addr v11, v4

    aget v4, v8, v12

    sub-float/2addr v9, v4

    mul-float/2addr v11, v11

    mul-float/2addr v9, v9

    add-float/2addr v9, v11

    float-to-double v8, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v4, v8

    iget-object v8, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    aget v9, v8, v12

    add-float/2addr v9, v4

    aput v9, v8, v5

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move v8, v6

    move v4, v7

    move v6, v10

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Path cannot loop back on itself."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    array-length v4, v0

    sub-int/2addr v4, v2

    aget v0, v0, v4

    :goto_2
    if-ge v3, v1, :cond_5

    iget-object v2, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    aget v4, v2, v3

    div-float/2addr v4, v0

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Path must start at (0,0) and end at (1,1)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
