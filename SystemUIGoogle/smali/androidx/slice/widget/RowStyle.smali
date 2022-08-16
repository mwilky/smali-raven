.class public final Landroidx/slice/widget/RowStyle;
.super Ljava/lang/Object;
.source "RowStyle.java"


# instance fields
.field public mActionDividerHeight:I

.field public mBottomDividerEndPadding:I

.field public mBottomDividerStartPadding:I

.field public mContentEndPadding:I

.field public mContentStartPadding:I

.field public mDisableRecyclerViewItemAnimator:Z

.field public mEndItemEndPadding:I

.field public mEndItemStartPadding:I

.field public mIconSize:I

.field public mImageSize:I

.field public mProgressBarEndPadding:I

.field public mProgressBarInlineWidth:I

.field public mProgressBarStartPadding:I

.field public mSeekBarInlineWidth:I

.field public final mSliceStyle:Landroidx/slice/widget/SliceStyle;

.field public mSubContentEndPadding:I

.field public mSubContentStartPadding:I

.field public mSubtitleColor:Ljava/lang/Integer;

.field public mTextActionPadding:I

.field public mTintColor:Ljava/lang/Integer;

.field public mTitleColor:Ljava/lang/Integer;

.field public mTitleEndPadding:I

.field public mTitleItemEndPadding:I

.field public mTitleItemStartPadding:I

.field public mTitleStartPadding:I


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

    const/16 p3, 0x16

    const/high16 v1, -0x40800000    # -1.0f

    :try_start_0
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mTitleItemStartPadding:I

    const/16 p3, 0x15

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mTitleItemEndPadding:I

    const/4 p3, 0x4

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mContentStartPadding:I

    const/4 p3, 0x3

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mContentEndPadding:I

    const/16 p3, 0x17

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mTitleStartPadding:I

    const/16 p3, 0x14

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mTitleEndPadding:I

    const/16 p3, 0xf

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mSubContentStartPadding:I

    const/16 p3, 0xe

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mSubContentEndPadding:I

    const/4 p3, 0x7

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mEndItemStartPadding:I

    const/4 p3, 0x6

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mEndItemEndPadding:I

    const/4 p3, 0x2

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerStartPadding:I

    const/4 p3, 0x1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerEndPadding:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mActionDividerHeight:I

    const/16 p3, 0xd

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mSeekBarInlineWidth:I

    const/16 p3, 0xb

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mProgressBarInlineWidth:I

    const/16 p3, 0xc

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mProgressBarStartPadding:I

    const/16 p3, 0xa

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mProgressBarEndPadding:I

    const/16 p3, 0x11

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mTextActionPadding:I

    const/16 p3, 0x8

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/RowStyle;->mIconSize:I

    const/4 p3, 0x5

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/slice/widget/RowStyle;->mDisableRecyclerViewItemAnimator:Z

    const/16 p3, 0x9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070059

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroidx/slice/widget/RowStyle;->mImageSize:I

    const/16 p1, 0x12

    invoke-static {p2, p1}, Landroidx/slice/widget/RowStyle;->getOptionalColor(Landroid/content/res/TypedArray;I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/RowStyle;->mTintColor:Ljava/lang/Integer;

    const/16 p1, 0x13

    invoke-static {p2, p1}, Landroidx/slice/widget/RowStyle;->getOptionalColor(Landroid/content/res/TypedArray;I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/RowStyle;->mTitleColor:Ljava/lang/Integer;

    const/16 p1, 0x10

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

    const p2, 0x7f070059

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/RowStyle;->mImageSize:I

    return-void
.end method

.method public static getOptionalColor(Landroid/content/res/TypedArray;I)Ljava/lang/Integer;
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
.method public final getSubtitleColor()I
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/RowStyle;->mSubtitleColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleColor:I

    :goto_0
    return p0
.end method
