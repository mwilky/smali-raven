.class public final Lcom/google/android/systemui/assist/uihints/GlowView;
.super Landroid/widget/FrameLayout;
.source "GlowView.java"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBlueGlow:Landroid/widget/ImageView;

.field public mBlurProvider:Lcom/google/android/systemui/assist/uihints/BlurProvider;

.field public mBlurRadius:I

.field public mEdgeLights:[Lcom/android/systemui/assist/ui/EdgeLight;

.field public mGlowImageCropRegion:Landroid/graphics/RectF;

.field public final mGlowImageMatrix:Landroid/graphics/Matrix;

.field public mGlowImageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public mGlowWidthRatio:F

.field public mGreenGlow:Landroid/widget/ImageView;

.field public mMinimumHeightPx:I

.field public final mPaint:Landroid/graphics/Paint;

.field public mRedGlow:Landroid/widget/ImageView;

.field public mTranslationY:I

.field public mYellowGlow:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/GlowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/assist/uihints/GlowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/systemui/assist/uihints/GlowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/graphics/RectF;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p3, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageCropRegion:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageMatrix:Landroid/graphics/Matrix;

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mBlurRadius:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mPaint:Landroid/graphics/Paint;

    new-instance p2, Lcom/google/android/systemui/assist/uihints/BlurProvider;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f08044a

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/google/android/systemui/assist/uihints/BlurProvider;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mBlurProvider:Lcom/google/android/systemui/assist/uihints/BlurProvider;

    return-void
.end method


# virtual methods
.method public final distributeEvenly()V
    .locals 6

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "dimen"

    const-string v3, "android"

    const-string/jumbo v4, "rounded_corner_radius_bottom"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v5, "rounded_corner_radius"

    invoke-virtual {v1, v5, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :cond_1
    move v1, v4

    :cond_2
    int-to-float v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v2, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowWidthRatio:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const v3, 0x3f75c28f    # 0.96f

    mul-float/2addr v3, v2

    sub-float/2addr v0, v2

    add-float v2, v0, v3

    add-float v4, v2, v3

    add-float/2addr v3, v4

    iget-object v5, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mBlueGlow:Landroid/widget/ImageView;

    mul-float/2addr v0, v1

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mRedGlow:Landroid/widget/ImageView;

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mYellowGlow:Landroid/widget/ImageView;

    mul-float/2addr v4, v1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setX(F)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGreenGlow:Landroid/widget/ImageView;

    mul-float/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setX(F)V

    return-void
.end method

.method public final getGlowHeight()I
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowWidthRatio:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageCropRegion:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageCropRegion:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageCropRegion:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float v2, v1, p0

    :goto_0
    mul-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public final onFinishInflate()V
    .locals 4

    const v0, 0x7f0b00fc

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mBlueGlow:Landroid/widget/ImageView;

    const v0, 0x7f0b0544

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mRedGlow:Landroid/widget/ImageView;

    const v0, 0x7f0b07b0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mYellowGlow:Landroid/widget/ImageView;

    const v0, 0x7f0b02c0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGreenGlow:Landroid/widget/ImageView;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mBlueGlow:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mRedGlow:Landroid/widget/ImageView;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mYellowGlow:Landroid/widget/ImageView;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGreenGlow:Landroid/widget/ImageView;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageViews:Ljava/util/ArrayList;

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    new-instance p1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda6;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setBlurredImageOnViews(I)V
    .locals 13

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mBlurRadius:I

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mBlurProvider:Lcom/google/android/systemui/assist/uihints/BlurProvider;

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mBuffer:Landroid/graphics/Bitmap;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x42480000    # 50.0f

    const/4 v4, 0x1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mImageSource:Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;

    iget-object v5, v1, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v4

    div-float v6, v2, v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v3

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    iget-object v1, v1, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v6, v1

    add-float/2addr v6, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mBuffer:Landroid/graphics/Bitmap;

    :cond_0
    int-to-float p1, p1

    iget-object v1, v0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mBuffer:Landroid/graphics/Bitmap;

    const/high16 v5, 0x447a0000    # 1000.0f

    const/4 v6, 0x0

    invoke-static {p1, v6, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    cmpg-float v5, p1, v2

    if-gtz v5, :cond_1

    new-instance p1, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mImageSource:Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->mDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v6, v6, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p1, v0, v1}, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)V

    goto/16 :goto_d

    :cond_1
    const/16 v5, 0x19

    const/4 v7, 0x0

    move v8, v5

    move v9, v7

    :goto_0
    int-to-float v10, v8

    cmpg-float v10, v10, p1

    if-gez v10, :cond_2

    add-int/lit8 v9, v9, 0x1

    mul-int/lit8 v8, v8, 0x2

    goto :goto_0

    :cond_2
    iget-object v8, v0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mImageSource:Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v11, v8, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v11, v11

    shl-int v9, v4, v9

    int-to-float v9, v9

    div-float/2addr v2, v9

    mul-float/2addr v11, v2

    add-float/2addr v11, v3

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v9, v11

    add-int/2addr v9, v5

    iget-object v11, v8, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v2

    add-float/2addr v11, v3

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    add-int/2addr v11, v5

    invoke-virtual {v10, v7, v7, v9, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    sget-object v9, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {v10, v7, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/BlendMode;)V

    int-to-float v5, v5

    invoke-virtual {v10, v5, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v10, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v5, v8, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget-object v11, v8, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v5, v7, v7, v9, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, v8, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    mul-float/2addr p1, v2

    iget-object v5, v0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mBlurKernel:Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;

    invoke-virtual {v5, v1}, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->prepareInputAllocation(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v1}, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->prepareOutputAllocation(Landroid/graphics/Bitmap;)V

    const/high16 v8, 0x41c80000    # 25.0f

    invoke-static {p1, v6, v8}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    iget-object v8, v5, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v8, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    iget-object p1, v5, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v8, v5, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastInputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {p1, v8}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    iget-object p1, v5, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v8, v5, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {p1, v8}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    iget-object p1, v5, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {p1, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    iget-object p1, v0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mImageSource:Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;

    iget-object p1, p1, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    add-float/2addr p1, v3

    float-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int p1, v8

    iget-object v5, v0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mImageSource:Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;

    iget-object v5, v5, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move v3, v7

    :goto_1
    if-ge v3, p1, :cond_5

    move v5, v7

    :goto_2
    if-ge v5, v2, :cond_4

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v3, v7

    :goto_3
    move v5, v7

    :goto_4
    if-ge v5, v2, :cond_8

    move v8, v3

    :goto_5
    if-ge v8, p1, :cond_7

    invoke-virtual {v1, v8, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    if-eqz v9, :cond_6

    move v7, v5

    goto :goto_6

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    :goto_6
    add-int/lit8 v5, p1, -0x1

    :goto_7
    if-lt v5, v3, :cond_b

    add-int/lit8 v8, v2, -0x1

    :goto_8
    if-lt v8, v7, :cond_a

    invoke-virtual {v1, v5, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    if-eqz v9, :cond_9

    move p1, v5

    goto :goto_9

    :cond_9
    add-int/lit8 v8, v8, -0x1

    goto :goto_8

    :cond_a
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    :cond_b
    :goto_9
    add-int/lit8 v5, v2, -0x1

    :goto_a
    if-lt v5, v7, :cond_e

    add-int/lit8 v8, p1, -0x1

    :goto_b
    if-lt v8, v3, :cond_d

    invoke-virtual {v1, v8, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    if-eqz v9, :cond_c

    move v2, v5

    goto :goto_c

    :cond_c
    add-int/lit8 v8, v8, -0x1

    goto :goto_b

    :cond_d
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    :cond_e
    :goto_c
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v3, v3

    int-to-float v7, v7

    int-to-float p1, p1

    int-to-float v2, v2

    invoke-direct {v5, v3, v7, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p1, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p1, v2, v5}, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)V

    :goto_d
    iget-object v0, p1, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;->cropRegion:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageCropRegion:Landroid/graphics/RectF;

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowWidthRatio:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->getGlowHeight()I

    move-result v1

    int-to-float v1, v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v6, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageCropRegion:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageViews:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;

    invoke-direct {v1, v4, p0, p1}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setGlowsY(II[Lcom/android/systemui/assist/ui/EdgeLight;)V
    .locals 6

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mTranslationY:I

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mMinimumHeightPx:I

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mEdgeLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p3, :cond_0

    array-length v2, p3

    if-ne v2, v1, :cond_0

    sub-int/2addr p1, p2

    mul-int/2addr p1, v1

    aget-object v2, p3, v0

    iget v2, v2, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    const/4 v3, 0x1

    aget-object v3, p3, v3

    iget v3, v3, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    add-float/2addr v2, v3

    const/4 v3, 0x2

    aget-object v3, p3, v3

    iget v3, v3, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    add-float/2addr v2, v3

    const/4 v3, 0x3

    aget-object v3, p3, v3

    iget v3, v3, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    add-float/2addr v2, v3

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p3, v0

    iget v3, v3, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    div-float/2addr v3, v2

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    add-int/2addr v3, p2

    sub-int/2addr v5, v3

    int-to-float v3, v5

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v1, :cond_1

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageViews:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p3

    sub-int/2addr p3, p1

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setTranslationY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/16 p1, 0x8

    if-ne v0, p1, :cond_1

    iget p1, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mBlurRadius:I

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/GlowView;->setBlurredImageOnViews(I)V

    :cond_1
    return-void
.end method

.method public final updateGlowSizes()V
    .locals 6

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowWidthRatio:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->getGlowHeight()I

    move-result v1

    iget v2, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowWidthRatio:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->getGlowHeight()I

    move-result v3

    int-to-float v3, v3

    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageCropRegion:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->distributeEvenly()V

    return-void
.end method
