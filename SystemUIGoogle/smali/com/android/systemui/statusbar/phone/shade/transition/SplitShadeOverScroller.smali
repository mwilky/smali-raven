.class public final Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;
.super Ljava/lang/Object;
.source "SplitShadeOverScroller.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/shade/transition/ShadeOverScroller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller$Factory;
    }
.end annotation


# instance fields
.field public final context:Landroid/content/Context;

.field public dragDownAmount:F

.field public maxOverScrollAmount:I

.field public final nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public panelState:I

.field public previousOverscrollAmount:I

.field public final qS:Lcom/android/systemui/plugins/qs/QS;

.field public releaseOverScrollAnimator:Landroid/animation/ValueAnimator;

.field public releaseOverScrollDuration:J

.field public final scrimController:Lcom/android/systemui/statusbar/phone/ScrimController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/dump/DumpManager;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->scrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->qS:Lcom/android/systemui/plugins/qs/QS;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070743

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->maxOverScrollAmount:I

    const p4, 0x7f0c0075

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    int-to-long p3, p3

    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->releaseOverScrollDuration:J

    new-instance p3, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller$1;-><init>(Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;)V

    invoke-interface {p1, p3}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller$2;-><init>(Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;)V

    invoke-virtual {p2, p1}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final finishAnimations$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->releaseOverScrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->releaseOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final onDragDownAmountChanged(F)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->dragDownAmount:F

    cmpg-float v0, v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->dragDownAmount:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->panelState:I

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Landroid/util/MathUtils;->saturate(F)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->maxOverScrollAmount:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->qS:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/qs/QS;->setOverScrollAmount(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->scrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOverScrollAmount(I)V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->previousOverscrollAmount:I

    :cond_3
    return-void
.end method

.method public final onPanelStateChanged(I)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->panelState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    if-eq p1, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->previousOverscrollAmount:I

    aput v3, v0, v1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller$releaseOverScroll$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller$releaseOverScroll$1;-><init>(Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v2, Lcom/android/systemui/animation/Interpolators;->STANDARD:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->releaseOverScrollDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->releaseOverScrollAnimator:Landroid/animation/ValueAnimator;

    iput v1, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->previousOverscrollAmount:I

    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;->panelState:I

    return-void
.end method
