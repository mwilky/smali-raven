.class public final Lcom/google/android/setupdesign/GlifPatternDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GlifPatternDrawable.java"


# static fields
.field public static bitmapCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static patternLightness:[I

.field public static patternPaths:[Landroid/graphics/Path;


# instance fields
.field public color:I

.field public final tempPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/16 v2, 0xcc

    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/google/android/setupdesign/GlifPatternDrawable;->color:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public static invalidatePattern()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/setupdesign/GlifPatternDrawable;->bitmapCache:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method public createBitmapCache(II)Landroid/graphics/Bitmap;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    int-to-float v1, v1

    const v2, 0x44aac000    # 1366.0f

    div-float/2addr v1, v2

    move/from16 v3, p2

    int-to-float v3, v3

    const/high16 v4, 0x44400000    # 768.0f

    div-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float v5, v1, v4

    float-to-int v5, v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, v0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object v1, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    const/4 v6, 0x0

    const/4 v7, 0x7

    if-nez v1, :cond_0

    new-array v1, v7, [Landroid/graphics/Path;

    sput-object v1, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    new-array v8, v7, [I

    fill-array-data v8, :array_0

    sput-object v8, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternLightness:[I

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    aput-object v8, v1, v6

    const v1, 0x4480accd    # 1029.4f

    const v9, 0x43b2c000    # 357.5f

    invoke-virtual {v8, v1, v9}, Landroid/graphics/Path;->moveTo(FF)V

    const v1, 0x443dc666    # 759.1f

    invoke-virtual {v8, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v1, 0x0

    invoke-virtual {v8, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const v2, 0x448e3666    # 1137.7f

    invoke-virtual {v8, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    sget-object v2, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    const/4 v8, 0x1

    aput-object v15, v2, v8

    const v2, 0x448e4333    # 1138.1f

    invoke-virtual {v15, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const v2, -0x3cef3333    # -144.8f

    invoke-virtual {v15, v2, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    const v2, 0x43ba599a    # 372.7f

    invoke-virtual {v15, v2, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    const/high16 v2, -0x3bfd0000    # -524.0f

    invoke-virtual {v15, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    const v9, 0x44a15666    # 1290.7f

    const v10, 0x42f33333    # 121.6f

    const v11, 0x44986666    # 1219.2f

    const v12, 0x42246666    # 41.1f

    const v13, 0x44935666    # 1178.7f

    const/4 v14, 0x0

    move-object v8, v15

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    sget-object v2, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    const/4 v8, 0x2

    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    aput-object v15, v2, v8

    const v2, 0x446d7333    # 949.8f

    invoke-virtual {v15, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const v10, 0x42b93333    # 92.6f

    const v11, -0x3cd56666    # -170.6f

    const/high16 v12, 0x43550000    # 213.0f

    const v13, -0x3c23d99a    # -440.3f

    const v14, 0x4386b333    # 269.4f

    const/high16 v2, -0x3bc00000    # -768.0f

    move-object v9, v15

    move-object v8, v15

    move v15, v2

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    const v2, 0x44124000    # 585.0f

    invoke-virtual {v8, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const v2, 0x40066666    # 2.1f

    const v9, 0x443f8000    # 766.0f

    invoke-virtual {v8, v2, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    sget-object v2, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    const/4 v8, 0x3

    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    aput-object v15, v2, v8

    const v2, 0x43eb8ccd    # 471.1f

    invoke-virtual {v15, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const v2, 0x44302000    # 704.5f

    invoke-virtual {v15, v2, v1}, Landroid/graphics/Path;->rMoveTo(FF)V

    const v10, 0x448c7333    # 1123.6f

    const v11, 0x440cd333    # 563.3f

    const v12, 0x44806ccd    # 1027.4f

    const v13, 0x4389999a    # 275.2f

    const v14, 0x44560ccd    # 856.2f

    const/4 v2, 0x0

    move-object v9, v15

    move-object v8, v15

    move v15, v2

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v2, 0x43ee3333    # 476.4f

    invoke-virtual {v8, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const v2, -0x3f566666    # -5.3f

    invoke-virtual {v8, v2, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    sget-object v2, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    const/4 v8, 0x4

    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    aput-object v15, v2, v8

    const v2, 0x43a18ccd    # 323.1f

    invoke-virtual {v15, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const v8, 0x44426000    # 777.5f

    invoke-virtual {v15, v8, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const v10, 0x4425799a    # 661.9f

    const v11, 0x43ae6666    # 348.8f

    const v12, 0x43d5999a    # 427.2f

    const v13, 0x41ab3333    # 21.4f

    const v14, 0x43c8999a    # 401.2f

    const v8, 0x41cb3333    # 25.4f

    move-object v9, v15

    move-object v6, v15

    move v15, v8

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v6, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    sget-object v2, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    const/4 v6, 0x5

    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    aput-object v15, v2, v6

    const v2, 0x4332715f

    const v6, 0x443fb6db

    invoke-virtual {v15, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    const v2, 0x439a599a    # 308.7f

    invoke-virtual {v15, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    const v9, 0x43bed99a    # 381.7f

    const v10, 0x44172666    # 604.6f

    const v11, 0x43f0cccd    # 481.6f

    const v12, 0x43ac2666    # 344.3f

    const v13, 0x440c8ccd    # 562.2f

    const/16 v22, 0x0

    const/4 v14, 0x0

    move-object v8, v15

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v15, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    sget-object v2, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    const/4 v6, 0x6

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    aput-object v8, v2, v6

    const/high16 v2, 0x43120000    # 146.0f

    invoke-virtual {v8, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v8, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v8, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    const v1, 0x43c5199a    # 394.2f

    invoke-virtual {v8, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    const v17, 0x43a3d99a    # 327.7f

    const v18, 0x43eda666    # 475.3f

    const v19, 0x43648000    # 228.5f

    const/high16 v20, 0x43490000    # 201.0f

    const/high16 v21, 0x43120000    # 146.0f

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_1

    iget-object v1, v0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternLightness:[I

    aget v2, v2, v6

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    aget-object v1, v1, v6

    iget-object v2, v0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, v0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    return-object v3

    nop

    :array_0
    .array-data 4
        0xa
        0x28
        0x33
        0x42
        0x5b
        0x70
        0x82
    .end array-data
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Lcom/google/android/setupdesign/GlifPatternDrawable;->bitmapCache:Ljava/lang/ref/SoftReference;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v1, v5, :cond_1

    int-to-float v5, v5

    const v7, 0x45001000    # 2049.0f

    cmpg-float v5, v5, v7

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    if-le v2, v6, :cond_2

    int-to-float v5, v6

    const/high16 v6, 0x44900000    # 1152.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    if-nez v4, :cond_3

    iget-object v3, p0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/setupdesign/GlifPatternDrawable;->createBitmapCache(II)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/google/android/setupdesign/GlifPatternDrawable;->bitmapCache:Ljava/lang/ref/SoftReference;

    iget-object v1, p0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, p1, v4, v0}, Lcom/google/android/setupdesign/GlifPatternDrawable;->scaleCanvasToBounds(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v4, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget p0, p0, Lcom/google/android/setupdesign/GlifPatternDrawable;->color:I

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public scaleCanvasToBounds(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->scale(FF)V

    cmpl-float v1, p3, v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v1, :cond_0

    div-float/2addr p3, v0

    const p2, 0x3e158106    # 0.146f

    mul-float/2addr p0, p2

    invoke-virtual {p1, p3, v3, p0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_0

    :cond_0
    cmpl-float p0, v0, p3

    if-lez p0, :cond_1

    div-float/2addr v0, p3

    const p0, 0x3e6978d5    # 0.228f

    mul-float/2addr p2, p0

    invoke-virtual {p1, v3, v0, v2, p2}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
