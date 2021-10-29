.class public Lcom/google/android/systemui/smartspace/PageIndicator;
.super Landroid/widget/LinearLayout;
.source "PageIndicator.java"


# instance fields
.field private mCurrentPageIndex:I

.field private mNumPages:I

.field private mPrimaryColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x1010036

    invoke-static {p1, v0}, Lcom/google/android/systemui/smartspace/PageIndicator;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPrimaryColor:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x1010036

    invoke-static {p1, p2}, Lcom/google/android/systemui/smartspace/PageIndicator;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPrimaryColor:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x1010036

    invoke-static {p1, p2}, Lcom/google/android/systemui/smartspace/PageIndicator;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPrimaryColor:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x1010036

    invoke-static {p1, p2}, Lcom/google/android/systemui/smartspace/PageIndicator;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPrimaryColor:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    return-void
.end method

.method public static getAttrColor(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method private initializePageIndicators()V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/bcsmartspace/R$dimen;->page_indicator_dot_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v2, v1

    :goto_1
    iget v3, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    goto :goto_2

    :cond_1
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_3

    :cond_2
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_3
    if-nez v2, :cond_3

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_4

    :cond_3
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :goto_4
    iget v6, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    sub-int/2addr v6, v4

    if-ne v2, v6, :cond_4

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_5

    :cond_4
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    :goto_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/android/systemui/bcsmartspace/R$drawable;->page_indicator_dot:I

    invoke-static {v4, v6}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v6, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPrimaryColor:I

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_6
    iget v4, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    if-gez v4, :cond_6

    iput v1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    goto :goto_7

    :cond_6
    iget v5, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    if-lt v4, v5, :cond_7

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    :cond_7
    :goto_7
    iget v4, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    if-ne v2, v4, :cond_8

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_8
    const v4, 0x3ecccccd    # 0.4f

    :goto_8
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPrimaryColor:I

    const/high16 v3, 0x424c0000    # 51.0f

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/systemui/bcsmartspace/R$string;->accessibility_smartspace_page:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    iget v1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public setNumPages(I)V
    .locals 2

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total number of pages invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Assuming 1 page."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PageIndicator"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    :cond_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v0, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/PageIndicator;->initializePageIndicators()V

    :cond_2
    return-void
.end method

.method public setPageOffset(IF)V
    .locals 11

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    iget v1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    const-string v1, "PageIndicator"

    if-ltz p1, :cond_8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-lt p1, v2, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v6

    const v7, 0x3ecccccd    # 0.4f

    add-float/2addr v1, v7

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    mul-float/2addr v6, p2

    add-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/bcsmartspace/R$string;->accessibility_smartspace_page:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    float-to-double v7, p2

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    cmpg-double v7, v7, v9

    if-gez v7, :cond_3

    move v7, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v7, p1, 0x2

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    iget v6, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_4

    const v1, 0x3f7d70a4    # 0.99f

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_6

    :cond_4
    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move p1, v4

    :goto_1
    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    :cond_6
    return-void

    :cond_7
    :goto_2
    const-string p0, "Current and next dot missing. Cannot set current page offset."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    :goto_3
    const-string p0, "Current dot index invalid. Cannot set current page offset."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 2

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPrimaryColor:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPrimaryColor:I

    const/high16 v1, 0x424c0000    # 51.0f

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPrimaryColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
