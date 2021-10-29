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


# virtual methods
.method public final getProgress(FJJ)F
    .locals 2

    const-wide/16 v0, 0x1f4

    long-to-float p0, v0

    mul-float/2addr p1, p0

    long-to-float p0, p2

    sub-float/2addr p1, p0

    long-to-float p0, p4

    div-float/2addr p1, p0

    const/4 p0, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p0, p2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method
