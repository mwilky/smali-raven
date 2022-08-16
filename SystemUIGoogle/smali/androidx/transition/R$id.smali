.class public final Landroidx/transition/R$id;
.super Ljava/lang/Object;
.source "R.java"


# direct methods
.method public static hash(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    const/16 v0, 0x2000

    invoke-static {p0, v0}, Ljava/lang/Math;->floorMod(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public static isDescendant(Landroid/view/View;Landroid/view/ViewGroup;)Z
    .locals 2

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/View;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_2
    return v0
.end method
