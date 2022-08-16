.class public final Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;
.super Ljava/lang/Object;
.source "SystemUIInterpolators.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field public final mOutputScale:F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x43c80000    # 400.0f

    float-to-double v0, v0

    const v2, -0x40c92492

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/4 v2, 0x0

    add-float/2addr v0, v2

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;->mOutputScale:F

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 4

    const/high16 v0, 0x43c80000    # 400.0f

    float-to-double v0, v0

    neg-float v2, p1

    const v3, 0x3f36db6e

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    iget p0, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;->mOutputScale:F

    mul-float/2addr p1, p0

    return p1
.end method
