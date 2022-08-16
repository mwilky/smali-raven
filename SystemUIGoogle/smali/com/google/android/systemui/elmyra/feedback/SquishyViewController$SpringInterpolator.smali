.class public final Lcom/google/android/systemui/elmyra/feedback/SquishyViewController$SpringInterpolator;
.super Ljava/lang/Object;
.source "SquishyViewController.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpringInterpolator"
.end annotation


# instance fields
.field public mBounce:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController$SpringInterpolator;->mBounce:F

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    const v0, 0x3e9eb852    # 0.31f

    div-float v0, p1, v0

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    iget p0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController$SpringInterpolator;->mBounce:F

    mul-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v0

    neg-double p0, p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method
