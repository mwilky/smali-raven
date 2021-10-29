.class public Lcom/android/systemui/screenshot/TiledImageDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TiledImageDrawable.java"


# instance fields
.field private mNode:Landroid/graphics/RenderNode;

.field private final mTiles:Lcom/android/systemui/screenshot/ImageTileSet;


# direct methods
.method public static synthetic $r8$lambda$KhzbsUgtwhd3nEmZQ4XI3l7-jgI(Lcom/android/systemui/screenshot/TiledImageDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/TiledImageDrawable;->onContentChanged()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/screenshot/ImageTileSet;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mTiles:Lcom/android/systemui/screenshot/ImageTileSet;

    new-instance v0, Lcom/android/systemui/screenshot/TiledImageDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/TiledImageDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/TiledImageDrawable;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/screenshot/ImageTileSet;->addOnContentChangedListener(Lcom/android/systemui/screenshot/ImageTileSet$OnContentChangedListener;)V

    return-void
.end method

.method private onContentChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mNode:Landroid/graphics/RenderNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->discardDisplayList()V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private rebuildDisplayListIfNeeded()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mNode:Landroid/graphics/RenderNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mNode:Landroid/graphics/RenderNode;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "TiledImageDrawable"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mNode:Landroid/graphics/RenderNode;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mTiles:Lcom/android/systemui/screenshot/ImageTileSet;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ImageTileSet;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mTiles:Lcom/android/systemui/screenshot/ImageTileSet;

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/ImageTileSet;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    iget-object v0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mTiles:Lcom/android/systemui/screenshot/ImageTileSet;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ImageTileSet;->getLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mTiles:Lcom/android/systemui/screenshot/ImageTileSet;

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/ImageTileSet;->getTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mTiles:Lcom/android/systemui/screenshot/ImageTileSet;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ImageTileSet;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mTiles:Lcom/android/systemui/screenshot/ImageTileSet;

    invoke-virtual {v1, v3}, Lcom/android/systemui/screenshot/ImageTileSet;->get(I)Lcom/android/systemui/screenshot/ImageTile;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ImageTile;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ImageTile;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ImageTile;->getDisplayList()Landroid/graphics/RenderNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->endRecording()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/screenshot/TiledImageDrawable;->rebuildDisplayListIfNeeded()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_0
    const-string p0, "TiledImageDrawable"

    const-string p1, "Canvas is not hardware accelerated. Skipping draw!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mTiles:Lcom/android/systemui/screenshot/ImageTileSet;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->getHeight()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mTiles:Lcom/android/systemui/screenshot/ImageTileSet;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->getWidth()I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public setAlpha(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/TiledImageDrawable;->mNode:Landroid/graphics/RenderNode;

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "not implemented"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
