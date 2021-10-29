.class public final Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;
.super Ljava/lang/Object;
.source "EdgeLightUpdateListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private mFinalLights:[Lcom/android/systemui/assist/ui/EdgeLight;

.field private mInitialLights:[Lcom/android/systemui/assist/ui/EdgeLight;

.field private mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

.field private mView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;


# direct methods
.method public constructor <init>([Lcom/android/systemui/assist/ui/EdgeLight;[Lcom/android/systemui/assist/ui/EdgeLight;[Lcom/android/systemui/assist/ui/EdgeLight;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    array-length v0, p3

    array-length v1, p2

    if-ne v0, v1, :cond_0

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;->mFinalLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;->mInitialLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    iput-object p4, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;->mView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Lights arrays must be the same length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;->mInitialLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;->mFinalLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    aget-object v3, v3, v0

    invoke-static {v1, v2, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/systemui/assist/ui/EdgeLight;->setLength(F)V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;->mInitialLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/systemui/assist/ui/EdgeLight;->getStart()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;->mFinalLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/systemui/assist/ui/EdgeLight;->getStart()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;->mLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    aget-object v3, v3, v0

    invoke-static {v1, v2, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/systemui/assist/ui/EdgeLight;->setStart(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightUpdateListener;->mView:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;

    invoke-virtual {p0, v1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->setAssistLights([Lcom/android/systemui/assist/ui/EdgeLight;)V

    return-void
.end method
