.class public Lcom/google/material/monet/Shades;
.super Ljava/lang/Object;
.source "Shades.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(FF)[I
    .locals 4

    const/16 v0, 0xc

    new-array v1, v0, [I

    const/high16 v2, 0x42c60000    # 99.0f

    invoke-static {p0, p1, v2}, Lcom/android/internal/graphics/ColorUtils;->CAMToColor(FFF)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/high16 v2, 0x42be0000    # 95.0f

    invoke-static {p0, p1, v2}, Lcom/android/internal/graphics/ColorUtils;->CAMToColor(FFF)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x2

    :goto_0
    if-ge v2, v0, :cond_1

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    const v3, 0x42466666    # 49.6f

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v2, -0x1

    mul-int/lit8 v3, v3, 0xa

    rsub-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    :goto_1
    invoke-static {p0, p1, v3}, Lcom/android/internal/graphics/ColorUtils;->CAMToColor(FFF)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
