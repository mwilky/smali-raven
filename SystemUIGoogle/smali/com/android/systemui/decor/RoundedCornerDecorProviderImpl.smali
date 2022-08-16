.class public final Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;
.super Lcom/android/systemui/decor/CornerDecorProvider;
.source "RoundedCornerDecorProviderImpl.kt"


# instance fields
.field public final alignedBound1:I

.field public final alignedBound2:I

.field public final isTop:Z

.field public final roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

.field public final viewId:I


# direct methods
.method public constructor <init>(IIILcom/android/systemui/decor/RoundedCornerResDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/decor/CornerDecorProvider;-><init>()V

    iput p1, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->viewId:I

    iput p2, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound1:I

    iput p3, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound2:I

    iput-object p4, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-virtual {p0}, Lcom/android/systemui/decor/CornerDecorProvider;->getAlignedBounds()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->isTop:Z

    return-void
.end method


# virtual methods
.method public final getAlignedBound1()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound1:I

    return p0
.end method

.method public final getAlignedBound2()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound2:I

    return p0
.end method

.method public final getViewId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->viewId:I

    return p0
.end method

.method public final inflateView(Landroid/content/Context;Lcom/android/systemui/RegionInterceptingFrameLayout;I)Landroid/view/View;
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget p1, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->viewId:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {p0, v0, p3}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->initView(Landroid/widget/ImageView;I)V

    iget-boolean p1, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->isTop:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    iget-object p1, p1, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    iget-object p1, p1, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iget v3, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound1:I

    invoke-static {v3, p3}, Landroidx/preference/R$drawable;->access$toLayoutGravity(II)I

    move-result v3

    iget p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound2:I

    invoke-static {p0, p3}, Landroidx/preference/R$drawable;->access$toLayoutGravity(II)I

    move-result p0

    or-int/2addr p0, v3

    invoke-direct {v1, v2, p1, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final initView(Landroid/widget/ImageView;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    iget-boolean v1, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->isTop:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    const v0, 0x7f0807d4

    goto :goto_1

    :cond_2
    const v0, 0x7f0807d2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/decor/CornerDecorProvider;->getAlignedBounds()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    if-eqz p2, :cond_b

    if-eq p2, v1, :cond_8

    const/4 v1, 0x3

    if-eq p2, v1, :cond_5

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    goto :goto_6

    :cond_3
    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    if-nez v2, :cond_c

    if-eqz v0, :cond_c

    goto :goto_4

    :cond_5
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    if-nez v2, :cond_10

    if-eqz v0, :cond_10

    goto :goto_3

    :cond_8
    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    if-eqz v2, :cond_a

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    if-nez v2, :cond_e

    if-eqz v0, :cond_e

    goto :goto_6

    :cond_b
    if-eqz v2, :cond_d

    if-eqz v0, :cond_d

    :cond_c
    :goto_3
    move v5, v3

    goto :goto_5

    :cond_d
    if-eqz v2, :cond_f

    if-nez v0, :cond_f

    :cond_e
    :goto_4
    move v4, v6

    move v7, v5

    move v5, v3

    move v3, v7

    goto :goto_7

    :cond_f
    if-nez v2, :cond_11

    if-eqz v0, :cond_11

    :cond_10
    :goto_5
    move v4, v6

    goto :goto_7

    :cond_11
    :goto_6
    move v5, v3

    :goto_7
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setRotation(F)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    iget-object p0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->colorTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final onReloadResAndMeasure(Landroid/view/View;IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p4, p2}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->updateDisplayUniqueId(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object p2, p1

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->initView(Landroid/widget/ImageView;I)V

    iget-boolean p4, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->isTop:Z

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    iget-object p4, p4, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->roundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    iget-object p4, p4, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    :goto_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p4

    iput p4, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget p4, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound1:I

    invoke-static {p4, p3}, Landroidx/preference/R$drawable;->access$toLayoutGravity(II)I

    move-result p4

    iget p0, p0, Lcom/android/systemui/decor/RoundedCornerDecorProviderImpl;->alignedBound2:I

    invoke-static {p0, p3}, Landroidx/preference/R$drawable;->access$toLayoutGravity(II)I

    move-result p0

    or-int/2addr p0, p4

    iput p0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
