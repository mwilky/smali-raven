.class public final Lcom/android/wm/shell/pip/PipSnapAlgorithm;
.super Ljava/lang/Object;
.source "PipSnapAlgorithm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applySnapFraction(FLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p0, v1

    float-to-int p0, p0

    add-int/2addr v0, p0

    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v2, p0, v1

    if-gez v2, :cond_1

    sub-float/2addr p0, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p0, v1

    float-to-int p0, p0

    add-int/2addr v0, p0

    iget p0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_1
    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v3, p0, v2

    if-gez v3, :cond_2

    sub-float/2addr p0, v1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-float/2addr v0, p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    add-int/2addr v1, p0

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_2
    sub-float/2addr p0, v2

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-float/2addr v0, p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    add-int/2addr v1, p0

    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, p0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_0
    return-void
.end method

.method public static applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;FIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p2, p0, p1}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(FLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p4, p1

    iget p1, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr p4, p1

    goto :goto_0

    :cond_0
    iget p1, p5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p4

    iget p2, p6, Landroid/graphics/Rect;->right:I

    sub-int p4, p1, p2

    :goto_0
    iget p1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p4, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getSnapFraction(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p2, p3, v0, p1}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget p1, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    int-to-float p0, p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget p2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget p2, v0, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ne p2, v1, :cond_0

    return p0

    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_1

    add-float/2addr p1, v2

    return p1

    :cond_1
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    if-ne p2, p3, :cond_2

    const/high16 p1, 0x40000000    # 2.0f

    sub-float/2addr v2, p0

    add-float/2addr v2, p1

    return v2

    :cond_2
    const/high16 p0, 0x40400000    # 3.0f

    sub-float/2addr v2, p1

    add-float/2addr v2, p0

    return v2
.end method

.method public snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget p0, p1, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    iget p0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    iget p0, p2, Landroid/graphics/Rect;->right:I

    :cond_1
    :goto_0
    iget p4, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int v1, p0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p0

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ne p1, v1, :cond_2

    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3, p0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    :cond_2
    if-ne p1, v2, :cond_3

    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, p4, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    :cond_3
    if-ne p1, p0, :cond_4

    iget p0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3, p0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    :cond_4
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, p4, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_1
    return-void
.end method
