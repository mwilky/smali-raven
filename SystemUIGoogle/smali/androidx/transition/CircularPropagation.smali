.class public final Landroidx/transition/CircularPropagation;
.super Landroidx/transition/VisibilityPropagation;
.source "CircularPropagation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/VisibilityPropagation;-><init>()V

    return-void
.end method


# virtual methods
.method public final getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J
    .locals 8

    const-wide/16 v0, 0x0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-wide v0

    :cond_0
    const/4 p0, 0x1

    if-eqz p4, :cond_4

    const/16 v2, 0x8

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    const-string v4, "android:visibilityPropagation:visibility"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object p3, p4

    move p4, p0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p4, -0x1

    :goto_2
    const/4 v2, 0x0

    invoke-static {p3, v2}, Landroidx/transition/VisibilityPropagation;->getViewCoordinate(Landroidx/transition/TransitionValues;I)I

    move-result v3

    invoke-static {p3, p0}, Landroidx/transition/VisibilityPropagation;->getViewCoordinate(Landroidx/transition/TransitionValues;I)I

    move-result p3

    iget-object v4, p2, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    if-nez v4, :cond_5

    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Landroidx/transition/Transition$EpicenterCallback;->onGetEpicenter()Landroid/graphics/Rect;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    goto :goto_4

    :cond_6
    const/4 v4, 0x2

    new-array v5, v4, [I

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    aget v2, v5, v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    div-int/2addr v6, v4

    add-int/2addr v6, v2

    int-to-float v2, v6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v6

    add-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    aget p0, v5, p0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    div-int/2addr v5, v4

    add-int/2addr v5, p0

    int-to-float p0, v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v4

    add-float/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p0

    move v7, v2

    move v2, p0

    move p0, v7

    :goto_4
    int-to-float v3, v3

    int-to-float p3, p3

    int-to-float p0, p0

    int-to-float v2, v2

    sub-float/2addr p0, v3

    sub-float/2addr v2, p3

    mul-float/2addr p0, p0

    mul-float/2addr v2, v2

    add-float/2addr v2, p0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p0, v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v2, 0x0

    sub-float/2addr p3, v2

    sub-float/2addr p1, v2

    mul-float/2addr p3, p3

    mul-float/2addr p1, p1

    add-float/2addr p1, p3

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    div-float/2addr p0, p1

    iget-wide p1, p2, Landroidx/transition/Transition;->mDuration:J

    cmp-long p3, p1, v0

    if-gez p3, :cond_7

    const-wide/16 p1, 0x12c

    :cond_7
    int-to-long p3, p4

    mul-long/2addr p1, p3

    long-to-float p1, p1

    const/high16 p2, 0x40400000    # 3.0f

    div-float/2addr p1, p2

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method
