.class public final Lcom/google/android/systemui/assist/uihints/GlowView;
.super Landroid/widget/FrameLayout;
.source "GlowView.java"


# instance fields
.field private mBlueGlow:Landroid/widget/ImageView;

.field private mBlurProvider:Lcom/google/android/systemui/assist/uihints/BlurProvider;

.field private mBlurRadius:I

.field private mEdgeLights:[Lcom/android/systemui/assist/ui/EdgeLight;

.field private mGlowImageCropRegion:Landroid/graphics/RectF;

.field private final mGlowImageMatrix:Landroid/graphics/Matrix;

.field private mGlowImageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mGlowWidthRatio:F

.field private mGreenGlow:Landroid/widget/ImageView;

.field private mMinimumHeightPx:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mRedGlow:Landroid/widget/ImageView;

.field private mTranslationY:I

.field private mYellowGlow:Landroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$5m90GCvBsxectjDnv7-V3tvtDC0(Lcom/google/android/systemui/assist/uihints/GlowView;Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/GlowView;->lambda$setBlurredImageOnViews$0(Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y6W3o1-pbRrACePasfIxYQCVWMs(Lcom/google/android/systemui/assist/uihints/GlowView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->lambda$onSizeChanged$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$zRVuadU_533hw9HWqgzjqp0pN1Q(Lcom/google/android/systemui/assist/uihints/GlowView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->lambda$onSizeChanged$1()V

    return-void
.end method

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

    sget p4, Lcom/android/systemui/R$drawable;->glow_vector:I

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/google/android/systemui/assist/uihints/BlurProvider;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mBlurProvider:Lcom/google/android/systemui/assist/uihints/BlurProvider;

    return-void
.end method

.method private getGlowHeight()I
    .locals 2

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->getGlowWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->getGlowImageAspectRatio()F

    move-result p0

    mul-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method private getGlowImageAspectRatio()F
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageCropRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageCropRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageCropRegion:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method private getGlowWidth()I
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowWidthRatio:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method private synthetic lambda$onSizeChanged$1()V
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mTranslationY:I

    iget v1, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mMinimumHeightPx:I

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mEdgeLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/systemui/assist/uihints/GlowView;->setGlowsY(II[Lcom/android/systemui/assist/ui/EdgeLight;)V

    return-void
.end method

.method private synthetic lambda$onSizeChanged$2()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->updateGlowSizes()V

    new-instance v0, Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/assist/uihints/GlowView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$setBlurredImageOnViews$0(Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;Landroid/widget/ImageView;)V
    .locals 0

    iget-object p1, p1, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private setBlurredImageOnViews(I)V
    .locals 2

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mBlurRadius:I

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mBlurProvider:Lcom/google/android/systemui/assist/uihints/BlurProvider;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/assist/uihints/BlurProvider;->get(I)Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;

    move-result-object p1

    iget-object v0, p1, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;->cropRegion:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageCropRegion:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->updateGlowImageMatrix()V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageViews:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/assist/uihints/GlowView;Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateGlowImageMatrix()V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->getGlowWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->getGlowHeight()I

    move-result v1

    int-to-float v1, v1

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageCropRegion:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, p0, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    return-void
.end method

.method private updateGlowSizes()V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->getGlowWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->getGlowHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->updateGlowImageMatrix()V

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


# virtual methods
.method public clearCaches()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mBlurProvider:Lcom/google/android/systemui/assist/uihints/BlurProvider;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/BlurProvider;->clearCaches()V

    return-void
.end method

.method public distributeEvenly()V
    .locals 6

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/systemui/assist/uihints/DisplayUtils;->getCornerRadiusBottom(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

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

.method public getBlurRadius()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mBlurRadius:I

    return p0
.end method

.method public getGlowWidthRatio()F
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowWidthRatio:F

    return p0
.end method

.method protected onFinishInflate()V
    .locals 4

    sget v0, Lcom/android/systemui/R$id;->blue_glow:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mBlueGlow:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->red_glow:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mRedGlow:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->yellow_glow:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mYellowGlow:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->green_glow:I

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

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    new-instance p1, Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/assist/uihints/GlowView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/GlowView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setBlurRadius(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mBlurRadius:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/GlowView;->setBlurredImageOnViews(I)V

    return-void
.end method

.method public setGlowWidthRatio(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowWidthRatio:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowWidthRatio:F

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->updateGlowSizes()V

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GlowView;->distributeEvenly()V

    return-void
.end method

.method public setGlowsBlendMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v1, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mGlowImageViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/GlowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayerPaint(Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setGlowsY(II[Lcom/android/systemui/assist/ui/EdgeLight;)V
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

    invoke-virtual {v2}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result v2

    const/4 v3, 0x1

    aget-object v3, p3, v3

    invoke-virtual {v3}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result v3

    add-float/2addr v2, v3

    const/4 v3, 0x2

    aget-object v3, p3, v3

    invoke-virtual {v3}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result v3

    add-float/2addr v2, v3

    const/4 v3, 0x3

    aget-object v3, p3, v3

    invoke-virtual {v3}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result v3

    add-float/2addr v2, v3

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p3, v0

    invoke-virtual {v3}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result v3

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

.method public setVisibility(I)V
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

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/GlowView;->setBlurredImageOnViews(I)V

    :cond_1
    return-void
.end method
