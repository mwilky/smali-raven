.class public Lcom/android/settingslib/drawable/UserIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "UserIconDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private mBadgeMargin:F

.field private mBadgeRadius:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mClearPaint:Landroid/graphics/Paint;

.field private mDisplayRadius:F

.field private mFrameColor:Landroid/content/res/ColorStateList;

.field private mFramePadding:F

.field private mFramePaint:Landroid/graphics/Paint;

.field private mFrameWidth:F

.field private final mIconMatrix:Landroid/graphics/Matrix;

.field private final mIconPaint:Landroid/graphics/Paint;

.field private mIntrinsicRadius:F

.field private mInvalidated:Z

.field private mPadding:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mSize:I

.field private mTintColor:Landroid/content/res/ColorStateList;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mUserDrawable:Landroid/graphics/drawable/Drawable;

.field private mUserIcon:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIconPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIconMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPadding:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mSize:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mInvalidated:Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mTintColor:Landroid/content/res/ColorStateList;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v5, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v4, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFrameColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-lez p1, :cond_0

    invoke-virtual {p0, v2, v2, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIntrinsicSize(I)V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/UserIconDrawable;

    return-void
.end method

.method private static getDrawableForDisplayDensity(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private initFramePaint()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFramePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFramePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFramePaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_0
    return-void
.end method

.method private rebake()V
    .locals 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mInvalidated:Z

    iget-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v4, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIconMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v4, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget v6, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIntrinsicRadius:F

    iget-object v7, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFrameColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    iget v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFrameWidth:F

    iget v2, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFramePadding:F

    add-float/2addr v2, v0

    const v4, 0x3a83126f    # 0.001f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    iget v2, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mDisplayRadius:F

    iget v5, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPadding:F

    sub-float/2addr v2, v5

    mul-float/2addr v0, v3

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    iget-object v6, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v5, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBadgeRadius:F

    cmpl-float v2, v0, v4

    if-lez v2, :cond_5

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iget-object v4, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    float-to-int v6, v4

    float-to-int v7, v2

    add-float v8, v4, v0

    float-to-int v8, v8

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v5, v6, v7, v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBadgeMargin:F

    add-float/2addr v0, v3

    iget v3, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBadgeRadius:F

    add-float/2addr v4, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mClearPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private shouldUpdateColorFilter(ILandroid/graphics/PorterDuff$Mode;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    check-cast p0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    if-ne v0, p1, :cond_1

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public bake()Lcom/android/settingslib/drawable/UserIconDrawable;
    .locals 3

    iget v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mSize:I

    if-lez v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mSize:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawable/UserIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->rebake()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFrameColor:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFramePaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mClearPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Baking requires an explicit intrinsic size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mInvalidated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->rebake()V

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mTintColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mTintColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/drawable/UserIconDrawable;->shouldUpdateColorFilter(ILandroid/graphics/PorterDuff$Mode;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->getIntrinsicWidth()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mSize:I

    if-gtz v0, :cond_0

    iget p0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIntrinsicRadius:F

    float-to-int p0, p0

    mul-int/lit8 v0, p0, 0x2

    :cond_0
    return v0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->invalidateSelf()V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mInvalidated:Z

    return-void
.end method

.method public isStateful()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFrameColor:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v0, v2

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    iget v5, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mDisplayRadius:F

    mul-float/2addr v5, v2

    float-to-int v2, v5

    if-eq v3, v2, :cond_3

    :cond_1
    iput v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mDisplayRadius:F

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mDisplayRadius:F

    iget v2, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFrameWidth:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFramePadding:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPadding:F

    sub-float/2addr v0, v2

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    sub-float/2addr v3, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    add-float/2addr v5, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    add-float/2addr p1, v0

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIntrinsicRadius:F

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIntrinsicRadius:F

    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIntrinsicRadius:F

    sub-float v4, p1, v3

    sub-float v5, v0, v3

    add-float/2addr p1, v3

    add-float/2addr v0, v3

    invoke-direct {v1, v4, v5, p1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIconMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->invalidateSelf()V

    :cond_6
    :goto_1
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setBadge(Landroid/graphics/drawable/Drawable;)Lcom/android/settingslib/drawable/UserIconDrawable;
    .locals 2

    iput-object p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mClearPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mClearPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mClearPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mClearPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->invalidateSelf()V

    :goto_0
    return-object p0
.end method

.method public setBadgeIfManagedUser(Landroid/content/Context;I)Lcom/android/settingslib/drawable/UserIconDrawable;
    .locals 1

    const/16 v0, -0x2710

    if-eq p2, v0, :cond_1

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const p2, 0x1080376

    invoke-static {p1, p2}, Lcom/android/settingslib/drawable/UserIconDrawable;->getDrawableForDisplayDensity(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object p0

    return-object p0
.end method

.method public setBadgeMargin(F)V
    .locals 0

    iput p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBadgeMargin:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setBadgeRadius(F)V
    .locals 0

    iput p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBadgeRadius:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setFrameColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->initFramePaint()V

    iput-object p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFrameColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->invalidateSelf()V

    return-void
.end method

.method public setFramePadding(F)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->initFramePaint()V

    iput p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFramePadding:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setFrameWidth(F)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->initFramePaint()V

    iput p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFrameWidth:F

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/UserIconDrawable;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iput-object p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mIconPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settingslib/drawable/UserIconDrawable;
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    iput-object v1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public setIntrinsicSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mSize:I

    return-void
.end method

.method public setPadding(F)V
    .locals 0

    iput p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mPadding:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mTintColor:Landroid/content/res/ColorStateList;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/drawable/UserIconDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
