.class public final Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;
.super Ljava/lang/Object;
.source "ActivityLaunchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/ActivityLaunchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$createPositionXInterpolator(Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;)Landroid/view/animation/Interpolator;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;->createPositionXInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method

.method private final createPositionXInterpolator()Landroid/view/animation/Interpolator;
    .locals 7

    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const v1, 0x3df93dd9    # 0.1217f

    const v2, 0x3d3d3c36    # 0.0462f

    const v3, 0x3e19999a    # 0.15f

    const v4, 0x3eefec57    # 0.4686f

    const v5, 0x3e2ab368    # 0.1667f

    const v6, 0x3f28f5c3    # 0.66f

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v1, 0x3e3bcd36    # 0.1834f

    const v2, 0x3f6346dc    # 0.8878f

    const v3, 0x3e2ab368    # 0.1667f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, p0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method


# virtual methods
.method public final getINTERPOLATORS()Lcom/android/systemui/animation/LaunchAnimator$Interpolators;
    .locals 0

    invoke-static {}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->access$getINTERPOLATORS$cp()Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    move-result-object p0

    return-object p0
.end method
