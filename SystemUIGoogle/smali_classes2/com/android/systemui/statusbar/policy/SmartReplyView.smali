.class public Lcom/android/systemui/statusbar/policy/SmartReplyView;
.super Landroid/view/ViewGroup;
.source "SmartReplyView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;,
        Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;,
        Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;,
        Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;,
        Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;
    }
.end annotation


# static fields
.field private static final DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final MEASURE_SPEC_ANY_LENGTH:I


# instance fields
.field private final mBreakIterator:Ljava/text/BreakIterator;

.field private mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentBackgroundColor:I

.field private mCurrentColorized:Z

.field private mCurrentRippleColor:I

.field private mCurrentStrokeColor:I

.field private mCurrentTextColor:I

.field private final mDefaultBackgroundColor:I

.field private final mDefaultStrokeColor:I

.field private final mDefaultTextColor:I

.field private final mDefaultTextColorDarkBg:I

.field private final mHeightUpperLimit:I

.field private mMaxNumActions:I

.field private mMaxSqueezeRemeasureAttempts:I

.field private mMinNumSystemGeneratedReplies:I

.field private final mMinStrokeContrast:D

.field private final mRippleColor:I

.field private final mRippleColorDarkBg:I

.field private mSmartRepliesGeneratedByAssistant:Z

.field private mSmartReplyContainer:Landroid/view/View;

.field private final mSpacing:I

.field private final mStrokeWidth:I


