.class public final Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;
.super Ljava/lang/Object;
.source "PrivacyDotViewController.kt"


# direct methods
.method public static final synthetic access$dlog(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->dlog(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$innerGravity(I)I
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->innerGravity(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$toGravity(I)I
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->toGravity(I)I

    move-result p0

    return p0
.end method

.method private static final dlog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static final innerGravity(I)I
    .locals 3

    const/16 v0, 0x13

    const/16 v1, 0x15

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a corner"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    move v0, v1

    :cond_2
    return v0
.end method

.method private static final toGravity(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/16 p0, 0x53

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a corner"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p0, 0x55

    goto :goto_0

    :cond_2
    const/16 p0, 0x35

    goto :goto_0

    :cond_3
    const/16 p0, 0x33

    :goto_0
    return p0
.end method
