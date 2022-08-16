.class public final Lcom/android/systemui/util/view/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static touchIsWithinView(Landroid/view/View;FF)Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v4, v0

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    int-to-float v0, v4

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    int-to-float p1, v2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v2

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method
