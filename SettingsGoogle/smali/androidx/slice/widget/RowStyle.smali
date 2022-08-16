.class public Landroidx/slice/widget/RowStyle;
.super Ljava/lang/Object;
.source "RowStyle.java"


# instance fields
.field private mActionDividerHeight:I

.field private mBottomDividerEndPadding:I

.field private mBottomDividerStartPadding:I

.field private mContentEndPadding:I

.field private mContentStartPadding:I

.field private mDisableRecyclerViewItemAnimator:Z

.field private mEndItemEndPadding:I

.field private mEndItemStartPadding:I

.field private mIconSize:I

.field private mImageSize:I

.field private mProgressBarEndPadding:I

.field private mProgressBarInlineWidth:I

.field private mProgressBarStartPadding:I

.field private mSeekBarInlineWidth:I

.field private final mSliceStyle:Landroidx/slice/widget/SliceStyle;

.field private mSubContentEndPadding:I

.field private mSubContentStartPadding:I

.field private mSubtitleColor:Ljava/lang/Integer;

.field private mTextActionPadding:I

.field private mTintColor:Ljava/lang/Integer;

.field private mTitleColor:Ljava/lang/Integer;

.field private mTitleEndPadding:I

.field private mTitleItemEndPadding:I

.field private mTitleItemStartPadding:I

