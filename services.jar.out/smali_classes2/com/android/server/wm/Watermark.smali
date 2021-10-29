.class Lcom/android/server/wm/Watermark;
.super Ljava/lang/Object;
.source "Watermark.java"


# static fields
.field private static final TITLE:Ljava/lang/String; = "WatermarkSurface"


# instance fields
.field private final mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field private final mDeltaX:I

.field private final mDeltaY:I

.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mText:Ljava/lang/String;

.field private final mTextHeight:I

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextWidth:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;[Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v0, "WatermarkSurface"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v6, 0x0

    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    and-int/lit8 v7, v7, -0x2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_4

    aget-object v9, v3, v6

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aget-object v10, v3, v6

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x46

    const/16 v12, 0x66

    const/16 v13, 0x41

    const/16 v14, 0x61

    if-lt v9, v14, :cond_0

    if-gt v9, v12, :cond_0

    add-int/lit8 v15, v9, -0x61

    add-int/lit8 v15, v15, 0xa

    goto :goto_1

    :cond_0
    if-lt v9, v13, :cond_1

    if-gt v9, v11, :cond_1

    add-int/lit8 v15, v9, -0x41

    add-int/lit8 v15, v15, 0xa

    goto :goto_1

    :cond_1
    add-int/lit8 v15, v9, -0x30

    :goto_1
    if-lt v10, v14, :cond_2

    if-gt v10, v12, :cond_2

    add-int/lit8 v9, v10, -0x61

    add-int/lit8 v9, v9, 0xa

    goto :goto_2

    :cond_2
    if-lt v10, v13, :cond_3

    if-gt v10, v11, :cond_3

    add-int/lit8 v9, v10, -0x41

    add-int/lit8 v9, v9, 0xa

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v10, -0x30

    :goto_2
    mul-int/lit8 v10, v15, 0x10

    add-int/2addr v10, v9

    rsub-int v10, v10, 0xff

    int-to-char v10, v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    const/16 v9, 0x14

    const/4 v10, 0x1

    invoke-static {v3, v10, v10, v9, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v9

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v12, v9

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v12, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v12, v10}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    invoke-virtual {v11, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-int v8, v8

    iput v8, v1, Lcom/android/server/wm/Watermark;->mTextWidth:I

    iget v12, v10, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v13, v10, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v12, v13

    iput v12, v1, Lcom/android/server/wm/Watermark;->mTextHeight:I

    const/4 v13, 0x2

    mul-int/2addr v8, v13

    invoke-static {v3, v13, v6, v8, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v8

    iput v8, v1, Lcom/android/server/wm/Watermark;->mDeltaX:I

    const/4 v8, 0x3

    mul-int/2addr v12, v8

    invoke-static {v3, v8, v6, v12, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v8

    iput v8, v1, Lcom/android/server/wm/Watermark;->mDeltaY:I

    const/4 v8, 0x4

    const/high16 v12, -0x50000000

    invoke-static {v3, v8, v6, v12, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v8

    const/4 v12, 0x5

    const v13, 0x60ffffff

    invoke-static {v3, v12, v6, v13, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v12

    const/4 v13, 0x6

    const/4 v14, 0x7

    invoke-static {v3, v13, v6, v14, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v13

    const/16 v14, 0x8

    invoke-static {v3, v14, v6, v6, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v14

    const/16 v15, 0x9

    invoke-static {v3, v15, v6, v6, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v15, v13

    int-to-float v2, v14

    int-to-float v3, v6

    invoke-virtual {v11, v15, v2, v3, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const/4 v11, -0x3

    invoke-virtual {v3, v11}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    move-object v2, v3

    const v3, 0xf4240

    invoke-virtual {v4, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    const/4 v11, 0x0

    invoke-virtual {v3, v2, v11, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-static {v2, v4, v3, v0}, Lcom/android/server/wm/InputMonitor;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_3
    iput-object v2, v1, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v0, Landroid/graphics/BLASTBufferQueue;

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const-string v16, "WatermarkSurface"

    move-object v15, v0

    move-object/from16 v17, v2

    invoke-direct/range {v15 .. v20}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method drawIfNeeded()V
    .locals 14

    iget-boolean v0, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    iget v1, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    iget-object v3, p0, Lcom/android/server/wm/Watermark;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v4, p0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v4

    :goto_0
    if-eqz v3, :cond_5

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget v2, p0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    iget v4, p0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    iget v5, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int v6, v0, v5

    div-int/2addr v6, v2

    add-int v7, v0, v5

    mul-int v8, v6, v2

    sub-int/2addr v7, v8

    div-int/lit8 v8, v2, 0x4

    if-lt v7, v8, :cond_1

    sub-int v9, v2, v8

    if-le v7, v9, :cond_2

    :cond_1
    div-int/lit8 v9, v2, 0x3

    add-int/2addr v2, v9

    :cond_2
    iget v9, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    neg-int v9, v9

    neg-int v5, v5

    :cond_3
    :goto_1
    iget v10, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    add-int/2addr v10, v1

    if-ge v9, v10, :cond_4

    iget-object v10, p0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    int-to-float v11, v5

    int-to-float v12, v9

    iget-object v13, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/2addr v5, v2

    if-lt v5, v0, :cond_3

    iget v10, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v10, v0

    sub-int/2addr v5, v10

    add-int/2addr v9, v4

    goto :goto_1

    :cond_4
    iget-object v10, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v10, v3}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method

.method positionSurface(IILandroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    iput p2, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    iget-object v0, p0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p3, v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setBufferSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    :cond_1
    return-void
.end method
