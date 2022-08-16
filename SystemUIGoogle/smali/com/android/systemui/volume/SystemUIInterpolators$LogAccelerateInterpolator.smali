.class public final Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;
.super Ljava/lang/Object;
.source "SystemUIInterpolators.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field public final mLogScale:F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    int-to-double v0, v0

    const/high16 v2, -0x40800000    # -1.0f

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/4 v2, 0x0

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->mLogScale:F

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    const/16 v1, 0x64

    int-to-double v1, v1

    neg-float v3, p1

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    neg-double v1, v1

    double-to-float v1, v1

    add-float/2addr v1, v0

    const/4 v2, 0x0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    iget p0, p0, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;->mLogScale:F

    mul-float/2addr v2, p0

    sub-float/2addr v0, v2

    return v0
.end method
