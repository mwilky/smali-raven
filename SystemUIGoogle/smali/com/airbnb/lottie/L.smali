.class public final Lcom/airbnb/lottie/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field public static depthPastMaxDepth:I


# direct methods
.method public static endSection()V
    .locals 1

    sget v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    :cond_0
    return-void
.end method
