.class public Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;
.super Landroid/view/ViewGroup;
.source "MatchParentShrinkingLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private mLayoutDirection:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mShowDividers:I

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAligned:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineChildTop:I

    const v3, 0x800033

    iput v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mLayoutDirection:I

    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setOrientation(I)V

    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setGravity(I)V

    :cond_1
    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setBaselineAligned(Z)V

    :cond_2
    const/4 p2, 0x4

    const/high16 p3, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mUseLargestChild:Z

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x7

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    const/16 p2, 0x8

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 0

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    return p0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    sub-int/2addr v3, v4

    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    :goto_2
    sub-int/2addr v0, v1

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    :goto_3
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_6
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_3
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    iget-boolean v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAligned:Z

    const-string v1, "layout:baselineAligned"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    const-string v1, "layout:baselineAlignedChildIndex"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineChildTop:I

    const-string v1, "measurement:baselineChildTop"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const-string v1, "measurement:orientation"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    const-string v1, "measurement:gravity"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    const-string v1, "measurement:totalLength"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    const-string v1, "layout:totalLength"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    iget-boolean p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mUseLargestChild:Z

    const-string v0, "layout:useLargestChild"

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->generateDefaultLayoutParams()Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    .locals 2

    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v0, -0x2

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    invoke-direct {p0, v0, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(II)V

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    new-instance p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(II)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    .locals 1

    new-instance v0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;
    .locals 0

    new-instance p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBaseline()I
    .locals 5

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_6

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    if-nez p0, :cond_1

    return v2

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineChildTop:I

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_3

    goto :goto_0

    :cond_3
    iget v2, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v3, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v2, p0

    goto :goto_0

    :cond_4
    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v3, p0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, p0

    add-int/2addr v2, v1

    return v2

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    return p0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDividerPadding()I
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    return p0
.end method

.method public getDividerWidth()I
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    return p0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    return p0
.end method

.method public getShowDividers()I
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    return p0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method getVirtualChildCount()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getWeightSum()F
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    return p0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    iget p0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    iget v2, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_5

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method layoutHorizontal(IIII)V
    .locals 24

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    iget v7, v6, Landroid/view/ViewGroup;->mPaddingTop:I

    sub-int v1, p4, p2

    iget v2, v6, Landroid/view/ViewGroup;->mPaddingBottom:I

    sub-int v8, v1, v2

    sub-int/2addr v1, v7

    sub-int v9, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v10

    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    const v2, 0x800007

    and-int/2addr v2, v1

    and-int/lit8 v11, v1, 0x70

    iget-boolean v12, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAligned:Z

    iget-object v13, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mMaxAscent:[I

    iget-object v14, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mMaxDescent:[I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v1

    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, v6, Landroid/view/ViewGroup;->mPaddingLeft:I

    goto :goto_0

    :cond_0
    iget v1, v6, Landroid/view/ViewGroup;->mPaddingLeft:I

    add-int v1, v1, p3

    sub-int v1, v1, p1

    iget v2, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget v1, v6, Landroid/view/ViewGroup;->mPaddingLeft:I

    sub-int v2, p3, p1

    iget v3, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v2, v3

    div-int/2addr v2, v15

    add-int/2addr v1, v2

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v10, -0x1

    move/from16 v16, v0

    const/16 v17, -0x1

    goto :goto_1

    :cond_2
    move/from16 v16, v2

    move/from16 v17, v5

    :goto_1
    move v3, v2

    :goto_2
    if-ge v3, v10, :cond_d

    mul-int v0, v17, v3

    add-int v2, v16, v0

    invoke-virtual {v6, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v6, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureNullChild(I)I

    move-result v0

    add-int/2addr v1, v0

    move/from16 v21, v5

    move/from16 v22, v7

    move/from16 v19, v10

    move/from16 v20, v11

    goto/16 :goto_6

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v15, 0x8

    if-eq v5, v15, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v4, v18

    check-cast v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    move/from16 v18, v3

    if-eqz v12, :cond_4

    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v19, v10

    const/4 v10, -0x1

    if-eq v3, v10, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v10

    goto :goto_3

    :cond_4
    move/from16 v19, v10

    :cond_5
    const/4 v10, -0x1

    :goto_3
    iget v3, v4, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_6

    move v3, v11

    :cond_6
    and-int/lit8 v3, v3, 0x70

    move/from16 v20, v11

    const/16 v11, 0x10

    if-eq v3, v11, :cond_a

    const/16 v11, 0x30

    if-eq v3, v11, :cond_8

    const/16 v11, 0x50

    if-eq v3, v11, :cond_7

    move v3, v7

    const/4 v11, -0x1

    goto :goto_4

    :cond_7
    sub-int v3, v8, v5

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v3, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v21, v21, v10

    const/4 v10, 0x2

    aget v22, v14, v10

    sub-int v22, v22, v21

    sub-int v3, v3, v22

    goto :goto_4

    :cond_8
    const/4 v11, -0x1

    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v7

    if-eq v10, v11, :cond_9

    const/16 v21, 0x1

    aget v22, v13, v21

    sub-int v22, v22, v10

    add-int v3, v3, v22

    goto :goto_5

    :cond_9
    :goto_4
    const/16 v21, 0x1

    goto :goto_5

    :cond_a
    const/4 v11, -0x1

    const/16 v21, 0x1

    sub-int v3, v9, v5

    const/4 v10, 0x2

    div-int/2addr v3, v10

    add-int/2addr v3, v7

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v10

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v3, v10

    :goto_5
    invoke-virtual {v6, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v10

    if-eqz v10, :cond_b

    iget v10, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    add-int/2addr v1, v10

    :cond_b
    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v10, v1

    invoke-virtual {v6, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v22, v10, v1

    move-object v1, v0

    move-object/from16 v0, p0

    move-object/from16 p1, v1

    move v11, v2

    move/from16 v2, v22

    move/from16 v22, v7

    const/16 v23, -0x1

    move-object v7, v4

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v0

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v15, v1

    add-int/2addr v10, v15

    invoke-virtual {v6, v0, v11}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v3, v18, v0

    move v1, v10

    goto :goto_7

    :cond_c
    move/from16 v18, v3

    move/from16 v22, v7

    move/from16 v19, v10

    move/from16 v20, v11

    const/16 v21, 0x1

    :goto_6
    const/16 v23, -0x1

    :goto_7
    add-int/lit8 v3, v3, 0x1

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v5, v21

    move/from16 v7, v22

    const/4 v15, 0x2

    goto/16 :goto_2

    :cond_d
    return-void
.end method

.method layoutVertical(IIII)V
    .locals 17

    move-object/from16 v6, p0

    iget v7, v6, Landroid/view/ViewGroup;->mPaddingLeft:I

    sub-int v0, p3, p1

    iget v1, v6, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int v8, v0, v1

    sub-int/2addr v0, v7

    sub-int v9, v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v10

    iget v0, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/lit8 v1, v0, 0x70

    const v2, 0x800007

    and-int v11, v0, v2

    const/16 v0, 0x10

    if-eq v1, v0, :cond_1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_0

    iget v0, v6, Landroid/view/ViewGroup;->mPaddingTop:I

    goto :goto_0

    :cond_0
    iget v0, v6, Landroid/view/ViewGroup;->mPaddingTop:I

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v0, v6, Landroid/view/ViewGroup;->mPaddingTop:I

    sub-int v1, p4, p2

    iget v2, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x0

    move v12, v1

    :goto_1
    if-ge v12, v10, :cond_8

    invoke-virtual {v6, v12}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x1

    if-nez v13, :cond_2

    invoke-virtual {v6, v12}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    iget v1, v5, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->gravity:I

    if-gez v1, :cond_3

    move v1, v11

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v14, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    goto :goto_3

    :cond_4
    sub-int v1, v8, v4

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_5
    sub-int v1, v9, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_2
    sub-int/2addr v1, v2

    :goto_3
    move v2, v1

    invoke-virtual {v6, v12}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    add-int/2addr v0, v1

    :cond_6
    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v16, v0, v1

    invoke-virtual {v6, v13}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v3, v16, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v14, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v15, v0

    invoke-virtual {v6, v13}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int/2addr v15, v0

    add-int v16, v16, v15

    invoke-virtual {v6, v13, v12}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v12, v0

    move/from16 v0, v16

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    :goto_4
    move v1, v14

    :goto_5
    add-int/2addr v12, v1

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method measureHorizontal(II)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "horizontal mode not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method measureNullChild(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method measureVertical(II)V
    .locals 32

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildCount()I

    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    iget v14, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    iget-boolean v15, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mUseLargestChild:Z

    const/16 v16, 0x0

    const/16 v17, 0x1

    move v1, v10

    move v3, v1

    move v4, v3

    move v5, v4

    move/from16 v18, v5

    move/from16 v20, v18

    move/from16 v0, v16

    move/from16 v19, v17

    const/high16 v2, -0x80000000

    :goto_0
    const/16 v6, 0x8

    move/from16 v22, v4

    if-ge v5, v11, :cond_10

    invoke-virtual {v7, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    iget v4, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    invoke-virtual {v7, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    move/from16 v23, v11

    move/from16 v25, v13

    move/from16 v4, v22

    const/high16 v9, -0x80000000

    goto/16 :goto_a

    :cond_0
    move/from16 v25, v1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v6, :cond_1

    invoke-virtual {v7, v4, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v5, v1

    move/from16 v23, v11

    move/from16 v4, v22

    move/from16 v1, v25

    const/high16 v9, -0x80000000

    move/from16 v25, v13

    goto/16 :goto_a

    :cond_1
    invoke-virtual {v7, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v6, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    add-int/2addr v1, v6

    iput v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    iget v1, v6, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    add-float v26, v0, v1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v13, v0, :cond_3

    iget v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v0, :cond_3

    cmpl-float v0, v1, v16

    if-lez v0, :cond_3

    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v0

    move/from16 v27, v2

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    move/from16 v21, v3

    move-object v3, v4

    move/from16 v23, v11

    move/from16 v18, v17

    move/from16 v28, v22

    move/from16 v8, v25

    move/from16 v2, v27

    const/high16 v9, -0x80000000

    move v11, v5

    move/from16 v25, v13

    move-object v13, v6

    goto/16 :goto_3

    :cond_3
    move/from16 v27, v2

    iget v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v0, :cond_4

    cmpl-float v0, v1, v16

    if-lez v0, :cond_4

    const/4 v0, -0x2

    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const/high16 v2, -0x80000000

    :goto_1
    const/16 v28, 0x0

    cmpl-float v0, v26, v16

    if-nez v0, :cond_5

    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    move/from16 v24, v0

    goto :goto_2

    :cond_5
    const/16 v24, 0x0

    :goto_2
    const/high16 v29, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    move/from16 v8, v25

    move-object v1, v4

    move/from16 v31, v2

    move/from16 v30, v27

    move v2, v5

    move v9, v3

    move/from16 v3, p1

    move/from16 v23, v11

    move/from16 v25, v13

    move/from16 v13, v22

    move/from16 v11, v29

    move-object/from16 v22, v4

    move/from16 v4, v28

    move v11, v5

    move/from16 v5, p2

    move/from16 v21, v9

    move/from16 v28, v13

    const/high16 v9, -0x80000000

    move-object v13, v6

    move/from16 v6, v24

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    move/from16 v0, v31

    if-eq v0, v9, :cond_6

    iput v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_6
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    add-int v2, v1, v0

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    move-object/from16 v3, v22

    invoke-virtual {v7, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    move/from16 v1, v30

    if-eqz v15, :cond_7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_3

    :cond_7
    move v2, v1

    :goto_3
    if-ltz v14, :cond_8

    add-int/lit8 v5, v11, 0x1

    if-ne v14, v5, :cond_8

    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iput v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineChildTop:I

    :cond_8
    if-ge v11, v14, :cond_a

    iget v0, v13, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-gtz v0, :cond_9

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_4
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_b

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    move/from16 v0, v17

    move/from16 v20, v0

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    :goto_5
    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    invoke-static {v10, v6}, Landroid/view/ViewGroup;->combineMeasuredStates(II)I

    move-result v6

    if-eqz v19, :cond_c

    iget v8, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_c

    move/from16 v8, v17

    goto :goto_6

    :cond_c
    const/4 v8, 0x0

    :goto_6
    iget v10, v13, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v10, v10, v16

    if-lez v10, :cond_e

    if-eqz v0, :cond_d

    goto :goto_7

    :cond_d
    move v1, v4

    :goto_7
    move/from16 v13, v21

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v13, v0

    move/from16 v4, v28

    goto :goto_9

    :cond_e
    move/from16 v13, v21

    if-eqz v0, :cond_f

    goto :goto_8

    :cond_f
    move v1, v4

    :goto_8
    move/from16 v4, v28

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_9
    invoke-virtual {v7, v3, v11}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v0, v11

    move v1, v5

    move v10, v6

    move/from16 v19, v8

    move v3, v13

    move v5, v0

    move/from16 v0, v26

    :goto_a
    add-int/lit8 v5, v5, 0x1

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v11, v23

    move/from16 v13, v25

    goto/16 :goto_0

    :cond_10
    move v8, v1

    move v1, v2

    move/from16 v23, v11

    move/from16 v25, v13

    move/from16 v4, v22

    const/high16 v9, -0x80000000

    move v13, v3

    iget v2, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    if-lez v2, :cond_11

    move/from16 v2, v23

    invoke-virtual {v7, v2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_12

    iget v3, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v5, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    add-int/2addr v3, v5

    iput v3, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    goto :goto_b

    :cond_11
    move/from16 v2, v23

    :cond_12
    :goto_b
    move/from16 v3, v25

    if-eqz v15, :cond_16

    if-eq v3, v9, :cond_13

    if-nez v3, :cond_16

    :cond_13
    const/4 v5, 0x0

    iput v5, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v2, :cond_16

    invoke-virtual {v7, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_14

    iget v9, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    invoke-virtual {v7, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureNullChild(I)I

    move-result v11

    add-int/2addr v9, v11

    iput v9, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    goto :goto_d

    :cond_14
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v6, :cond_15

    invoke-virtual {v7, v9, v5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v9

    add-int/2addr v5, v9

    goto :goto_d

    :cond_15
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    iget v14, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    add-int v21, v14, v1

    iget v6, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v21, v21, v6

    iget v6, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v21, v21, v6

    invoke-virtual {v7, v9}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int v6, v21, v6

    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    :goto_d
    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8

    goto :goto_c

    :cond_16
    iget v5, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v6, v7, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v9, v7, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v6, v9

    add-int/2addr v5, v6

    iput v5, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v6, p2

    move v9, v13

    const/4 v11, 0x0

    invoke-static {v5, v6, v11}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result v5

    const v11, 0xffffff

    and-int/2addr v11, v5

    iget v13, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    sub-int/2addr v11, v13

    if-nez v18, :cond_1b

    if-eqz v11, :cond_17

    cmpl-float v13, v0, v16

    if-lez v13, :cond_17

    goto :goto_10

    :cond_17
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v15, :cond_1a

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_1a

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_1a

    invoke-virtual {v7, v3}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v11, 0x8

    if-ne v9, v11, :cond_18

    goto :goto_f

    :cond_18
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    iget v9, v9, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v9, v9, v16

    if-lez v9, :cond_19

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v4, v9, v13}, Landroid/view/View;->measure(II)V

    :cond_19
    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1a
    move/from16 v23, v2

    move v1, v8

    move/from16 v2, p1

    goto/16 :goto_19

    :cond_1b
    :goto_10
    iget v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    cmpl-float v9, v1, v16

    if-lez v9, :cond_1c

    move v0, v1

    :cond_1c
    const/4 v1, 0x0

    iput v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    move v9, v1

    :goto_11
    if-ge v9, v2, :cond_29

    invoke-virtual {v7, v9}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_1d

    move/from16 v23, v2

    move/from16 v2, p1

    goto/16 :goto_18

    :cond_1d
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;

    iget v1, v14, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout$LayoutParams;->weight:F

    cmpl-float v18, v1, v16

    if-lez v18, :cond_22

    if-lez v11, :cond_22

    int-to-float v15, v11

    mul-float/2addr v15, v1

    div-float/2addr v15, v0

    float-to-int v15, v15

    sub-float/2addr v0, v1

    sub-int/2addr v11, v15

    iget v1, v7, Landroid/view/ViewGroup;->mPaddingLeft:I

    move/from16 v18, v0

    iget v0, v7, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v1, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v23, v2

    move/from16 v2, p1

    invoke-static {v2, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v1, :cond_20

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v3, v1, :cond_1e

    goto :goto_13

    :cond_1e
    if-lez v15, :cond_1f

    goto :goto_12

    :cond_1f
    const/4 v15, 0x0

    :goto_12
    invoke-static {v15, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v13, v0, v15}, Landroid/view/View;->measure(II)V

    goto :goto_14

    :cond_20
    const/high16 v1, 0x40000000    # 2.0f

    :goto_13
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    add-int v15, v21, v15

    if-gez v15, :cond_21

    const/4 v15, 0x0

    :cond_21
    invoke-static {v15, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v13, v0, v15}, Landroid/view/View;->measure(II)V

    :goto_14
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    and-int/lit16 v0, v0, -0x100

    invoke-static {v10, v0}, Landroid/view/ViewGroup;->combineMeasuredStates(II)I

    move-result v10

    goto :goto_15

    :cond_22
    move/from16 v23, v2

    move/from16 v2, p1

    if-gez v11, :cond_24

    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v1, v15, :cond_24

    iget v1, v7, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v15, v7, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v1, v15

    iget v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v15

    iget v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v15

    iget v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v2, v1, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v11

    if-gez v15, :cond_23

    const/4 v15, 0x0

    :cond_23
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v18, v15, v18

    sub-int v11, v11, v18

    move/from16 v18, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v13, v1, v15}, Landroid/view/View;->measure(II)V

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    and-int/lit16 v0, v0, -0x100

    invoke-static {v10, v0}, Landroid/view/ViewGroup;->combineMeasuredStates(II)I

    move-result v10

    goto :goto_15

    :cond_24
    move/from16 v18, v0

    :goto_15
    move/from16 v0, v18

    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v1

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v8

    move/from16 v18, v0

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_25

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v21, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    move/from16 v0, v17

    goto :goto_16

    :cond_25
    move/from16 v21, v1

    const/4 v1, -0x1

    :cond_26
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_27

    move/from16 v15, v21

    :cond_27
    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v19, :cond_28

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v4, v1, :cond_28

    move/from16 v4, v17

    goto :goto_17

    :cond_28
    const/4 v4, 0x0

    :goto_17
    iget v15, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    add-int v19, v15, v19

    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v19, v19, v1

    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v19, v19, v1

    invoke-virtual {v7, v13}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v1, v19, v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    move/from16 v19, v4

    move v4, v0

    move/from16 v0, v18

    :goto_18
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v23

    const/4 v1, 0x0

    goto/16 :goto_11

    :cond_29
    move/from16 v23, v2

    move/from16 v2, p1

    iget v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    iget v1, v7, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v3, v7, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    iput v0, v7, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mTotalLength:I

    move v0, v4

    move v1, v8

    :goto_19
    if-nez v19, :cond_2a

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v12, v3, :cond_2a

    goto :goto_1a

    :cond_2a
    move v0, v1

    :goto_1a
    iget v1, v7, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v3, v7, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v2, v10}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v7, v0, v5}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    if-eqz v20, :cond_2b

    move/from16 v0, v23

    invoke-direct {v7, v0, v6}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->forceUniformWidth(II)V

    :cond_2b
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->layoutVertical(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->layoutHorizontal(IIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureVertical(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->measureHorizontal(II)V

    :goto_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mLayoutDirection:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mLayoutDirection:I

    iget p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAligned:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mBaselineAlignedChildIndex:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "base aligned child index out of range (0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerWidth:I

    iput v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerHeight:I

    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mDividerPadding:I

    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    :cond_1
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const v0, 0x800007

    and-int/2addr p1, v0

    iget v1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_0

    const v0, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mUseLargestChild:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mOrientation:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mShowDividers:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    and-int/lit8 p1, p1, 0x70

    iget v0, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    and-int/lit8 v1, v0, 0x70

    if-eq v1, p1, :cond_0

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/MatchParentShrinkingLinearLayout;->mWeightSum:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
