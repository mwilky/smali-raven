.class public Lcom/google/android/systemui/smartspace/PageIndicator;
.super Landroid/widget/LinearLayout;
.source "PageIndicator.java"


# instance fields
.field public mCurrentPageIndex:I

.field public mNumPages:I

.field public mPrimaryColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/PageIndicator;->getAttrColor(Landroid/content/Context;)I

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

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/PageIndicator;->getAttrColor(Landroid/content/Context;)I

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

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/PageIndicator;->getAttrColor(Landroid/content/Context;)I

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

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/PageIndicator;->getAttrColor(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPrimaryColor:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    return-void
.end method

.method public static getAttrColor(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010036

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method


# virtual methods
.method public final setNumPages(I)V
    .locals 8

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total number of pages invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Assuming 1 page."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PageIndicator"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_0
    const/4 v1, 0x2

    if-ge p1, v1, :cond_1

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceTemplateDataUtils;->updateVisibility(Landroid/view/View;I)V

    iget v3, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    if-eq p1, v3, :cond_c

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    iget v3, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    sub-int/2addr p1, v3

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f070639

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    move v3, v2

    :goto_1
    iget v4, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    if-ge v3, v4, :cond_b

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    goto :goto_2

    :cond_3
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_3

    :cond_4
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_3
    if-nez v3, :cond_5

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_4

    :cond_5
    invoke-virtual {v5, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :goto_4
    iget v6, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    sub-int/2addr v6, v0

    if-ne v3, v6, :cond_6

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_5

    :cond_6
    invoke-virtual {v5, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    :goto_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f08077f

    invoke-static {v6, v7}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget v7, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mPrimaryColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_6
    iget v5, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    if-gez v5, :cond_8

    iput v2, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    goto :goto_7

    :cond_8
    iget v6, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    if-lt v5, v6, :cond_9

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    :cond_9
    :goto_7
    iget v5, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mCurrentPageIndex:I

    if-ne v3, v5, :cond_a

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_a
    const v5, 0x3ecccccd    # 0.4f

    :goto_8
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v3, 0x7f1300b8

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    iget v2, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->mNumPages:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c
    return-void
.end method
