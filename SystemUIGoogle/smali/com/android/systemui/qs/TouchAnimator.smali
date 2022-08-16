.class public final Lcom/android/systemui/qs/TouchAnimator;
.super Ljava/lang/Object;
.source "TouchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;,
        Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;,
        Lcom/android/systemui/qs/TouchAnimator$Builder;,
        Lcom/android/systemui/qs/TouchAnimator$Listener;,
        Lcom/android/systemui/qs/TouchAnimator$ListenerAdapter;
    }
.end annotation


# static fields
.field public static final POSITION:Lcom/android/systemui/qs/TouchAnimator$1;


# instance fields
.field public final mInterpolator:Landroid/view/animation/Interpolator;

.field public final mKeyframeSets:[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;

.field public mLastT:F

.field public final mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field public final mSpan:F

.field public final mStartDelay:F

.field public final mTargets:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$1;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$1;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/TouchAnimator;->POSITION:Lcom/android/systemui/qs/TouchAnimator$1;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;FFLandroid/view/animation/Interpolator;Lcom/android/systemui/qs/TouchAnimator$Listener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/qs/TouchAnimator;->mLastT:F

    iput-object p1, p0, Lcom/android/systemui/qs/TouchAnimator;->mTargets:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/qs/TouchAnimator;->mKeyframeSets:[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;

    iput p3, p0, Lcom/android/systemui/qs/TouchAnimator;->mStartDelay:F

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p4

    sub-float/2addr p1, p3

    iput p1, p0, Lcom/android/systemui/qs/TouchAnimator;->mSpan:F

    iput-object p5, p0, Lcom/android/systemui/qs/TouchAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-object p6, p0, Lcom/android/systemui/qs/TouchAnimator;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    return-void
.end method


# virtual methods
.method public final setPosition(F)V
    .locals 6

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/TouchAnimator;->mStartDelay:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/qs/TouchAnimator;->mSpan:F

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/qs/TouchAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_1
    iget v2, p0, Lcom/android/systemui/qs/TouchAnimator;->mLastT:F

    cmpl-float v3, p1, v2

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/TouchAnimator;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    if-eqz v3, :cond_7

    cmpl-float v4, p1, v1

    if-nez v4, :cond_3

    invoke-interface {v3}, Lcom/android/systemui/qs/TouchAnimator$Listener;->onAnimationAtEnd()V

    goto :goto_0

    :cond_3
    cmpl-float v4, p1, v0

    if-nez v4, :cond_4

    invoke-interface {v3}, Lcom/android/systemui/qs/TouchAnimator$Listener;->onAnimationAtStart()V

    goto :goto_0

    :cond_4
    cmpg-float v0, v2, v0

    if-lez v0, :cond_5

    cmpl-float v0, v2, v1

    if-nez v0, :cond_6

    :cond_5
    invoke-interface {v3}, Lcom/android/systemui/qs/TouchAnimator$Listener;->onAnimationStarted()V

    :cond_6
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/TouchAnimator;->mLastT:F

    :cond_7
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/TouchAnimator;->mTargets:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/qs/TouchAnimator;->mKeyframeSets:[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;

    aget-object v2, v2, v0

    aget-object v1, v1, v0

    iget v3, v2, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->mFrameWidth:F

    div-float v3, p1, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, v2, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->mSize:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-static {v3, v5, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    iget v4, v2, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->mFrameWidth:F

    add-int/lit8 v5, v3, -0x1

    int-to-float v5, v5

    mul-float/2addr v5, v4

    sub-float v5, p1, v5

    div-float/2addr v5, v4

    invoke-virtual {v2, v3, v5, v1}, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->interpolate(IFLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method
