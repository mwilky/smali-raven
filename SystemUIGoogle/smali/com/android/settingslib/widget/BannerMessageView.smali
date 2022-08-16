.class public Lcom/android/settingslib/widget/BannerMessageView;
.super Landroid/widget/LinearLayout;
.source "BannerMessageView.java"


# instance fields
.field public mTouchTargetForDismissButton:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/settingslib/widget/BannerMessageView;->mTouchTargetForDismissButton:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const p1, 0x7f0b06da

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b00db

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f07072f

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p5

    const/4 v0, 0x0

    if-ge p4, p3, :cond_2

    sub-int p4, p3, p4

    goto :goto_0

    :cond_2
    move p4, v0

    :goto_0
    if-ge p5, p3, :cond_3

    sub-int v0, p3, p5

    :cond_3
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    new-instance p5, Landroid/graphics/Rect;

    invoke-direct {p5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/widget/BannerMessageView;->mTouchTargetForDismissButton:Landroid/graphics/Rect;

    iget v1, p5, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p5, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p5, Landroid/graphics/Rect;->top:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget p5, p5, Landroid/graphics/Rect;->top:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p5, p3

    iput p5, p1, Landroid/graphics/Rect;->bottom:I

    rem-int/lit8 p3, p4, 0x2

    const/4 v4, 0x1

    if-ne p3, v4, :cond_4

    div-int/lit8 p3, p4, 0x2

    add-int/2addr p3, v4

    goto :goto_1

    :cond_4
    div-int/lit8 p3, p4, 0x2

    :goto_1
    sub-int/2addr v1, p3

    iput v1, p1, Landroid/graphics/Rect;->left:I

    rem-int/lit8 p3, v0, 0x2

    if-ne p3, v4, :cond_5

    div-int/lit8 p3, v0, 0x2

    add-int/2addr p3, v4

    goto :goto_2

    :cond_5
    div-int/lit8 p3, v0, 0x2

    :goto_2
    sub-int/2addr v3, p3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, v2

    iput p4, p1, Landroid/graphics/Rect;->right:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p5

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    new-instance p1, Landroid/view/TouchDelegate;

    iget-object p3, p0, Lcom/android/settingslib/widget/BannerMessageView;->mTouchTargetForDismissButton:Landroid/graphics/Rect;

    invoke-direct {p1, p3, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_6
    :goto_3
    return-void
.end method
