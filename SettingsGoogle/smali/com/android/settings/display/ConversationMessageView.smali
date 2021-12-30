.class public Lcom/android/settings/display/ConversationMessageView;
.super Landroid/widget/FrameLayout;
.source "ConversationMessageView.java"


# instance fields
.field private mContactIconView:Landroid/widget/TextView;

.field private final mIconBackgroundColor:I

.field private final mIconText:Ljava/lang/CharSequence;

.field private final mIconTextColor:I

.field private final mIncoming:Z

.field private mMessageBubble:Landroid/widget/LinearLayout;

.field private final mMessageText:Ljava/lang/CharSequence;

.field private mMessageTextAndInfoView:Landroid/view/ViewGroup;

.field private mMessageTextView:Landroid/widget/TextView;

.field private mStatusTextView:Landroid/widget/TextView;

.field private final mTimestampText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object p3, Lcom/android/settings/R$styleable;->ConversationMessageView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x3

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    const/4 p3, 0x5

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/display/ConversationMessageView;->mTimestampText:Ljava/lang/CharSequence;

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/display/ConversationMessageView;->mIconText:Ljava/lang/CharSequence;

    const/4 p3, 0x2

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/display/ConversationMessageView;->mIconTextColor:I

    invoke-virtual {p2, p4, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/display/ConversationMessageView;->mIconBackgroundColor:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f06009d

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f06009c

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private static getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1
.end method

.method private static isLayoutRtl(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateTextAppearance()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v0, :cond_0

    const v1, 0x7f0a0133

    goto :goto_0

    :cond_0
    const v1, 0x7f0a0134

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x7f0a0263

    goto :goto_1

    :cond_1
    const v0, 0x7f0a0264

    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object p0, p0, Lcom/android/settings/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateViewAppearance()V
    .locals 11

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f0b01e5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f0b01e6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f0b01e4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iget-boolean v5, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v5, :cond_0

    add-int/2addr v1, v2

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_0

    :cond_0
    add-int/2addr v1, v2

    :goto_0
    if-eqz v5, :cond_1

    const v5, 0x800013

    goto :goto_1

    :cond_1
    const v5, 0x800015

    :goto_1
    const v6, 0x7f0b01e3

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f0b01e2

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-boolean v7, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v7, :cond_2

    const v8, 0x7f0203dd

    goto :goto_2

    :cond_2
    const v8, 0x7f0203de

    :goto_2
    if-eqz v7, :cond_3

    const v7, 0x7f0a012d

    goto :goto_3

    :cond_3
    const v7, 0x7f0a012e

    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v9, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-static {v9, v8, v7}, Lcom/android/settings/display/ConversationMessageView;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0}, Lcom/android/settings/display/ConversationMessageView;->isLayoutRtl(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    add-int/2addr v3, v0

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_4

    :cond_4
    iget-object v7, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    add-int/2addr v3, v0

    invoke-virtual {v7, v2, v3, v1, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v6, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0}, Lcom/android/settings/display/ConversationMessageView;->updateTextAppearance()V

    return-void
.end method

.method private updateViewContent()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mTimestampText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIconText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIconTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020118

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget p0, p0, Lcom/android/settings/display/ConversationMessageView;->mIconBackgroundColor:I

    invoke-static {v2, v0, p0}, Lcom/android/settings/display/ConversationMessageView;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    const v0, 0x7f0d035a

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    const v0, 0x7f0d035e

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    const v0, 0x7f0d035d

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    const v0, 0x7f0d035c

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    const v0, 0x7f0d0182

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/display/ConversationMessageView;->updateViewContent()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-static {p0}, Lcom/android/settings/display/ConversationMessageView;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    iget-object p3, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    iget-object p5, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    sub-int/2addr p4, p2

    sub-int p2, p4, p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p4

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p4

    :goto_0
    add-int p1, p4, p3

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p1

    :goto_1
    sub-int/2addr p4, p1

    sub-int/2addr p4, p3

    sub-int p1, p4, p2

    :goto_2
    iget-object v2, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    add-int/2addr p3, p4

    add-int/2addr p5, v0

    invoke-virtual {v2, p4, v0, p3, p5}, Landroid/widget/TextView;->layout(IIII)V

    iget-object p0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    add-int/2addr p2, p1

    add-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/display/ConversationMessageView;->updateViewAppearance()V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v1, p2, p2}, Landroid/widget/TextView;->measure(II)V

    iget-object p2, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v1, p2, p2}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0b01e1

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    sub-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    sub-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p2

    sub-int/2addr v1, p2

    const/high16 p2, -0x80000000

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2, v0}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object p2, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method
