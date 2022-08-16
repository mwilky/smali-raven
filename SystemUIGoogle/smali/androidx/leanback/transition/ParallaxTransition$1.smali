.class public final Landroidx/leanback/transition/ParallaxTransition$1;
.super Ljava/lang/Object;
.source "ParallaxTransition.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic val$source:Landroidx/leanback/widget/Parallax;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/Parallax;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/transition/ParallaxTransition$1;->val$source:Landroidx/leanback/widget/Parallax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object p0, p0, Landroidx/leanback/transition/ParallaxTransition$1;->val$source:Landroidx/leanback/widget/Parallax;

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Landroidx/leanback/widget/Parallax;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Landroidx/leanback/widget/Parallax;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/ParallaxEffect;

    iget-object v2, v1, Landroidx/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v3, :cond_3

    move v2, p1

    move v3, v2

    :goto_1
    iget-object v4, v1, Landroidx/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, v1, Landroidx/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/leanback/widget/ParallaxTarget;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroidx/leanback/widget/ParallaxEffect;->calculateFraction()F

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    throw p0

    :cond_4
    return-void
.end method
