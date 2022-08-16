.class public final Landroidx/palette/graphics/Palette$Builder;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/palette/graphics/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public final mFilters:Ljava/util/ArrayList;

.field public mMaxColors:I

.field public mRegion:Landroid/graphics/Rect;

.field public mResizeArea:I

.field public mResizeMaxDimension:I

.field public final mTargets:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/util/ArrayList;

    const/16 v1, 0x10

    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    const/16 v1, 0x3100

    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroidx/palette/graphics/Palette;->DEFAULT_FILTER:Landroidx/palette/graphics/Palette$1;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    sget-object p0, Landroidx/palette/graphics/Target;->LIGHT_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Landroidx/palette/graphics/Target;->VIBRANT:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Landroidx/palette/graphics/Target;->DARK_VIBRANT:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Landroidx/palette/graphics/Target;->LIGHT_MUTED:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Landroidx/palette/graphics/Target;->MUTED:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Landroidx/palette/graphics/Target;->DARK_MUTED:Landroidx/palette/graphics/Target;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bitmap is not valid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final generate()Landroidx/palette/graphics/Palette;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_17

    iget v2, v0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    if-lez v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v5, v2

    iget v2, v0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    if-le v5, v2, :cond_1

    int-to-double v2, v2

    int-to-double v4, v5

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    goto :goto_0

    :cond_0
    iget v2, v0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    if-lez v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v5, v0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    if-le v2, v5, :cond_1

    int-to-double v3, v5

    int-to-double v5, v2

    div-double/2addr v3, v5

    :cond_1
    :goto_0
    const-wide/16 v5, 0x0

    cmpg-double v2, v3, v5

    const/4 v5, 0x0

    if-gtz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v6, v2

    mul-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v1, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    iget-object v2, v0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget-object v3, v0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v3, v3

    iget-object v6, v0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v3, v6

    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-double v6, v6

    mul-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    int-to-double v6, v6

    mul-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-double v6, v6

    mul-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    int-to-double v6, v6

    mul-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    :cond_3
    new-instance v2, Landroidx/palette/graphics/ColorCutQuantizer;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int v4, v3, v13

    new-array v4, v4, [I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v1

    move-object v7, v4

    move v9, v3

    move v12, v3

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object v6, v0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, v0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    mul-int v8, v6, v7

    new-array v8, v8, [I

    move v9, v5

    :goto_2
    if-ge v9, v7, :cond_5

    iget-object v10, v0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v9

    mul-int/2addr v11, v3

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v10

    mul-int v10, v9, v6

    invoke-static {v4, v11, v8, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    move-object v4, v8

    :goto_3
    iget v3, v0, Landroidx/palette/graphics/Palette$Builder;->mMaxColors:I

    iget-object v6, v0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    iget-object v6, v0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Landroidx/palette/graphics/Palette$Filter;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/palette/graphics/Palette$Filter;

    :goto_4
    invoke-direct {v2, v4, v3, v6}, Landroidx/palette/graphics/ColorCutQuantizer;-><init>([II[Landroidx/palette/graphics/Palette$Filter;)V

    iget-object v3, v0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v3, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    iget-object v1, v2, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/ArrayList;

    new-instance v2, Landroidx/palette/graphics/Palette;

    iget-object v0, v0, Landroidx/palette/graphics/Palette$Builder;->mTargets:Ljava/util/ArrayList;

    invoke-direct {v2, v1, v0}, Landroidx/palette/graphics/Palette;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v5

    :goto_5
    if-ge v1, v0, :cond_16

    iget-object v3, v2, Landroidx/palette/graphics/Palette;->mTargets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/palette/graphics/Target;

    iget-object v4, v3, Landroidx/palette/graphics/Target;->mWeights:[F

    array-length v4, v4

    const/4 v6, 0x0

    move v8, v5

    move v9, v6

    :goto_6
    if-ge v8, v4, :cond_9

    iget-object v10, v3, Landroidx/palette/graphics/Target;->mWeights:[F

    aget v10, v10, v8

    cmpl-float v11, v10, v6

    if-lez v11, :cond_8

    add-float/2addr v9, v10

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_9
    cmpl-float v4, v9, v6

    if-eqz v4, :cond_b

    iget-object v4, v3, Landroidx/palette/graphics/Target;->mWeights:[F

    array-length v4, v4

    move v8, v5

    :goto_7
    if-ge v8, v4, :cond_b

    iget-object v10, v3, Landroidx/palette/graphics/Target;->mWeights:[F

    aget v11, v10, v8

    cmpl-float v12, v11, v6

    if-lez v12, :cond_a

    div-float/2addr v11, v9

    aput v11, v10, v8

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_b
    iget-object v4, v2, Landroidx/palette/graphics/Palette;->mSelectedSwatches:Landroidx/collection/SimpleArrayMap;

    iget-object v8, v2, Landroidx/palette/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v9, v5

    move v11, v6

    const/4 v10, 0x0

    :goto_8
    const/4 v12, 0x1

    if-ge v9, v8, :cond_14

    iget-object v13, v2, Landroidx/palette/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/palette/graphics/Palette$Swatch;

    invoke-virtual {v13}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v14

    aget v15, v14, v12

    iget-object v7, v3, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    aget v16, v7, v5

    cmpl-float v16, v15, v16

    const/16 v17, 0x2

    if-ltz v16, :cond_c

    aget v7, v7, v17

    cmpg-float v7, v15, v7

    if-gtz v7, :cond_c

    aget v7, v14, v17

    iget-object v14, v3, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    aget v15, v14, v5

    cmpl-float v15, v7, v15

    if-ltz v15, :cond_c

    aget v14, v14, v17

    cmpg-float v7, v7, v14

    if-gtz v7, :cond_c

    iget-object v7, v2, Landroidx/palette/graphics/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    iget v14, v13, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    invoke-virtual {v7, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-nez v7, :cond_c

    move v7, v12

    goto :goto_9

    :cond_c
    move v7, v5

    :goto_9
    if-eqz v7, :cond_12

    invoke-virtual {v13}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v7

    iget-object v14, v2, Landroidx/palette/graphics/Palette;->mDominantSwatch:Landroidx/palette/graphics/Palette$Swatch;

    if-eqz v14, :cond_d

    iget v14, v14, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    goto :goto_a

    :cond_d
    move v14, v12

    :goto_a
    iget-object v15, v3, Landroidx/palette/graphics/Target;->mWeights:[F

    aget v15, v15, v5

    cmpl-float v16, v15, v6

    const/high16 v18, 0x3f800000    # 1.0f

    if-lez v16, :cond_e

    aget v16, v7, v12

    iget-object v5, v3, Landroidx/palette/graphics/Target;->mSaturationTargets:[F

    aget v5, v5, v12

    sub-float v16, v16, v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v18, v5

    mul-float/2addr v5, v15

    goto :goto_b

    :cond_e
    move v5, v6

    :goto_b
    iget-object v15, v3, Landroidx/palette/graphics/Target;->mWeights:[F

    aget v15, v15, v12

    cmpl-float v16, v15, v6

    if-lez v16, :cond_f

    aget v7, v7, v17

    iget-object v6, v3, Landroidx/palette/graphics/Target;->mLightnessTargets:[F

    aget v6, v6, v12

    sub-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v18, v18, v6

    mul-float v18, v18, v15

    goto :goto_c

    :cond_f
    const/16 v18, 0x0

    :goto_c
    iget-object v6, v3, Landroidx/palette/graphics/Target;->mWeights:[F

    aget v6, v6, v17

    const/4 v7, 0x0

    cmpl-float v12, v6, v7

    if-lez v12, :cond_10

    iget v12, v13, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    int-to-float v12, v12

    int-to-float v14, v14

    div-float/2addr v12, v14

    mul-float/2addr v12, v6

    goto :goto_d

    :cond_10
    move v12, v7

    :goto_d
    add-float v5, v5, v18

    add-float/2addr v5, v12

    if-eqz v10, :cond_11

    cmpl-float v6, v5, v11

    if-lez v6, :cond_13

    :cond_11
    move v11, v5

    move-object v10, v13

    goto :goto_e

    :cond_12
    move v7, v6

    :cond_13
    :goto_e
    add-int/lit8 v9, v9, 0x1

    move v6, v7

    const/4 v5, 0x0

    goto/16 :goto_8

    :cond_14
    if-eqz v10, :cond_15

    iget-object v5, v2, Landroidx/palette/graphics/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    iget v6, v10, Landroidx/palette/graphics/Palette$Swatch;->mRgb:I

    invoke-virtual {v5, v6, v12}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_15
    invoke-virtual {v4, v3, v10}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_16
    iget-object v0, v2, Landroidx/palette/graphics/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    return-object v2

    :cond_17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
