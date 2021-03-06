.class public final Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProviderKt;
.super Ljava/lang/Object;
.source "StatusBarContentInsetsProvider.kt"


# direct methods
.method public static final calculateInsetsForRotationWithRotatedResources(IILandroid/view/DisplayCutout;Landroid/view/WindowMetrics;III)Landroid/graphics/Rect;
    .locals 12

    move-object v0, p3

    const-string/jumbo v1, "windowMetrics"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, p0

    invoke-static {p3, p0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProviderKt;->getRotationZeroDisplayBounds(Landroid/view/WindowMetrics;I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v2, p2

    move/from16 v3, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move v10, p1

    move v11, p0

    invoke-static/range {v2 .. v11}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProviderKt;->getStatusBarLeftRight(Landroid/view/DisplayCutout;IIIIIIIII)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static final getPrivacyChipBoundingRectForInsets(Landroid/graphics/Rect;IIZ)Landroid/graphics/Rect;
    .locals 2

    const-string v0, "contentRect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    new-instance p3, Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int p1, v0, p1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p3, p1, v1, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_0
    new-instance p3, Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int p2, v0, p2

    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p3, p2, v1, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object p3
.end method

.method private static final getRotationZeroDisplayBounds(Landroid/view/WindowMetrics;I)Landroid/graphics/Rect;
    .locals 2

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->right:I

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "bounds"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final getStatusBarLeftRight(Landroid/view/DisplayCutout;IIIIIIIII)Landroid/graphics/Rect;
    .locals 4

    invoke-static {p8}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProviderKt;->isHorizontal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move p2, p3

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p0

    :goto_0
    const/4 p3, 0x0

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    sub-int/2addr p9, p8

    if-gez p9, :cond_3

    add-int/lit8 p9, p9, 0x4

    :cond_3
    new-instance p8, Landroid/util/Pair;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p8, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p9, p1, p8}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProviderKt;->sbRect(IILandroid/util/Pair;)Landroid/graphics/Rect;

    move-result-object p8

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, p6

    move v1, p7

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    const-string v3, "cutoutRect"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p8, v2, p4, p5}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProviderKt;->shareShortEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;II)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v2, p9, p4, p5}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProviderKt;->touchesLeftEdge(Landroid/graphics/Rect;III)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v2, p9}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProviderKt;->logicalWidth(Landroid/graphics/Rect;I)I

    move-result v2

    invoke-static {p6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_6
    invoke-static {v2, p9, p4, p5}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProviderKt;->touchesRightEdge(Landroid/graphics/Rect;III)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2, p9}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProviderKt;->logicalWidth(Landroid/graphics/Rect;I)I

    move-result v1

    invoke-static {p7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_7
    new-instance p0, Landroid/graphics/Rect;

    sub-int/2addr p2, v1

    invoke-direct {p0, v0, p3, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    :cond_8
    :goto_2
    new-instance p0, Landroid/graphics/Rect;

    sub-int/2addr p2, p7

    invoke-direct {p0, p6, p3, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private static final isHorizontal(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static final logicalWidth(Landroid/graphics/Rect;I)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static final sbRect(IILandroid/util/Pair;)Landroid/graphics/Rect;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    const-string/jumbo v1, "w"

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    const/4 v3, 0x1

    const-string v4, "h"

    if-eq p0, v3, :cond_1

    const/4 v3, 0x2

    if-eq p0, v3, :cond_0

    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, v3, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, v2, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, v2, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, v2, v2, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object p0
.end method

.method private static final shareShortEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;II)Z
    .locals 1

    const/4 v0, 0x0

    if-ge p2, p3, :cond_0

    iget p3, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, p3, p2, p1}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result p0

    return p0

    :cond_0
    if-le p2, p3, :cond_1

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, p2, v0, p1, p3}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method private static final touchesLeftEdge(Landroid/graphics/Rect;III)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    if-gtz p0, :cond_3

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/graphics/Rect;->right:I

    if-lt p0, p2, :cond_3

    goto :goto_0

    :cond_1
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-lt p0, p3, :cond_3

    goto :goto_0

    :cond_2
    iget p0, p0, Landroid/graphics/Rect;->left:I

    if-gtz p0, :cond_3

    :goto_0
    move v0, v1

    :cond_3
    return v0
.end method

.method private static final touchesRightEdge(Landroid/graphics/Rect;III)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-lt p0, p3, :cond_3

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/graphics/Rect;->left:I

    if-gtz p0, :cond_3

    goto :goto_0

    :cond_1
    iget p0, p0, Landroid/graphics/Rect;->top:I

    if-gtz p0, :cond_3

    goto :goto_0

    :cond_2
    iget p0, p0, Landroid/graphics/Rect;->right:I

    if-lt p0, p2, :cond_3

    :goto_0
    move v0, v1

    :cond_3
    return v0
.end method
