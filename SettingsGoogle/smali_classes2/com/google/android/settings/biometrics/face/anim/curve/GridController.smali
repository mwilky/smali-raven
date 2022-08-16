.class public Lcom/google/android/settings/biometrics/face/anim/curve/GridController;
.super Ljava/lang/Object;
.source "GridController.java"


# static fields
.field private static final SCRIM_OPACITY_THRESHOLDS:[I

.field private static final SCRIM_OPACITY_VALUES:[F


# instance fields
.field private final mBucketListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable$BucketListener;

.field private mCellConfigs:[Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

.field private final mCellStates:[Lcom/google/android/settings/biometrics/face/anim/curve/CellState;

.field private mEnrolledCount:I

.field private final mGridState:Lcom/google/android/settings/biometrics/face/anim/curve/GridState;

.field private final mHandler:Landroid/os/Handler;

.field private final mNoActivityScrimState:Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;

.field private final mPrimaryCellIndices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrimNotEnrolledDefaultColor:I

.field private final mScrimNotEnrolledPrimaryColor:I

.field private final mScrimNotEnrolledSecondaryColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->SCRIM_OPACITY_THRESHOLDS:[I

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->SCRIM_OPACITY_VALUES:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
    .end array-data

    :array_1
    .array-data 4
        0x3f0ccccd    # 0.55f
        0x3f19999a    # 0.6f
        0x3f266666    # 0.65f
        0x3f333333    # 0.7f
        0x3f400000    # 0.75f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable$BucketListener;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mEnrolledCount:I

    iput-object p2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mBucketListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable$BucketListener;

    const p2, 0x7f0a00b7

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mScrimNotEnrolledDefaultColor:I

    const p2, 0x7f0a00b8

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mScrimNotEnrolledPrimaryColor:I

    const p2, 0x7f0a00b9

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mScrimNotEnrolledSecondaryColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f010093

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    new-instance v1, Landroid/util/ArraySet;

    array-length v2, p2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mPrimaryCellIndices:Landroid/util/ArraySet;

    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p2, v2

    iget-object v4, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mPrimaryCellIndices:Landroid/util/ArraySet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;

    const v1, 0x7f0a00c1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const v2, 0x7f0a00c2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {p2, v1, v2}, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;-><init>(II)V

    iput-object p2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mNoActivityScrimState:Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;

    new-instance p2, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p1, v1}, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mGridState:Lcom/google/android/settings/biometrics/face/anim/curve/GridState;

    const/16 p2, 0x19

    new-array p2, p2, [Lcom/google/android/settings/biometrics/face/anim/curve/CellState;

    iput-object p2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mCellStates:[Lcom/google/android/settings/biometrics/face/anim/curve/CellState;

    move p2, v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mCellStates:[Lcom/google/android/settings/biometrics/face/anim/curve/CellState;

    array-length v1, v1

    if-ge p2, v1, :cond_1

    invoke-direct {p0, v0, p2}, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->getScrimNotEnrolledColor(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mCellStates:[Lcom/google/android/settings/biometrics/face/anim/curve/CellState;

    new-instance v3, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;

    iget-object v4, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mBucketListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable$BucketListener;

    invoke-direct {v3, p1, p2, v4, v1}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;-><init>(Landroid/content/Context;ILcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable$BucketListener;I)V

    aput-object v3, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getScrimNotEnrolledColor(II)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mPrimaryCellIndices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->getScrimNotEnrolledColorWithoutPrimaryCells(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->getScrimNotEnrolledColorWithPrimaryCells(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getScrimNotEnrolledColorWithPrimaryCells(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mPrimaryCellIndices:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mScrimNotEnrolledPrimaryColor:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mScrimNotEnrolledSecondaryColor:I

    :goto_0
    return p0
.end method

.method private getScrimNotEnrolledColorWithoutPrimaryCells(I)I
    .locals 1

    invoke-static {p1}, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->getScrimNotEnrolledOpacity(I)F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mScrimNotEnrolledDefaultColor:I

    invoke-static {p0, p1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    return p0
.end method

.method private static getScrimNotEnrolledOpacity(I)F
    .locals 2

    sget-object v0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->SCRIM_OPACITY_THRESHOLDS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    sget-object v1, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->SCRIM_OPACITY_THRESHOLDS:[I

    aget v1, v1, v0

    if-lt p0, v1, :cond_0

    sget-object p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->SCRIM_OPACITY_VALUES:[F

    aget p0, p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->SCRIM_OPACITY_VALUES:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method private initializeCells(II)V
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p2

    int-to-float v2, v0

    const v3, 0x3ea3d70a    # 0.32f

    mul-float/2addr v2, v3

    int-to-float v3, v1

    const v4, 0x3f47ae14    # 0.78f

    mul-float/2addr v3, v4

    new-instance v4, Landroid/graphics/RectF;

    neg-float v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    neg-int v7, v1

    const/4 v8, 0x2

    div-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v2, v6

    div-int/2addr v1, v8

    int-to-float v1, v1

    invoke-direct {v4, v5, v7, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v9, Landroid/graphics/RectF;

    neg-int v10, v0

    div-int/2addr v10, v8

    int-to-float v10, v10

    div-int/2addr v0, v8

    int-to-float v0, v0

    invoke-direct {v9, v10, v5, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    neg-float v5, v3

    div-float/2addr v5, v6

    div-float/2addr v3, v6

    invoke-direct {v2, v5, v7, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v10, v5, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v10, v7, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v0, 0x6

    new-array v1, v0, [[F

    const/4 v5, 0x4

    new-array v7, v5, [F

    fill-array-data v7, :array_0

    const/4 v10, 0x0

    aput-object v7, v1, v10

    new-array v7, v5, [F

    fill-array-data v7, :array_1

    const/4 v11, 0x1

    aput-object v7, v1, v11

    new-array v7, v5, [F

    fill-array-data v7, :array_2

    aput-object v7, v1, v8

    new-array v7, v8, [F

    fill-array-data v7, :array_3

    const/4 v12, 0x3

    aput-object v7, v1, v12

    new-array v7, v12, [F

    fill-array-data v7, :array_4

    aput-object v7, v1, v5

    new-array v7, v12, [F

    fill-array-data v7, :array_5

    const/4 v13, 0x5

    aput-object v7, v1, v13

    new-array v7, v0, [[F

    new-array v14, v5, [F

    fill-array-data v14, :array_6

    aput-object v14, v7, v10

    new-array v14, v5, [F

    fill-array-data v14, :array_7

    aput-object v14, v7, v11

    new-array v14, v5, [F

    fill-array-data v14, :array_8

    aput-object v14, v7, v8

    new-array v14, v8, [F

    fill-array-data v14, :array_9

    aput-object v14, v7, v12

    new-array v14, v12, [F

    fill-array-data v14, :array_a

    aput-object v14, v7, v5

    new-array v14, v12, [F

    fill-array-data v14, :array_b

    aput-object v14, v7, v13

    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    aget-object v15, v1, v10

    aget v15, v15, v10

    aget-object v16, v7, v10

    aget v0, v16, v10

    invoke-virtual {v14, v9, v15, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    aget-object v0, v1, v10

    aget v0, v0, v11

    aget-object v15, v7, v10

    aget v15, v15, v11

    invoke-virtual {v14, v4, v0, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    aget-object v0, v1, v10

    aget v0, v0, v8

    aget-object v15, v7, v10

    aget v15, v15, v8

    invoke-virtual {v14, v9, v0, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    aget-object v0, v1, v10

    aget v0, v0, v12

    aget-object v15, v7, v10

    aget v15, v15, v12

    invoke-virtual {v14, v4, v0, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    aget-object v15, v1, v11

    aget v15, v15, v10

    aget-object v16, v7, v11

    aget v13, v16, v10

    invoke-virtual {v0, v6, v15, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    aget-object v13, v1, v11

    aget v13, v13, v11

    aget-object v15, v7, v11

    aget v15, v15, v11

    invoke-virtual {v0, v4, v13, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    aget-object v13, v1, v11

    aget v13, v13, v8

    aget-object v15, v7, v11

    aget v15, v15, v8

    invoke-virtual {v0, v9, v13, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    aget-object v13, v1, v11

    aget v13, v13, v12

    aget-object v15, v7, v11

    aget v15, v15, v12

    invoke-virtual {v0, v4, v13, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    aget-object v15, v1, v8

    aget v15, v15, v10

    aget-object v16, v7, v8

    aget v5, v16, v10

    invoke-virtual {v13, v6, v15, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    aget-object v5, v1, v8

    aget v5, v5, v11

    aget-object v15, v7, v8

    aget v15, v15, v11

    invoke-virtual {v13, v4, v5, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    aget-object v5, v1, v8

    aget v5, v5, v8

    aget-object v15, v7, v8

    aget v15, v15, v8

    invoke-virtual {v13, v9, v5, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    aget-object v5, v1, v8

    aget v5, v5, v12

    aget-object v15, v7, v8

    aget v15, v15, v12

    invoke-virtual {v13, v2, v5, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    aget-object v15, v1, v12

    aget v15, v15, v10

    aget-object v16, v7, v12

    aget v8, v16, v10

    invoke-virtual {v5, v4, v15, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    aget-object v4, v1, v12

    aget v4, v4, v11

    aget-object v8, v7, v12

    aget v8, v8, v11

    invoke-virtual {v5, v6, v4, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    const/4 v8, 0x4

    aget-object v15, v1, v8

    aget v15, v15, v10

    aget-object v16, v7, v8

    aget v12, v16, v10

    invoke-virtual {v4, v6, v15, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    aget-object v12, v1, v8

    aget v12, v12, v11

    aget-object v15, v7, v8

    aget v15, v15, v11

    invoke-virtual {v4, v2, v12, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    aget-object v12, v1, v8

    const/4 v15, 0x2

    aget v12, v12, v15

    aget-object v16, v7, v8

    aget v8, v16, v15

    invoke-virtual {v4, v9, v12, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    const/4 v9, 0x5

    aget-object v12, v1, v9

    aget v12, v12, v10

    aget-object v15, v7, v9

    aget v15, v15, v10

    invoke-virtual {v8, v3, v12, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    aget-object v3, v1, v9

    aget v3, v3, v11

    aget-object v12, v7, v9

    aget v12, v12, v11

    invoke-virtual {v8, v2, v3, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    aget-object v1, v1, v9

    const/4 v2, 0x2

    aget v1, v1, v2

    aget-object v3, v7, v9

    aget v3, v3, v2

    invoke-virtual {v8, v6, v1, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    const/16 v1, 0x19

    new-array v1, v1, [Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    new-instance v2, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    const/16 v3, 0xb4

    invoke-direct {v2, v8, v3}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;I)V

    aput-object v2, v1, v10

    new-instance v2, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    const/16 v6, 0x5a

    invoke-direct {v2, v4, v6, v11}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;IZ)V

    aput-object v2, v1, v11

    new-instance v2, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    invoke-direct {v2, v5, v3}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;I)V

    const/4 v7, 0x2

    aput-object v2, v1, v7

    new-instance v2, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    const/16 v7, 0x10e

    invoke-direct {v2, v4, v7}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;I)V

    const/4 v9, 0x3

    aput-object v2, v1, v9

    new-instance v2, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    invoke-direct {v2, v8, v7}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;I)V

    const/4 v9, 0x4

    aput-object v2, v1, v9

    new-instance v2, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    invoke-direct {v2, v4, v3}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;I)V

    const/4 v9, 0x5

    aput-object v2, v1, v9

    new-instance v2, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    invoke-direct {v2, v13, v3}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;I)V

    const/4 v9, 0x6

    aput-object v2, v1, v9

    new-instance v2, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    invoke-direct {v2, v0, v3}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;I)V

    const/4 v9, 0x7

    aput-object v2, v1, v9

    new-instance v2, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    invoke-direct {v2, v13, v7}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;I)V

    const/16 v9, 0x8

    aput-object v2, v1, v9

    new-instance v2, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    invoke-direct {v2, v4, v10, v11}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;IZ)V

    const/16 v9, 0x9

    aput-object v2, v1, v9

    new-instance v2, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    invoke-direct {v2, v5, v6}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;I)V

    const/16 v9, 0xa

    aput-object v2, v1, v9

    new-instance v2, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    invoke-direct {v2, v0, v6}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;I)V

    const/16 v9, 0xb

    aput-object v2, v1, v9

    new-instance v2, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    invoke-direct {v2, v14, v10}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;I)V

    const/16 v9, 0xc

    aput-object v2, v1, v9

    new-instance v2, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    invoke-direct {v2, v0, v7}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;I)V

    const/16 v9, 0xd

    aput-object v2, v1, v9

    new-instance v2, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    invoke-direct {v2, v5, v7}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;I)V

    const/16 v9, 0xe

    aput-object v2, v1, v9

    new-instance v2, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    invoke-direct {v2, v4, v3, v11}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;IZ)V

    const/16 v3, 0xf

    aput-object v2, v1, v3

    new-instance v2, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    invoke-direct {v2, v13, v6}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;I)V

    const/16 v3, 0x10

    aput-object v2, v1, v3

    new-instance v2, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    invoke-direct {v2, v0, v10}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;I)V

    const/16 v0, 0x11

    aput-object v2, v1, v0

    new-instance v0, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    invoke-direct {v0, v13, v10}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;I)V

    const/16 v2, 0x12

    aput-object v0, v1, v2

    new-instance v0, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    invoke-direct {v0, v4, v10}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;I)V

    const/16 v2, 0x13

    aput-object v0, v1, v2

    new-instance v0, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    invoke-direct {v0, v8, v6}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;I)V

    const/16 v2, 0x14

    aput-object v0, v1, v2

    new-instance v0, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    invoke-direct {v0, v4, v6}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;I)V

    const/16 v2, 0x15

    aput-object v0, v1, v2

    new-instance v0, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    invoke-direct {v0, v5, v10}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;I)V

    const/16 v2, 0x16

    aput-object v0, v1, v2

    new-instance v0, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    invoke-direct {v0, v4, v7, v11}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;IZ)V

    const/16 v2, 0x17

    aput-object v0, v1, v2

    new-instance v0, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    invoke-direct {v0, v8, v10}, Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;-><init>(Landroid/graphics/Path;I)V

    const/16 v2, 0x18

    aput-object v0, v1, v2

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mCellConfigs:[Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    return-void

    :array_0
    .array-data 4
        0x4290851f    # 72.26f
        0x432568f6    # 165.41f
        0x437c4ccd    # 252.3f
        0x43ab2666    # 342.3f
    .end array-data

    :array_1
    .array-data 4
        0x429c0000    # 78.0f
        0x43033333    # 131.2f
        0x42d70000    # 107.5f
        0x418e6666    # 17.8f
    .end array-data

    :array_2
    .array-data 4
        0x42500000    # 52.0f
        0x42433333    # 48.8f
        0x42900000    # 72.0f
        0x41400000    # 12.0f
    .end array-data

    :array_3
    .array-data 4
        0x42480000    # 50.0f
        0x42cc199a    # 102.05f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x42180000    # 38.0f
        0x42200000    # 40.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x42b40000    # 90.0f
        0x42500000    # 52.0f
    .end array-data

    :array_6
    .array-data 4
        0x420dcccd    # 35.45f
        0x41f08f5c    # 30.07f
        0x420c0000    # 35.0f
        0x420d999a    # 35.4f
    .end array-data

    :array_7
    .array-data 4
        0x41c00000    # 24.0f
        0x41f80000    # 31.0f
        -0x3df40000    # -35.0f
        0x41fccccd    # 31.6f
    .end array-data

    :array_8
    .array-data 4
        0x41d00000    # 26.0f
        -0x3e080000    # -31.0f
        -0x3e080000    # -31.0f
        0x41d00000    # 26.0f
    .end array-data

    :array_9
    .array-data 4
        0x42a20000    # 81.0f
        -0x3e413333    # -23.85f
    .end array-data

    :array_a
    .array-data 4
        0x42500000    # 52.0f
        -0x3e300000    # -26.0f
        -0x3de00000    # -40.0f
    .end array-data

    :array_b
    .array-data 4
        0x42b40000    # 90.0f
        -0x3db00000    # -52.0f
        -0x3db00000    # -52.0f
    .end array-data
.end method

.method private updateColor(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mCellStates:[Lcom/google/android/settings/biometrics/face/anim/curve/CellState;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mEnrolledCount:I

    invoke-direct {p0, v2, v0}, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->getScrimNotEnrolledColor(II)I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->updateScrimNotEnrolledColor(IZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mCellConfigs:[Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->initializeCells(II)V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mCellStates:[Lcom/google/android/settings/biometrics/face/anim/curve/CellState;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mCellConfigs:[Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->updateConfig(Lcom/google/android/settings/biometrics/face/anim/curve/CellConfig;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mNoActivityScrimState:Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;

    invoke-virtual {v0, p1}, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;->draw(Landroid/graphics/Canvas;)V

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mCellStates:[Lcom/google/android/settings/biometrics/face/anim/curve/CellState;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mGridState:Lcom/google/android/settings/biometrics/face/anim/curve/GridState;

    invoke-virtual {v0, p1}, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mCellStates:[Lcom/google/android/settings/biometrics/face/anim/curve/CellState;

    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->drawCursor(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onAcquired(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mCellStates:[Lcom/google/android/settings/biometrics/face/anim/curve/CellState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->isDone()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mNoActivityScrimState:Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;

    invoke-virtual {v1}, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mNoActivityScrimState:Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;

    invoke-virtual {v1}, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;->fadeOut()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mCellStates:[Lcom/google/android/settings/biometrics/face/anim/curve/CellState;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->onAcquired()V

    if-nez v0, :cond_1

    iget p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mEnrolledCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mEnrolledCount:I

    invoke-direct {p0, v0}, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->updateColor(Z)V

    :cond_1
    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onUserEnterGood()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mGridState:Lcom/google/android/settings/biometrics/face/anim/curve/GridState;

    invoke-virtual {v0}, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->fadeIn()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mCellStates:[Lcom/google/android/settings/biometrics/face/anim/curve/CellState;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->fadeScrimIn()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUserLeaveGood()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mCellStates:[Lcom/google/android/settings/biometrics/face/anim/curve/CellState;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->fadeScrimOut(I)V

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mCellStates:[Lcom/google/android/settings/biometrics/face/anim/curve/CellState;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->fadeCursorNow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mGridState:Lcom/google/android/settings/biometrics/face/anim/curve/GridState;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->fadeOut(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pulseForNoActivity(II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mCellStates:[Lcom/google/android/settings/biometrics/face/anim/curve/CellState;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->pulseForNoActivity(I)V

    return-void
.end method

.method public restoreState(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mCellStates:[Lcom/google/android/settings/biometrics/face/anim/curve/CellState;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->setEarlyDone()V

    iget p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mEnrolledCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mEnrolledCount:I

    :cond_0
    return-void
.end method

.method public setEarlyDone(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mCellStates:[Lcom/google/android/settings/biometrics/face/anim/curve/CellState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mCellStates:[Lcom/google/android/settings/biometrics/face/anim/curve/CellState;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->setEarlyDone()V

    iget p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mEnrolledCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mEnrolledCount:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->updateColor(Z)V

    return-void
.end method

.method public stopPulseForNoActivity()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridController;->mCellStates:[Lcom/google/android/settings/biometrics/face/anim/curve/CellState;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/settings/biometrics/face/anim/curve/CellState;->stopPulseForNoActivity()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
