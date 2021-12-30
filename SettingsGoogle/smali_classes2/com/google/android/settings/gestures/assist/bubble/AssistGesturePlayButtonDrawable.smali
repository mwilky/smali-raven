.class public Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AssistGesturePlayButtonDrawable.java"


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mCircleCenter:Landroid/graphics/PointF;

.field private mCircleRadius:F

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->mCircleCenter:Landroid/graphics/PointF;

    return-void
.end method

.method private distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 4

    iget p0, p2, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p0, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private drawTriangle(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 4

    const-wide v0, 0x3fe0c15240000000L    # 0.5235987901687622

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p0, v2

    mul-float/2addr p0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p4

    new-instance v1, Landroid/graphics/PointF;

    sub-float p4, p3, p4

    invoke-direct {v1, p2, p4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance p4, Landroid/graphics/PointF;

    add-float v2, p2, p0

    add-float/2addr v0, p3

    invoke-direct {p4, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    sub-float p0, p2, p0

    invoke-direct {v2, p0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 p0, 0x42b40000    # 90.0f

    invoke-virtual {p1, p0, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    sget-object p2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p0, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget p2, v1, Landroid/graphics/PointF;->x:F

    iget p3, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget p2, p4, Landroid/graphics/PointF;->x:F

    iget p3, p4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, v2, Landroid/graphics/PointF;->x:F

    iget p3, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget p2, v1, Landroid/graphics/PointF;->x:F

    iget p3, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    invoke-virtual {p1, p0, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->mBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->mCircleCenter:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, v1, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->mCircleCenter:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->mCircleRadius:F

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x5a

    const/16 v2, 0x78

    const/16 v3, 0xa0

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->mCircleCenter:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->mCircleRadius:F

    iget-object v3, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0xc

    int-to-float v5, v0

    iget-object v6, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->drawTriangle(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public hitTest(FF)Z
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->mCircleCenter:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p1}, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide p1

    iget p0, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->mCircleRadius:F

    float-to-double v0, p0

    cmpg-double p0, p1, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/bubble/AssistGesturePlayButtonDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
