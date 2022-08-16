.class public final Landroidx/leanback/widget/ItemAlignmentFacetHelper;
.super Ljava/lang/Object;
.source "ItemAlignmentFacetHelper.java"


# static fields
.field public static sRect:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static getAlignmentPosition(Landroid/view/View;Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;I)I
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, p0

    :cond_0
    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, 0x42480000    # 50.0f

    if-nez p2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    if-ne p1, p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    sub-int/2addr p2, v3

    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr p2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    :goto_0
    add-int/lit8 p2, p2, 0x0

    if-ne p1, p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    :goto_1
    int-to-float v3, v3

    mul-float/2addr v3, v2

    div-float/2addr v3, v1

    float-to-int v1, v3

    sub-int/2addr p2, v1

    if-eq p0, p1, :cond_7

    sget-object v1, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput p2, v1, Landroid/graphics/Rect;->right:I

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object p0, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    add-int p2, p0, p1

    goto :goto_5

    :cond_3
    if-ne p1, p0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    sub-int/2addr p2, v3

    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr p2, v3

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    :goto_2
    int-to-float p2, p2

    mul-float/2addr p2, v2

    div-float/2addr p2, v1

    float-to-int p2, p2

    add-int/lit8 p2, p2, 0x0

    if-eq p0, p1, :cond_7

    sget-object v1, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput p2, v1, Landroid/graphics/Rect;->left:I

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object p0, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    goto :goto_4

    :cond_5
    if-ne p1, p0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    sub-int/2addr p2, v3

    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int/2addr p2, v3

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    :goto_3
    int-to-float p2, p2

    mul-float/2addr p2, v2

    div-float/2addr p2, v1

    float-to-int p2, p2

    add-int/lit8 p2, p2, 0x0

    if-eq p0, p1, :cond_7

    sget-object v1, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput p2, v1, Landroid/graphics/Rect;->top:I

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object p0, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    :goto_4
    sub-int p2, p0, p1

    :cond_7
    :goto_5
    return p2
.end method
