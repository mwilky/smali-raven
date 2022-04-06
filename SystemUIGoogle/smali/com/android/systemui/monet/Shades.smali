.class public Lcom/android/systemui/monet/Shades;
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
    .registers 9
    .param p0, "hue"    # F
    .param p1, "chroma"    # F

    .line 10
    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 13
    .local v1, "shades":[I
    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x42c60000    # 99.0f

    invoke-static {p0, v3, v4}, Lcom/android/internal/graphics/ColorUtils;->CAMToColor(FFF)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 14
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x42be0000    # 95.0f

    invoke-static {p0, v3, v4}, Lcom/android/internal/graphics/ColorUtils;->CAMToColor(FFF)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v1, v4

    .line 15
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_21
    if-ge v3, v0, :cond_46

    .line 16
    const/4 v4, 0x6

    if-ne v3, v4, :cond_2a

    const v4, 0x42466666    # 49.6f

    goto :goto_31

    :cond_2a
    add-int/lit8 v4, v3, -0x1

    mul-int/lit8 v4, v4, 0xa

    rsub-int/lit8 v4, v4, 0x64

    int-to-float v4, v4

    .line 17
    .local v4, "lStar":F
    :goto_31
    const/high16 v5, 0x42b40000    # 90.0f

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_3c

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_3d

    :cond_3c
    move v5, p1

    .line 18
    .local v5, "shadeChroma":F
    :goto_3d
    invoke-static {p0, v5, v4}, Lcom/android/internal/graphics/ColorUtils;->CAMToColor(FFF)I

    move-result v6

    aput v6, v1, v3

    .line 15
    .end local v4    # "lStar":F
    .end local v5    # "shadeChroma":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 20
    .end local v3    # "i":I
    :cond_46
    return-object v1
.end method

