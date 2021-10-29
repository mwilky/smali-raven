.class public Lcom/android/server/wm/utils/RotationAnimationUtils;
.super Ljava/lang/Object;
.source "RotationAnimationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .locals 2

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p3, v1, v0, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    int-to-float v1, p1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_1
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {p3, v1, v0, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_2
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p3, v1, v0, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    int-to-float v1, p2

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

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

.method public static getLumaOfSurfaceControl(Landroid/view/Display;Landroid/view/SurfaceControl;)F
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p1, v2, v3}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getMedianBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)F

    move-result v0

    return v0
.end method

.method public static getMedianBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)F
    .locals 14

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    invoke-static {p0}, Lcom/android/server/wm/utils/RotationAnimationUtils;->hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v4

    invoke-static {v1, v3, v4, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V

    invoke-virtual {v1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v2}, Landroid/media/Image;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    mul-int/lit8 v9, v5, 0x2

    mul-int/lit8 v10, v6, 0x2

    add-int/2addr v9, v10

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v5, :cond_2

    add-int/lit8 v12, v10, 0x1

    invoke-static {v4, v11, v3, v7, v8}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F

    move-result v13

    aput v13, v9, v10

    add-int/lit8 v10, v12, 0x1

    add-int/lit8 v13, v6, -0x1

    invoke-static {v4, v11, v13, v7, v8}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F

    move-result v13

    aput v13, v9, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v6, :cond_3

    add-int/lit8 v12, v10, 0x1

    invoke-static {v4, v3, v11, v7, v8}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F

    move-result v13

    aput v13, v9, v10

    add-int/lit8 v10, v12, 0x1

    add-int/lit8 v13, v5, -0x1

    invoke-static {v4, v13, v11, v7, v8}, Lcom/android/server/wm/utils/RotationAnimationUtils;->getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F

    move-result v13

    aput v13, v9, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    invoke-static {v9}, Ljava/util/Arrays;->sort([F)V

    array-length v3, v9

    div-int/lit8 v3, v3, 0x2

    aget v3, v9, v3

    return v3

    :cond_4
    :goto_2
    return v0

    :cond_5
    :goto_3
    return v0
.end method

.method private static getPixelLuminance(Ljava/nio/ByteBuffer;IIII)F
    .locals 3

    mul-int v0, p2, p4

    mul-int v1, p1, p3

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Color;->luminance()F

    move-result v2

    return v2
.end method

.method public static hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getUsage()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
