.class public final Lcom/android/systemui/animation/Interpolators;
.super Ljava/lang/Object;
.source "Interpolators.java"


# static fields
.field public static final ACCELERATE:Landroid/view/animation/AccelerateInterpolator;

.field public static final ACCELERATE_DECELERATE:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field public static final ALPHA_IN:Landroid/view/animation/PathInterpolator;

.field public static final ALPHA_OUT:Landroid/view/animation/PathInterpolator;

.field public static final CONTROL_STATE:Landroid/view/animation/PathInterpolator;

.field public static final CUSTOM_40_40:Landroid/view/animation/PathInterpolator;

.field public static final DECELERATE_QUINT:Landroid/view/animation/DecelerateInterpolator;

.field public static final EMPHASIZED:Landroid/view/animation/PathInterpolator;

.field public static final EMPHASIZED_ACCELERATE:Landroid/view/animation/PathInterpolator;

.field public static final EMPHASIZED_DECELERATE:Landroid/view/animation/PathInterpolator;

.field public static final FAST_OUT_LINEAR_IN:Landroid/view/animation/PathInterpolator;

.field public static final FAST_OUT_SLOW_IN:Landroid/view/animation/PathInterpolator;

.field public static final FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/PathInterpolator;

.field public static final ICON_OVERSHOT:Landroid/view/animation/PathInterpolator;

.field public static final ICON_OVERSHOT_LESS:Landroid/view/animation/PathInterpolator;

.field public static final LEGACY:Landroid/view/animation/PathInterpolator;

.field public static final LEGACY_ACCELERATE:Landroid/view/animation/PathInterpolator;

.field public static final LEGACY_DECELERATE:Landroid/view/animation/PathInterpolator;

.field public static final LINEAR:Landroid/view/animation/LinearInterpolator;

.field public static final LINEAR_OUT_SLOW_IN:Landroid/view/animation/PathInterpolator;

.field public static final PANEL_CLOSE_ACCELERATED:Landroid/view/animation/PathInterpolator;

.field public static final STANDARD:Landroid/view/animation/PathInterpolator;

.field public static final STANDARD_ACCELERATE:Landroid/view/animation/PathInterpolator;

.field public static final STANDARD_DECELERATE:Landroid/view/animation/PathInterpolator;

.field public static final TOUCH_RESPONSE:Landroid/view/animation/PathInterpolator;

.field public static final TOUCH_RESPONSE_REVERSE:Landroid/view/animation/PathInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const v1, 0x3d4ccccd    # 0.05f

    const/4 v2, 0x0

    const v3, 0x3e088872

    const v4, 0x3d75c28f    # 0.06f

    const v5, 0x3e2aaa7e

    const v6, 0x3ecccccd    # 0.4f

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v1, 0x3e55553f    # 0.208333f

    const v2, 0x3f51eb85    # 0.82f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v7}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3e19999a    # 0.15f

    invoke-direct {v0, v1, v8, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3d4ccccd    # 0.05f

    const v4, 0x3f333333    # 0.7f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v3, v8, v8, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->STANDARD:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v8, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->STANDARD_ACCELERATE:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v8, v8, v8, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->STANDARD_DECELERATE:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v7, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v7, v8, v3, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->LEGACY:Landroid/view/animation/PathInterpolator;

    new-instance v9, Landroid/view/animation/PathInterpolator;

    invoke-direct {v9, v7, v8, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v9, Lcom/android/systemui/animation/Interpolators;->LEGACY_ACCELERATE:Landroid/view/animation/PathInterpolator;

    new-instance v10, Landroid/view/animation/PathInterpolator;

    invoke-direct {v10, v8, v8, v3, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v10, Lcom/android/systemui/animation/Interpolators;->LEGACY_DECELERATE:Landroid/view/animation/PathInterpolator;

    new-instance v11, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v11, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/LinearInterpolator;

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/PathInterpolator;

    sput-object v9, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/PathInterpolator;

    sput-object v10, Lcom/android/systemui/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v9, 0x3f19999a    # 0.6f

    invoke-direct {v0, v2, v8, v9, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v8, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v7, v8, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v8, v8, v2, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->ACCELERATE:Landroid/view/animation/AccelerateInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/AccelerateDecelerateInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v7, v8, v9, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->CUSTOM_40_40:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3fb33333    # 1.4f

    invoke-direct {v0, v7, v8, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->ICON_OVERSHOT:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-direct {v0, v7, v8, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->ICON_OVERSHOT_LESS:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v8, v2, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v7, v8, v3, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->CONTROL_STATE:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v8, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v8, v4, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/Interpolators;->TOUCH_RESPONSE_REVERSE:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public static getOvershootInterpolation(FF)F
    .locals 5

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    const v1, 0x3fcccccd    # 1.6f

    const v2, 0x402aaaaa

    invoke-static {v2}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    div-float/2addr v2, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    neg-float p1, v2

    mul-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    sub-double/2addr v3, p0

    double-to-float p0, v3

    mul-float/2addr p0, v1

    invoke-static {v0, p0}, Landroid/util/MathUtils;->max(FF)F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid values for overshoot"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
