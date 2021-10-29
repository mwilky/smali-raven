.class public final Lcom/google/android/systemui/assist/uihints/BlurProvider;
.super Ljava/lang/Object;
.source "BlurProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;,
        Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;,
        Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;
    }
.end annotation


# instance fields
.field private final mBlurKernel:Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;

.field private mBuffer:Landroid/graphics/Bitmap;

.field private final mImageSource:Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mResources:Landroid/content/res/Resources;

    new-instance v0, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;

    invoke-direct {v0, p2}, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mImageSource:Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;

    new-instance p2, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mBlurKernel:Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;

    return-void
.end method

.method private blur(FLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    new-instance p1, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mImageSource:Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;

    invoke-virtual {p2}, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;-><init>(Lcom/google/android/systemui/assist/uihints/BlurProvider;Landroid/graphics/drawable/Drawable;)V

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/google/android/systemui/assist/uihints/BlurProvider;->getNumDownsampleStepsForEffectiveRadius(F)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mImageSource:Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;

    invoke-virtual {v1, p2, v0}, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->rasterize(Landroid/graphics/Bitmap;I)V

    invoke-static {v0}, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->getDownsampleScaleFactor(I)F

    move-result v1

    mul-float/2addr p1, v1

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mBlurKernel:Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;

    invoke-virtual {v1, p2, p3, p1}, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mImageSource:Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->getDownsampledWidth(I)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mImageSource:Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;

    invoke-virtual {p2, v0}, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->getDownsampledHeight(I)I

    move-result p2

    invoke-static {p3, p1, p2}, Lcom/google/android/systemui/assist/uihints/BlurProvider;->getBitmapVisibleRegion(Landroid/graphics/Bitmap;II)Landroid/graphics/RectF;

    move-result-object p1

    new-instance p2, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p2, p0, v0, p1}, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;-><init>(Lcom/google/android/systemui/assist/uihints/BlurProvider;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)V

    return-object p2
.end method

.method private static getBitmapVisibleRegion(Landroid/graphics/Bitmap;II)Landroid/graphics/RectF;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    move v2, v0

    :goto_1
    if-ge v2, p2, :cond_1

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_2
    move v2, v0

    :goto_3
    if-ge v2, p2, :cond_5

    move v3, v1

    :goto_4
    if-ge v3, p1, :cond_4

    invoke-virtual {p0, v3, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    goto :goto_5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    add-int/lit8 v2, p1, -0x1

    :goto_6
    if-lt v2, v1, :cond_8

    add-int/lit8 v3, p2, -0x1

    :goto_7
    if-lt v3, v0, :cond_7

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    if-eqz v4, :cond_6

    move p1, v2

    goto :goto_8

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_8
    :goto_8
    add-int/lit8 v2, p2, -0x1

    :goto_9
    if-lt v2, v0, :cond_b

    add-int/lit8 v3, p1, -0x1

    :goto_a
    if-lt v3, v1, :cond_a

    invoke-virtual {p0, v3, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    if-eqz v4, :cond_9

    move p2, v2

    goto :goto_b

    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_b
    :goto_b
    new-instance p0, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v0, v0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {p0, v1, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method private static getNumDownsampleStepsForEffectiveRadius(F)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x19

    :goto_0
    int-to-float v2, v1

    cmpg-float v2, v2, p0

    if-gez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public clearCaches()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mBuffer:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mBlurKernel:Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->clearCaches()V

    return-void
.end method

.method public get(I)Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mBuffer:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mImageSource:Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->createBitmapBuffer(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mBuffer:Landroid/graphics/Bitmap;

    :cond_0
    int-to-float p1, p1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/systemui/assist/uihints/BlurProvider;->blur(FLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;

    move-result-object p0

    return-object p0
.end method
