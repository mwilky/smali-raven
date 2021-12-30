.class public final Lcom/google/android/libraries/hats20/ui/StarRatingBar;
.super Landroid/view/View;
.source "StarRatingBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/hats20/ui/StarRatingBar$SavedState;,
        Lcom/google/android/libraries/hats20/ui/StarRatingBar$OnRatingChangeListener;
    }
.end annotation


# instance fields
.field private accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private emptyStarBitmap:Landroid/graphics/Bitmap;

.field private numStars:I

.field private onRatingChangeListener:Lcom/google/android/libraries/hats20/ui/StarRatingBar$OnRatingChangeListener;

.field private paint:Landroid/graphics/Paint;

.field private rating:I

.field private starBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xb

    iput v0, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->numStars:I

    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0xb

    iput p2, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->numStars:I

    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0xb

    iput p2, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->numStars:I

    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p2, 0xb

    iput p2, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->numStars:I

    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getDistanceBetweenStars()F
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->starBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget p0, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->numStars:I

    add-int/lit8 p0, p0, -0x1

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method private getRatingAtTouchPoint(FF)I
    .locals 3

    invoke-direct {p0}, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->getDistanceBetweenStars()F

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->starBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    div-float v1, p2, v2

    add-float/2addr v0, v1

    const/4 v1, 0x1

    :goto_0
    cmpg-float v2, v0, p1

    if-gez v2, :cond_0

    iget v2, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->numStars:I

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-float/2addr v0, p2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private getStarXCoord(I)F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-direct {p0}, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->getDistanceBetweenStars()F

    move-result p0

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/hats20/ui/R$drawable;->quantum_ic_star_black_24:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->starBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/libraries/hats20/ui/R$drawable;->quantum_ic_star_border_grey600_24:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->emptyStarBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->paint:Landroid/graphics/Paint;

    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private setRating(I)V
    .locals 1

    if-lez p1, :cond_1

    iget v0, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->numStars:I

    if-gt p1, v0, :cond_1

    iget v0, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->rating:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->rating:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->onRatingChangeListener:Lcom/google/android/libraries/hats20/ui/StarRatingBar$OnRatingChangeListener;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->rating:I

    invoke-interface {p1, v0}, Lcom/google/android/libraries/hats20/ui/StarRatingBar$OnRatingChangeListener;->onRatingChanged(I)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->numStars:I

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->rating:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->starBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->emptyStarBitmap:Landroid/graphics/Bitmap;

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->getStarXCoord(I)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x15

    if-ne p1, v1, :cond_0

    iget p1, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->rating:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->setRating(I)V

    return v0

    :cond_0
    const/16 v1, 0x16

    if-ne p1, v1, :cond_1

    iget p1, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->rating:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->setRating(I)V

    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 3

    iget v0, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->numStars:I

    iget-object v1, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->starBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->starBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/google/android/libraries/hats20/ui/StarRatingBar$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/google/android/libraries/hats20/ui/StarRatingBar$SavedState;->numStars:I

    iput v0, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->numStars:I

    iget p1, p1, Lcom/google/android/libraries/hats20/ui/StarRatingBar$SavedState;->rating:I

    iput p1, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->rating:I

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/google/android/libraries/hats20/ui/StarRatingBar$SavedState;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/hats20/ui/StarRatingBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->numStars:I

    iput v1, v0, Lcom/google/android/libraries/hats20/ui/StarRatingBar$SavedState;->numStars:I

    iget p0, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->rating:I

    iput p0, v0, Lcom/google/android/libraries/hats20/ui/StarRatingBar$SavedState;->rating:I

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->getRatingAtTouchPoint(FF)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->setRating(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public setNumStars(I)V
    .locals 1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->numStars:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "numStars must be at least 3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnRatingChangeListener(Lcom/google/android/libraries/hats20/ui/StarRatingBar$OnRatingChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->onRatingChangeListener:Lcom/google/android/libraries/hats20/ui/StarRatingBar$OnRatingChangeListener;

    return-void
.end method