# direct methods
.method public static synthetic $r8$lambda$0Jpz-DXIOwR83bBwgq5htFNT4Uw(Landroid/view/View;Landroid/view/View;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->lambda$static$0(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->MEASURE_SPEC_ANY_LENGTH:I

    sget-object v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/statusbar/policy/SmartReplyView$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartRepliesGeneratedByAssistant:Z

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$dimen;->smart_reply_button_max_height:I

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mHeightUpperLimit:I

    sget v1, Lcom/android/systemui/R$color;->smart_reply_button_background:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultBackgroundColor:I

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$color;->smart_reply_button_text:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColor:I

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$color;->smart_reply_button_text_dark_bg:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColorDarkBg:I

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$color;->smart_reply_button_stroke:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultStrokeColor:I

    iget-object v3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$color;->notification_ripple_untinted_color:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColor:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/16 v4, 0xff

    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColorDarkBg:I

    invoke-static {v2, v1}, Lcom/android/internal/util/ContrastColorUtil;->calculateContrast(II)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinStrokeContrast:D

    sget-object v1, Lcom/android/systemui/R$styleable;->SmartReplyView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    sget v5, Lcom/android/systemui/R$styleable;->SmartReplyView_spacing:I

    if-ne v4, v5, :cond_0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    goto :goto_1

    :cond_0
    sget v5, Lcom/android/systemui/R$styleable;->SmartReplyView_buttonStrokeWidth:I

    if-ne v4, v5, :cond_1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iput v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mStrokeWidth:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSpacing:I

    invoke-static {}, Ljava/text/BreakIterator;->getLineInstance()Ljava/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    iget p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultBackgroundColor:I

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setBackgroundTintColor(IZ)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->reallocateCandidateButtonQueueForSqueezing()V

    return-void
.end method

.method private clearLayoutLineCount(Landroid/view/View;)V
    .locals 0

    instance-of p0, p1, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->nullLayouts()V

    :cond_0
    return-void
.end method

.method private estimateOptimalSqueezedButtonTextWidth(Landroid/widget/Button;)I
    .locals 13

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/Button;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0, p1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2, v0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    move-result v2

    if-ne v2, v3, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2}, Ljava/text/BreakIterator;->current()I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v5

    invoke-static {v0, v2, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_8

    const/4 v5, 0x1

    if-lez v2, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    iget v7, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMaxSqueezeRemeasureAttempts:I

    move v8, v4

    :goto_2
    if-ge v8, v7, :cond_8

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    if-eqz v2, :cond_3

    invoke-virtual {v9}, Ljava/text/BreakIterator;->previous()I

    move-result v9

    goto :goto_3

    :cond_3
    invoke-virtual {v9}, Ljava/text/BreakIterator;->next()I

    move-result v9

    :goto_3
    if-ne v9, v3, :cond_4

    goto :goto_6

    :cond_4
    invoke-static {v0, v4, v9, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v10

    invoke-static {v0, v9, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v11

    cmpg-float v12, v11, v6

    if-gez v12, :cond_8

    if-eqz v2, :cond_5

    cmpg-float v6, v10, v9

    if-gtz v6, :cond_6

    goto :goto_4

    :cond_5
    cmpl-float v6, v10, v9

    if-ltz v6, :cond_6

    :goto_4
    move v6, v5

    goto :goto_5

    :cond_6
    move v6, v4

    :goto_5
    if-eqz v6, :cond_7

    move v6, v11

    goto :goto_6

    :cond_7
    add-int/lit8 v8, v8, 0x1

    move v6, v11

    goto :goto_2

    :cond_8
    :goto_6
    float-to-double p0, v6

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private filterActionsOrReplies(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    instance-of v5, v3, Landroid/widget/Button;

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    if-ne v4, p1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getLeftCompoundDrawableWidthWithPadding(Landroid/widget/Button;)I
    .locals 1

    invoke-virtual {p1}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/Button;->getCompoundDrawablePadding()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private gotEnoughSmartReplies(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$200(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    iget p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinNumSystemGeneratedReplies:I

    if-lt v1, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static inflate(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/SmartReplyConstants;)Lcom/android/systemui/statusbar/policy/SmartReplyView;
    .locals 2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$layout;->smart_reply_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->getMaxNumActions()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setMaxNumActions(I)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->getMaxSqueezeRemeasureAttempts()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setMaxSqueezeRemeasureAttempts(I)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->getMinNumSystemGeneratedReplies()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setMinNumSystemGeneratedReplies(I)V

    return-object p0
.end method

.method private static synthetic lambda$static$0(Landroid/view/View;Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr p1, p0

    sub-int/2addr v0, p1

    return v0
.end method

.method private markButtonsWithPendingSqueezeStatusAs(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$300(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$302(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;I)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reallocateCandidateButtonQueueForSqueezing()V
    .locals 3

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/SmartReplyView;->DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    return-void
.end method

.method private remeasureButtonsIfNecessary(I)V
    .locals 9

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$200(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$300(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)I

    move-result v5

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-ne v5, v7, :cond_1

    const v6, 0x7fffffff

    move v5, v8

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-eq v7, p1, :cond_2

    goto :goto_2

    :cond_2
    move v8, v5

    :goto_2
    if-eqz v8, :cond_3

    const/high16 v5, -0x80000000

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/view/View;->measure(II)V

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private resetButtonsLayoutParams()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$202(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;Z)Z

    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$302(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setButtonColors(Landroid/widget/Button;)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentRippleColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mStrokeWidth:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentStrokeColor:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentTextColor:I

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private squeezeButton(Landroid/widget/Button;I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->estimateOptimalSqueezedButtonTextWidth(Landroid/widget/Button;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->squeezeButtonToTextWidth(Landroid/widget/Button;II)I

    move-result p0

    return p0
.end method

.method private squeezeButtonToTextWidth(Landroid/widget/Button;II)I
    .locals 3

    invoke-virtual {p1}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->clearLayoutLineCount(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getLeftCompoundDrawableWidthWithPadding(Landroid/widget/Button;)I

    move-result p0

    add-int/2addr v1, p0

    const/high16 p0, -0x80000000

    invoke-static {v1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p0, p2}, Landroid/widget/Button;->measure(II)V

    invoke-virtual {p1}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    invoke-virtual {p1}, Landroid/widget/Button;->getLineCount()I

    move-result p1

    const/4 p3, 0x2

    if-gt p1, p3, :cond_1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$302(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;I)I

    sub-int/2addr v0, p0

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x3

    invoke-static {p2, p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$302(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;I)I

    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public addPreInflatedButtons(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setButtonColors(Landroid/widget/Button;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->reallocateCandidateButtonQueueForSqueezing()V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$200(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->generateDefaultLayoutParams()Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;
    .locals 2

    new-instance p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(IILcom/android/systemui/statusbar/policy/SmartReplyView$1;)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(IILcom/android/systemui/statusbar/policy/SmartReplyView$1;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/SmartReplyView$1;)V

    return-object v0
.end method

.method public getHeightUpperLimit()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mHeightUpperLimit:I

    return p0
.end method

.method hideSmartSuggestions()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartReplyContainer:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    const/4 p3, 0x0

    const/4 p5, 0x1

    if-ne p1, p5, :cond_0

    goto :goto_0

    :cond_0
    move p5, p3

    :goto_0
    sub-int/2addr p4, p2

    if-eqz p5, :cond_1

    iget p1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int/2addr p4, p1

    goto :goto_1

    :cond_1
    iget p4, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move p2, p3

    :goto_2
    if-ge p2, p1, :cond_5

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$200(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-eqz p5, :cond_3

    sub-int v3, p4, v1

    goto :goto_3

    :cond_3
    move v3, p4

    :goto_3
    add-int v4, v3, v1

    invoke-virtual {v0, v3, p3, v4, v2}, Landroid/view/View;->layout(IIII)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSpacing:I

    add-int/2addr v1, v0

    if-eqz p5, :cond_4

    sub-int/2addr p4, v1

    goto :goto_4

    :cond_4
    add-int/2addr p4, v1

    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7fffffff

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->resetButtonsLayoutParams()V

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SmartReplyView"

    const-string v4, "Single line button queue leaked between onMeasure calls"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->clear()V

    :cond_1
    new-instance v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;

    iget v4, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v5, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;-><init>(II)V

    sget-object v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->ACTION:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->filterActionsOrReplies(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;)Ljava/util/List;

    move-result-object v4

    sget-object v6, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->REPLY:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->filterActionsOrReplies(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMaxNumActions:I

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v10, v5

    move v11, v10

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    const/4 v14, -0x1

    if-eq v9, v14, :cond_2

    iget-object v15, v13, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    sget-object v5, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->ACTION:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    if-ne v15, v5, :cond_2

    if-lt v10, v9, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->clearLayoutLineCount(Landroid/view/View;)V

    sget v5, Lcom/android/systemui/statusbar/policy/SmartReplyView;->MEASURE_SPEC_ANY_LENGTH:I

    invoke-virtual {v12, v5, v1}, Landroid/view/View;->measure(II)V

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v12

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getLineCount()I

    move-result v15

    const/4 v14, 0x1

    if-lt v15, v14, :cond_b

    const/4 v14, 0x2

    if-le v15, v14, :cond_3

    goto/16 :goto_4

    :cond_3
    const/4 v14, 0x1

    if-ne v15, v14, :cond_4

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v14, v5}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->clone()Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;

    move-result-object v5

    if-nez v8, :cond_5

    iget-object v14, v13, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    sget-object v15, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->REPLY:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    if-ne v14, v15, :cond_5

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->clone()Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;

    move-result-object v8

    :cond_5
    if-nez v11, :cond_6

    const/4 v14, 0x0

    goto :goto_2

    :cond_6
    iget v14, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSpacing:I

    :goto_2
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    move-object/from16 v16, v5

    iget v5, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    add-int/2addr v14, v15

    add-int/2addr v5, v14

    iput v5, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    iget v5, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    iget v5, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    if-le v5, v2, :cond_a

    :cond_7
    :goto_3
    iget v5, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    if-le v5, v2, :cond_8

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-direct {v0, v5, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->squeezeButton(Landroid/widget/Button;I)I

    move-result v12

    const/4 v14, -0x1

    if-eq v12, v14, :cond_7

    iget v15, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v5

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    iget v5, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    sub-int/2addr v5, v12

    iput v5, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    goto :goto_3

    :cond_8
    iget v5, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    if-le v5, v2, :cond_9

    const/4 v3, 0x3

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->markButtonsWithPendingSqueezeStatusAs(ILjava/util/List;)V

    move-object/from16 v3, v16

    goto :goto_4

    :cond_9
    const/4 v5, 0x2

    invoke-direct {v0, v5, v4}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->markButtonsWithPendingSqueezeStatusAs(ILjava/util/List;)V

    :cond_a
    const/4 v5, 0x1

    invoke-static {v13, v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$202(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;Z)Z

    add-int/lit8 v11, v11, 0x1

    iget-object v5, v13, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    sget-object v12, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->ACTION:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    if-ne v5, v12, :cond_b

    add-int/lit8 v10, v10, 0x1

    :cond_b
    :goto_4
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_c
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartRepliesGeneratedByAssistant:Z

    if-eqz v2, :cond_e

    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->gotEnoughSmartReplies(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$202(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;Z)Z

    goto :goto_5

    :cond_d
    move-object v3, v8

    :cond_e
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->clear()V

    iget v2, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->remeasureButtonsIfNecessary(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v2

    iget v4, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v5, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v4

    iget v3, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v4, p1

    invoke-static {v3, v4}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v3

    invoke-static {v2, v1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public resetSmartSuggestions(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartReplyContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultBackgroundColor:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setBackgroundTintColor(IZ)V

    return-void
.end method

.method public setBackgroundTintColor(IZ)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentColorized:Z

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentColorized:Z

    invoke-static {p1}, Landroid/app/Notification$Builder;->isColorDark(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColorDarkBg:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColor:I

    :goto_0
    const/high16 v2, -0x1000000

    or-int/2addr p1, v2

    invoke-static {v1, p1, v0}, Lcom/android/internal/util/ContrastColorUtil;->ensureTextContrast(IIZ)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentTextColor:I

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultStrokeColor:I

    iget-wide v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinStrokeContrast:D

    invoke-static {p2, p1, v0, v1, v2}, Lcom/android/internal/util/ContrastColorUtil;->ensureContrast(IIZD)I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentStrokeColor:I

    if-eqz v0, :cond_3

    iget p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColorDarkBg:I

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColor:I

    :goto_2
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentRippleColor:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_3
    if-ge p2, p1, :cond_4

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setButtonColors(Landroid/widget/Button;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public setMaxNumActions(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMaxNumActions:I

    return-void
.end method

.method public setMaxSqueezeRemeasureAttempts(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMaxSqueezeRemeasureAttempts:I

    return-void
.end method

.method public setMinNumSystemGeneratedReplies(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinNumSystemGeneratedReplies:I

    return-void
.end method

.method setSmartRepliesGeneratedByAssistant(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartRepliesGeneratedByAssistant:Z

    return-void
.end method
