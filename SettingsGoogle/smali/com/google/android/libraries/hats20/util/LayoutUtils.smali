.class public final Lcom/google/android/libraries/hats20/util/LayoutUtils;
.super Ljava/lang/Object;
.source "LayoutUtils.java"


# direct methods
.method public static fitTextInTextViewWrapIfNeeded(FIILjava/lang/String;Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;)V
    .locals 1

    invoke-virtual {p4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/libraries/hats20/util/LayoutUtils;->getFontSizeGivenSpace(FIILjava/lang/String;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    if-nez p0, :cond_0

    int-to-float p0, p2

    invoke-virtual {p4, p1, p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->setMinTextSize(IF)V

    const/4 p1, 0x2

    invoke-virtual {p4, p1, p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->setTextSize(IF)V

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {p4, p1}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->setMaxLines(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p4, p1, p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->setTextSize(IF)V

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {p4, p1}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->setMaxLines(I)V

    :goto_0
    return-void
.end method

.method private static getFontSizeGivenSpace(FIILjava/lang/String;Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    int-to-float p1, p1

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    iget p4, p4, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr p1, p4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1, p3, v0}, Lcom/google/android/libraries/hats20/util/LayoutUtils;->measureTextAtFontSize(ILjava/lang/String;Landroid/widget/TextView;)F

    move-result p4

    :goto_0
    cmpl-float p4, p4, p0

    if-lez p4, :cond_0

    if-le p1, p2, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1, p3, v0}, Lcom/google/android/libraries/hats20/util/LayoutUtils;->measureTextAtFontSize(ILjava/lang/String;Landroid/widget/TextView;)F

    move-result p4

    goto :goto_0

    :cond_0
    if-lez p4, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getNavigationBarDimensionPixelSize(Landroid/app/Activity;)Landroid/graphics/Point;
    .locals 3

    invoke-static {p0}, Lcom/google/android/libraries/hats20/util/LayoutUtils;->getRealScreenDimensions(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/libraries/hats20/util/LayoutUtils;->getUsableContentDimensions(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ge v1, v2, :cond_0

    new-instance v1, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v2

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1

    :cond_0
    iget v1, p0, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_1

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1

    :cond_1
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    return-object p0
.end method

.method public static getRealScreenDimensions(Landroid/app/Activity;)Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    new-instance p0, Landroid/graphics/Point;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public static getUsableContentDimensions(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public static isNavigationBarOnRight(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/libraries/hats20/util/LayoutUtils;->getUsableContentDimensions(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {p0}, Lcom/google/android/libraries/hats20/util/LayoutUtils;->getRealScreenDimensions(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->x:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static measureTextAtFontSize(ILjava/lang/String;Landroid/widget/TextView;)F
    .locals 1

    int-to-float p0, p0

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0
.end method
