.class public final Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;
.super Ljava/lang/Object;
.source "MediaNotificationProcessor.java"


# direct methods
.method public static findBackgroundSwatch(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Swatch;
    .locals 6

    new-instance v0, Landroidx/palette/graphics/Palette$Builder;

    invoke-direct {v0, p0}, Landroidx/palette/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    iget-object v2, v0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    :cond_0
    iget-object v2, v0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget-object v3, v0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, v0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, v0, Landroidx/palette/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v2, v5, v5, v1, p0}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The given region must intersect with the Bitmap\'s dimensions."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object p0, v0, Landroidx/palette/graphics/Palette$Builder;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    const/16 p0, 0x57e4

    iput p0, v0, Landroidx/palette/graphics/Palette$Builder;->mResizeArea:I

    const/4 p0, -0x1

    iput p0, v0, Landroidx/palette/graphics/Palette$Builder;->mResizeMaxDimension:I

    invoke-virtual {v0}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object v0

    iget-object v1, v0, Landroidx/palette/graphics/Palette;->mDominantSwatch:Landroidx/palette/graphics/Palette$Swatch;

    if-nez v1, :cond_3

    new-instance v1, Landroidx/palette/graphics/Palette$Swatch;

    const/16 v0, 0x64

    invoke-direct {v1, p0, v0}, Landroidx/palette/graphics/Palette$Swatch;-><init>(II)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isWhiteOrBlack([F)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, v0, Landroidx/palette/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/palette/graphics/Palette$Swatch;

    if-eq v3, v1, :cond_5

    iget v4, v3, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    int-to-float v4, v4

    cmpl-float v4, v4, v0

    if-lez v4, :cond_5

    invoke-virtual {v3}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isWhiteOrBlack([F)Z

    move-result v4

    if-nez v4, :cond_5

    iget v0, v3, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    int-to-float v0, v0

    move-object v2, v3

    goto :goto_1

    :cond_6
    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    iget p0, v1, Landroidx/palette/graphics/Palette$Swatch;->mPopulation:I

    int-to-float p0, p0

    div-float/2addr p0, v0

    const/high16 v0, 0x40200000    # 2.5f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_8

    goto :goto_2

    :cond_8
    move-object v1, v2

    :goto_2
    return-object v1
.end method

.method public static isWhiteOrBlack([F)Z
    .locals 3

    const/4 v0, 0x2

    aget p0, p0, v0

    const v0, 0x3da3d70a    # 0.08f

    cmpg-float v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    const v0, 0x3f666666    # 0.9f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method
