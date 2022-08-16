.class public final Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;
.super Lcom/android/systemui/assist/ui/CornerPathRenderer;
.source "PathSpecCornerPathRenderer.java"


# instance fields
.field public final mBottomCornerRadius:I

.field public final mHeight:I

.field public final mMatrix:Landroid/graphics/Matrix;

.field public final mPath:Landroid/graphics/Path;

.field public final mPathScale:F

.field public final mRoundedPath:Landroid/graphics/Path;

.field public final mTopCornerRadius:I

.field public final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/assist/ui/CornerPathRenderer;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {p1}, Landroidx/slice/view/R$plurals;->getWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mWidth:I

    invoke-static {p1}, Landroidx/slice/view/R$plurals;->getHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mHeight:I

    invoke-static {p1}, Landroidx/slice/view/R$plurals;->getCornerRadiusBottom(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mBottomCornerRadius:I

    invoke-static {p1}, Landroidx/slice/view/R$plurals;->getCornerRadiusTop(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mTopCornerRadius:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f13021b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "PathSpecCornerPathRenderer"

    const-string v0, "No rounded corner path found!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mRoundedPath:Landroid/graphics/Path;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mRoundedPath:Landroid/graphics/Path;

    :goto_0
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mRoundedPath:Landroid/graphics/Path;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mPathScale:F

    return-void
.end method


# virtual methods
.method public final getCornerPath(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)Landroid/graphics/Path;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mRoundedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mRoundedPath:Landroid/graphics/Path;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    iget p1, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mBottomCornerRadius:I

    const/16 v0, 0x10e

    iget v2, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mHeight:I

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mTopCornerRadius:I

    move v0, v1

    move v2, v0

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mTopCornerRadius:I

    const/16 v0, 0x5a

    iget v2, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mWidth:I

    move v6, v1

    move v1, v0

    move v0, v2

    move v2, v6

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mBottomCornerRadius:I

    const/16 v1, 0xb4

    iget v0, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mWidth:I

    iget v2, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mHeight:I

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    iget-object v3, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mRoundedPath:Landroid/graphics/Path;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    iget-object v3, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mMatrix:Landroid/graphics/Matrix;

    int-to-float p1, p1

    iget v4, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mPathScale:F

    div-float v5, p1, v4

    div-float/2addr p1, v4

    invoke-virtual {v3, v5, p1}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object p1, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object p1, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v0, v0

    int-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p0, p0, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;->mPath:Landroid/graphics/Path;

    return-object p0
.end method
