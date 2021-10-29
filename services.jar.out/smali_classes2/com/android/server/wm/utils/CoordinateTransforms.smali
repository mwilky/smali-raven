.class public Lcom/android/server/wm/utils/CoordinateTransforms;
.super Ljava/lang/Object;
.source "CoordinateTransforms.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scaleRectSize(Landroid/graphics/Rect;F)V
    .locals 3

    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public static transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V
    .locals 3

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    neg-int v1, p2

    int-to-float v1, v1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    neg-int v0, p1

    int-to-float v0, v0

    neg-int v1, p2

    int-to-float v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_0

    :pswitch_2
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V
    .locals 3

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float v1, p2

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_2
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float v1, p1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static transformRect(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 4

    if-nez p2, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    move-object p2, v0

    :cond_0
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, p2, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static transformToRotation(IIIILandroid/graphics/Matrix;)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    move v1, p2

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    if-eqz v0, :cond_3

    move v2, p3

    goto :goto_2

    :cond_3
    move v2, p2

    :goto_2
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {p0, v2, v1, p4}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V

    invoke-static {p1, v2, v1, v3}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    invoke-virtual {p4, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public static transformToRotation(IILandroid/view/DisplayInfo;Landroid/graphics/Matrix;)V
    .locals 4

    iget v0, p2, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p2, Landroid/view/DisplayInfo;->rotation:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    move v0, v1

    if-eqz v0, :cond_2

    iget v1, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_1

    :cond_2
    iget v1, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_1
    if-eqz v0, :cond_3

    iget v2, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_2

    :cond_3
    iget v2, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_2
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {p0, v2, v1, p3}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V

    invoke-static {p1, v2, v1, v3}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    invoke-virtual {p3, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method
