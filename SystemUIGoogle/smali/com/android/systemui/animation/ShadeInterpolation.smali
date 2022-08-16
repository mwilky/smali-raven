.class public final Lcom/android/systemui/animation/ShadeInterpolation;
.super Ljava/lang/Object;
.source "ShadeInterpolation.kt"


# direct methods
.method public static final getContentAlpha(F)F
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v0, v1, v2, v1, p0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/animation/ShadeInterpolation;->interpolateEaseInOut(F)F

    move-result p0

    return p0
.end method

.method public static final getNotificationScrimAlpha(F)F
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v0, v2, p0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/animation/ShadeInterpolation;->interpolateEaseInOut(F)F

    move-result p0

    return p0
.end method

.method public static interpolateEaseInOut(F)F
    .locals 6

    const v0, 0x3f99999a    # 1.2f

    mul-float/2addr p0, v0

    const v0, 0x3e4ccccd    # 0.2f

    sub-float/2addr p0, v0

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p0, v0, p0

    float-to-double v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    float-to-double v2, v2

    const v4, 0x40490fd0

    mul-float/2addr v4, p0

    mul-float/2addr v4, p0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    sub-double v4, v0, v4

    mul-double/2addr v4, v2

    sub-double/2addr v0, v4

    double-to-float v0, v0

    :goto_0
    return v0
.end method
