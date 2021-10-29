.class public final Lcom/android/keyguard/TextInterpolatorKt;
.super Ljava/lang/Object;
.source "TextInterpolator.kt"


# direct methods
.method public static final synthetic access$getDrawOrigin(Landroid/text/Layout;I)F
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/TextInterpolatorKt;->getDrawOrigin(Landroid/text/Layout;I)F

    move-result p0

    return p0
.end method

.method private static final getDrawOrigin(Landroid/text/Layout;I)F
    .locals 2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    move-result p0

    :goto_0
    return p0
.end method