.field private mTitleStartPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroidx/slice/widget/SliceStyle;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mTitleItemStartPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mTitleItemEndPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mContentStartPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mContentEndPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mTitleStartPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mTitleEndPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mSubContentStartPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mSubContentEndPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mEndItemStartPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mEndItemEndPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerStartPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerEndPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mActionDividerHeight:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mSeekBarInlineWidth:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mProgressBarInlineWidth:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mProgressBarStartPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mProgressBarEndPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mTextActionPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mIconSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/RowStyle;->mDisableRecyclerViewItemAnimator:Z

    iput-object p3, p0, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget-object v1, Landroidx/slice/view/R$styleable;->RowStyle:[I

    invoke-virtual {p3, p2, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    :try_start_0
    sget p3, Landroidx/slice/view/R$styleable;->RowStyle_titleItemStartPadding:I

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mTitleItemStartPadding:I

    sget p3, Landroidx/slice/view/R$styleable;->RowStyle_titleItemEndPadding:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mTitleItemEndPadding:I

    sget p3, Landroidx/slice/view/R$styleable;->RowStyle_contentStartPadding:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mContentStartPadding:I

    sget p3, Landroidx/slice/view/R$styleable;->RowStyle_contentEndPadding:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mContentEndPadding:I

    sget p3, Landroidx/slice/view/R$styleable;->RowStyle_titleStartPadding:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mTitleStartPadding:I

    sget p3, Landroidx/slice/view/R$styleable;->RowStyle_titleEndPadding:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mTitleEndPadding:I

    sget p3, Landroidx/slice/view/R$styleable;->RowStyle_subContentStartPadding:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mSubContentStartPadding:I

    sget p3, Landroidx/slice/view/R$styleable;->RowStyle_subContentEndPadding:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mSubContentEndPadding:I

    sget p3, Landroidx/slice/view/R$styleable;->RowStyle_endItemStartPadding:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mEndItemStartPadding:I

    sget p3, Landroidx/slice/view/R$styleable;->RowStyle_endItemEndPadding:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mEndItemEndPadding:I

    sget p3, Landroidx/slice/view/R$styleable;->RowStyle_bottomDividerStartPadding:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerStartPadding:I

    sget p3, Landroidx/slice/view/R$styleable;->RowStyle_bottomDividerEndPadding:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerEndPadding:I

    sget p3, Landroidx/slice/view/R$styleable;->RowStyle_actionDividerHeight:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mActionDividerHeight:I

    sget p3, Landroidx/slice/view/R$styleable;->RowStyle_seekBarInlineWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mSeekBarInlineWidth:I

    sget p3, Landroidx/slice/view/R$styleable;->RowStyle_progressBarInlineWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mProgressBarInlineWidth:I

    sget p3, Landroidx/slice/view/R$styleable;->RowStyle_progressBarStartPadding:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mProgressBarStartPadding:I

    sget p3, Landroidx/slice/view/R$styleable;->RowStyle_progressBarEndPadding:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mProgressBarEndPadding:I

    sget p3, Landroidx/slice/view/R$styleable;->RowStyle_textActionPadding:I

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mTextActionPadding:I

    sget p3, Landroidx/slice/view/R$styleable;->RowStyle_iconSize:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mIconSize:I

    sget p3, Landroidx/slice/view/R$styleable;->RowStyle_disableRecyclerViewItemAnimator:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/slice/widget/RowStyle;->mDisableRecyclerViewItemAnimator:Z

    sget p3, Landroidx/slice/view/R$styleable;->RowStyle_imageSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/slice/view/R$dimen;->abc_slice_small_image_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroidx/slice/widget/RowStyle;->mImageSize:I

    sget p1, Landroidx/slice/view/R$styleable;->RowStyle_tintColor:I

    invoke-static {p2, p1}, Landroidx/slice/widget/RowStyle;->getOptionalColor(Landroid/content/res/TypedArray;I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/RowStyle;->mTintColor:Ljava/lang/Integer;

    sget p1, Landroidx/slice/view/R$styleable;->RowStyle_titleColor:I

    invoke-static {p2, p1}, Landroidx/slice/widget/RowStyle;->getOptionalColor(Landroid/content/res/TypedArray;I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/RowStyle;->mTitleColor:Ljava/lang/Integer;

    sget p1, Landroidx/slice/view/R$styleable;->RowStyle_subtitleColor:I

    invoke-static {p2, p1}, Landroidx/slice/widget/RowStyle;->getOptionalColor(Landroid/content/res/TypedArray;I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/RowStyle;->mSubtitleColor:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/slice/widget/SliceStyle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mTitleItemStartPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mTitleItemEndPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mContentStartPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mContentEndPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mTitleStartPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mTitleEndPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mSubContentStartPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mSubContentEndPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mEndItemStartPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mEndItemEndPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerStartPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerEndPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mActionDividerHeight:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mSeekBarInlineWidth:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mProgressBarInlineWidth:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mProgressBarStartPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mProgressBarEndPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mTextActionPadding:I

    iput v0, p0, Landroidx/slice/widget/RowStyle;->mIconSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/RowStyle;->mDisableRecyclerViewItemAnimator:Z

    iput-object p2, p0, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_small_image_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/RowStyle;->mImageSize:I

    return-void
.end method

.method private static getOptionalColor(Landroid/content/res/TypedArray;I)Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getActionDividerHeight()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mActionDividerHeight:I

    return p0
.end method

.method public getBottomDividerEndPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerEndPadding:I

    return p0
.end method

.method public getBottomDividerStartPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerStartPadding:I

    return p0
.end method

.method public getContentEndPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mContentEndPadding:I

    return p0
.end method

.method public getContentStartPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mContentStartPadding:I

    return p0
.end method

.method public getDisableRecyclerViewItemAnimator()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/slice/widget/RowStyle;->mDisableRecyclerViewItemAnimator:Z

    return p0
.end method

.method public getEndItemEndPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mEndItemEndPadding:I

    return p0
.end method

.method public getEndItemStartPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mEndItemStartPadding:I

    return p0
.end method

.method public getIconSize()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mIconSize:I

    return p0
.end method

.method public getImageSize()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mImageSize:I

    return p0
.end method

.method public getProgressBarEndPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mProgressBarEndPadding:I

    return p0
.end method

.method public getProgressBarInlineWidth()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mProgressBarInlineWidth:I

    return p0
.end method

.method public getProgressBarStartPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mProgressBarStartPadding:I

    return p0
.end method

.method public getSeekBarInlineWidth()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mSeekBarInlineWidth:I

    return p0
.end method

.method public getSubContentEndPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mSubContentEndPadding:I

    return p0
.end method

.method public getSubContentStartPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mSubContentStartPadding:I

    return p0
.end method

.method public getSubtitleColor()I
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/RowStyle;->mSubtitleColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceStyle;->getSubtitleColor()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTextActionPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mTextActionPadding:I

    return p0
.end method

.method public getTintColor()I
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/RowStyle;->mTintColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceStyle;->getTintColor()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTitleColor()I
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/RowStyle;->mTitleColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceStyle;->getTitleColor()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTitleEndPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mTitleEndPadding:I

    return p0
.end method

.method public getTitleItemEndPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mTitleItemEndPadding:I

    return p0
.end method

.method public getTitleItemStartPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mTitleItemStartPadding:I

    return p0
.end method

.method public getTitleStartPadding()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/RowStyle;->mTitleStartPadding:I

    return p0
.end method
