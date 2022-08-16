.class public final Lkotlinx/atomicfu/AtomicFU;
.super Ljava/lang/Object;
.source "AtomicFU.kt"


# direct methods
.method public static final atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;
    .locals 1

    new-instance v0, Lkotlinx/atomicfu/AtomicRef;

    invoke-direct {v0, p0}, Lkotlinx/atomicfu/AtomicRef;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static checkArgument(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static checkArgumentNonnegative(I)V
    .locals 0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getBurnInOffset(IZ)I
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x476a6000    # 60000.0f

    div-float/2addr v0, v1

    int-to-float p0, p0

    if-eqz p1, :cond_0

    const/high16 p1, 0x42a60000    # 83.0f

    goto :goto_0

    :cond_0
    const p1, 0x44024000    # 521.0f

    :goto_0
    invoke-static {v0, p0, p1}, Lkotlinx/atomicfu/AtomicFU;->zigzag(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static final zigzag(FFF)F
    .locals 1

    rem-float/2addr p0, p2

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p2, v0

    div-float/2addr p0, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p0, p2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    sub-float p0, v0, p0

    :goto_0
    const/4 p2, 0x0

    invoke-static {p2, p1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method
