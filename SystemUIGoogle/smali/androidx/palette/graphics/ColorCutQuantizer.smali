.class public final Landroidx/palette/graphics/ColorCutQuantizer;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/palette/graphics/ColorCutQuantizer$Vbox;
    }
.end annotation


# static fields
.field public static final VBOX_COMPARATOR_VOLUME:Landroidx/palette/graphics/ColorCutQuantizer$1;


# instance fields
.field public final mColors:[I

.field public final mFilters:[Landroidx/palette/graphics/Palette$Filter;

.field public final mHistogram:[I

.field public final mQuantizedColors:Ljava/util/ArrayList;

.field public final mTempHsl:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/palette/graphics/ColorCutQuantizer$1;

    invoke-direct {v0}, Landroidx/palette/graphics/ColorCutQuantizer$1;-><init>()V

    sput-object v0, Landroidx/palette/graphics/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Landroidx/palette/graphics/ColorCutQuantizer$1;

    return-void
.end method

.method public constructor <init>([II[Landroidx/palette/graphics/Palette$Filter;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [F

    iput-object v3, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mTempHsl:[F

    move-object/from16 v3, p3

    iput-object v3, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$Filter;

    const v3, 0x8000

    new-array v4, v3, [I

    iput-object v4, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    array-length v7, v1

    const/16 v8, 0x8

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-ge v6, v7, :cond_0

    aget v7, v1, v6

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v11

    invoke-static {v11, v8, v9}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v11

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v12

    invoke-static {v12, v8, v9}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v12

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v7, v8, v9}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v7

    shl-int/lit8 v8, v11, 0xa

    shl-int/lit8 v9, v12, 0x5

    or-int/2addr v8, v9

    or-int/2addr v7, v8

    aput v7, v1, v6

    aget v8, v4, v7

    add-int/2addr v8, v10

    aput v8, v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move v1, v5

    move v6, v1

    :goto_1
    if-ge v1, v3, :cond_5

    aget v7, v4, v1

    if-lez v7, :cond_3

    shr-int/lit8 v7, v1, 0xa

    and-int/lit8 v7, v7, 0x1f

    shr-int/lit8 v11, v1, 0x5

    and-int/lit8 v11, v11, 0x1f

    and-int/lit8 v12, v1, 0x1f

    invoke-static {v7, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v7

    invoke-static {v11, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v11

    invoke-static {v12, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v12

    invoke-static {v7, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    iget-object v11, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mTempHsl:[F

    sget-object v12, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v12

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v13

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v12, v13, v7, v11}, Landroidx/core/graphics/ColorUtils;->RGBToHSL(III[F)V

    iget-object v7, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mTempHsl:[F

    iget-object v11, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$Filter;

    if-eqz v11, :cond_2

    array-length v12, v11

    if-lez v12, :cond_2

    array-length v11, v11

    move v12, v5

    :goto_2
    if-ge v12, v11, :cond_2

    iget-object v13, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$Filter;

    aget-object v13, v13, v12

    invoke-interface {v13, v7}, Landroidx/palette/graphics/Palette$Filter;->isAllowed([F)Z

    move-result v13

    if-nez v13, :cond_1

    move v7, v10

    goto :goto_3

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    move v7, v5

    :goto_3
    if-eqz v7, :cond_3

    aput v5, v4, v1

    :cond_3
    aget v7, v4, v1

    if-lez v7, :cond_4

    add-int/lit8 v6, v6, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    new-array v1, v6, [I

    iput-object v1, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    move v7, v5

    move v11, v7

    :goto_4
    if-ge v7, v3, :cond_7

    aget v12, v4, v7

    if-lez v12, :cond_6

    add-int/lit8 v12, v11, 0x1

    aput v7, v1, v11

    move v11, v12

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    if-gt v6, v2, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/ArrayList;

    :goto_5
    if-ge v5, v6, :cond_16

    aget v2, v1, v5

    iget-object v3, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/ArrayList;

    new-instance v7, Landroidx/palette/graphics/Palette$Swatch;

    shr-int/lit8 v10, v2, 0xa

    and-int/lit8 v10, v10, 0x1f

    shr-int/lit8 v11, v2, 0x5

    and-int/lit8 v11, v11, 0x1f

    and-int/lit8 v12, v2, 0x1f

    invoke-static {v10, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v10

    invoke-static {v11, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v11

    invoke-static {v12, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v12

    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    aget v2, v4, v2

    invoke-direct {v7, v10, v2}, Landroidx/palette/graphics/Palette$Swatch;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    new-instance v1, Ljava/util/PriorityQueue;

    sget-object v3, Landroidx/palette/graphics/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Landroidx/palette/graphics/ColorCutQuantizer$1;

    invoke-direct {v1, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    new-instance v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    iget-object v4, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    array-length v4, v4

    const/4 v6, -0x1

    add-int/2addr v4, v6

    invoke-direct {v3, v0, v5, v4}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;-><init>(Landroidx/palette/graphics/ColorCutQuantizer;II)V

    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    :goto_6
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    if-ge v3, v2, :cond_10

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    if-eqz v3, :cond_10

    iget v4, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v7, v4, 0x1

    iget v11, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    sub-int/2addr v7, v11

    if-le v7, v10, :cond_9

    move v7, v10

    goto :goto_7

    :cond_9
    move v7, v5

    :goto_7
    if-eqz v7, :cond_10

    add-int/lit8 v7, v4, 0x1

    sub-int/2addr v7, v11

    if-le v7, v10, :cond_a

    move v7, v10

    goto :goto_8

    :cond_a
    move v7, v5

    :goto_8
    if-eqz v7, :cond_f

    iget v7, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v12, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr v7, v12

    iget v12, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v13, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v12, v13

    iget v13, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v14, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr v13, v14

    if-lt v7, v12, :cond_b

    if-lt v7, v13, :cond_b

    const/4 v7, -0x3

    goto :goto_9

    :cond_b
    if-lt v12, v7, :cond_c

    if-lt v12, v13, :cond_c

    const/4 v7, -0x2

    goto :goto_9

    :cond_c
    move v7, v6

    :goto_9
    iget-object v12, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->this$0:Landroidx/palette/graphics/ColorCutQuantizer;

    iget-object v13, v12, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    iget-object v12, v12, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    invoke-static {v7, v11, v4, v13}, Landroidx/palette/graphics/ColorCutQuantizer;->modifySignificantOctet(III[I)V

    iget v4, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v11, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/2addr v11, v10

    invoke-static {v13, v4, v11}, Ljava/util/Arrays;->sort([III)V

    iget v4, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v11, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-static {v7, v4, v11, v13}, Landroidx/palette/graphics/ColorCutQuantizer;->modifySignificantOctet(III[I)V

    iget v4, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mPopulation:I

    div-int/lit8 v4, v4, 0x2

    iget v7, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    move v11, v5

    :goto_a
    iget v14, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v7, v14, :cond_e

    aget v15, v13, v7

    aget v15, v12, v15

    add-int/2addr v11, v15

    if-lt v11, v4, :cond_d

    add-int/lit8 v14, v14, -0x1

    invoke-static {v14, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_b

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_e
    iget v4, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    :goto_b
    new-instance v7, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    iget-object v11, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->this$0:Landroidx/palette/graphics/ColorCutQuantizer;

    add-int/lit8 v12, v4, 0x1

    iget v13, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-direct {v7, v11, v12, v13}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;-><init>(Landroidx/palette/graphics/ColorCutQuantizer;II)V

    iput v4, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-virtual {v3}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->fitBox()V

    invoke-virtual {v1, v7}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not split a box with only 1 color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    iget-object v4, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->this$0:Landroidx/palette/graphics/ColorCutQuantizer;

    iget-object v6, v4, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    iget-object v4, v4, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    iget v7, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    move v11, v5

    move v12, v11

    move v13, v12

    move v14, v13

    :goto_d
    iget v15, v3, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v7, v15, :cond_12

    aget v15, v6, v7

    aget v16, v4, v15

    add-int v12, v12, v16

    shr-int/lit8 v17, v15, 0xa

    and-int/lit8 v17, v17, 0x1f

    mul-int v17, v17, v16

    add-int v11, v17, v11

    shr-int/lit8 v17, v15, 0x5

    and-int/lit8 v17, v17, 0x1f

    mul-int v17, v17, v16

    add-int v13, v17, v13

    and-int/lit8 v15, v15, 0x1f

    mul-int v16, v16, v15

    add-int v14, v16, v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_12
    int-to-float v3, v11

    int-to-float v4, v12

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v6, v13

    div-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v7, v14

    div-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    new-instance v7, Landroidx/palette/graphics/Palette$Swatch;

    invoke-static {v3, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v3

    invoke-static {v6, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v6

    invoke-static {v4, v9, v8}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v4

    invoke-static {v3, v6, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-direct {v7, v3, v12}, Landroidx/palette/graphics/Palette$Swatch;-><init>(II)V

    invoke-virtual {v7}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v3

    iget-object v4, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$Filter;

    if-eqz v4, :cond_14

    array-length v6, v4

    if-lez v6, :cond_14

    array-length v4, v4

    move v6, v5

    :goto_e
    if-ge v6, v4, :cond_14

    iget-object v11, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$Filter;

    aget-object v11, v11, v6

    invoke-interface {v11, v3}, Landroidx/palette/graphics/Palette$Filter;->isAllowed([F)Z

    move-result v11

    if-nez v11, :cond_13

    move v3, v10

    goto :goto_f

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_14
    move v3, v5

    :goto_f
    if-nez v3, :cond_11

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_15
    iput-object v2, v0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/ArrayList;

    :cond_16
    return-void
.end method

.method public static modifySignificantOctet(III[I)V
    .locals 2

    const/4 v0, -0x2

    if-eq p0, v0, :cond_1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    if-gt p1, p2, :cond_2

    aget p0, p3, p1

    and-int/lit8 v0, p0, 0x1f

    shl-int/lit8 v0, v0, 0xa

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    shr-int/lit8 p0, p0, 0xa

    and-int/lit8 p0, p0, 0x1f

    or-int/2addr p0, v0

    aput p0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gt p1, p2, :cond_2

    aget p0, p3, p1

    shr-int/lit8 v0, p0, 0x5

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0xa

    shr-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    and-int/lit8 p0, p0, 0x1f

    or-int/2addr p0, v0

    aput p0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public static modifyWordWidth(III)I
    .locals 0

    if-le p2, p1, :cond_0

    sub-int p1, p2, p1

    shl-int/2addr p0, p1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p2

    shr-int/2addr p0, p1

    :goto_0
    const/4 p1, 0x1

    shl-int p2, p1, p2

    sub-int/2addr p2, p1

    and-int/2addr p0, p2

    return p0
.end method
