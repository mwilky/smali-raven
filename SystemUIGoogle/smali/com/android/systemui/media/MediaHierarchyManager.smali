.class public final Lcom/android/systemui/media/MediaHierarchyManager;
.super Ljava/lang/Object;
.source "MediaHierarchyManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaHierarchyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaHierarchyManager.kt\ncom/android/systemui/media/MediaHierarchyManager\n+ 2 TraceUtils.kt\ncom/android/systemui/util/TraceUtilsKt\n*L\n1#1,1162:1\n26#2,5:1163\n26#2,5:1168\n26#2,5:1173\n26#2,5:1178\n*S KotlinDebug\n*F\n+ 1 MediaHierarchyManager.kt\ncom/android/systemui/media/MediaHierarchyManager\n*L\n586#1:1163,5\n623#1:1168,5\n906#1:1173,5\n929#1:1178,5\n*E\n"
.end annotation


# instance fields
.field public animationCrossFadeProgress:F

.field public animationPending:Z

.field public animationStartAlpha:F

.field public animationStartBounds:Landroid/graphics/Rect;

.field public animationStartClipping:Landroid/graphics/Rect;

.field public animationStartCrossFadeProgress:F

.field public animator:Landroid/animation/ValueAnimator;

.field public final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public carouselAlpha:F

.field public collapsingShadeFromQS:Z

.field public final context:Landroid/content/Context;

.field public crossFadeAnimationEndLocation:I

.field public crossFadeAnimationStartLocation:I

.field public currentAttachmentLocation:I

.field public currentBounds:Landroid/graphics/Rect;

.field public currentClipping:Landroid/graphics/Rect;

.field public desiredLocation:I

.field public distanceForFullShadeTransition:I

.field public dozeAnimationRunning:Z

.field public dreamOverlayActive:Z

.field public final dreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public fullShadeTransitionProgress:F

.field public fullyAwake:Z

.field public goingToSleep:Z

.field public inSplitShade:Z

.field public isCrossFadeAnimatorRunning:Z

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field public final mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

.field public final mediaHosts:[Lcom/android/systemui/media/MediaHost;

.field public final notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public previousLocation:I

.field public qsExpanded:Z

.field public qsExpansion:F

.field public rootOverlay:Landroid/view/ViewGroupOverlay;

.field public rootView:Landroid/view/View;

.field public final startAnimation:Lcom/android/systemui/media/MediaHierarchyManager$startAnimation$1;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public statusbarState:I

.field public targetBounds:Landroid/graphics/Rect;

.field public targetClipping:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/media/MediaCarouselController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/dreams/DreamOverlayStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-object p5, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    iput-object p6, p0, Lcom/android/systemui/media/MediaHierarchyManager;->notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p9, p0, Lcom/android/systemui/media/MediaHierarchyManager;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    iput-object p10, p0, Lcom/android/systemui/media/MediaHierarchyManager;->dreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartBounds:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartClipping:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentClipping:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->targetClipping:Landroid/graphics/Rect;

    const/4 p3, -0x1

    iput p3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->crossFadeAnimationStartLocation:I

    iput p3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->crossFadeAnimationEndLocation:I

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p4

    iput p4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    const/4 p4, 0x2

    new-array p4, p4, [F

    fill-array-data p4, :array_0

    invoke-static {p4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p4

    sget-object p6, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p4, p6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p6, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;

    invoke-direct {p6, p0, p4}, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p4, p6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p6, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$2;

    invoke-direct {p6, p0}, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$2;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    invoke-virtual {p4, p6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    const/4 p4, 0x4

    new-array p4, p4, [Lcom/android/systemui/media/MediaHost;

    iput-object p4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaHosts:[Lcom/android/systemui/media/MediaHost;

    iput p3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    iput p3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    iput p3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    new-instance p3, Lcom/android/systemui/media/MediaHierarchyManager$startAnimation$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/media/MediaHierarchyManager$startAnimation$1;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    iput-object p3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->startAnimation:Lcom/android/systemui/media/MediaHierarchyManager$startAnimation$1;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationCrossFadeProgress:F

    iput p3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->carouselAlpha:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0703c3

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->distanceForFullShadeTransition:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->inSplitShade:Z

    new-instance p1, Lcom/android/systemui/media/MediaHierarchyManager$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaHierarchyManager$1;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    invoke-interface {p7, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    new-instance p1, Lcom/android/systemui/media/MediaHierarchyManager$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaHierarchyManager$2;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    new-instance p1, Lcom/android/systemui/media/MediaHierarchyManager$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaHierarchyManager$3;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    invoke-virtual {p10, p1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    new-instance p1, Lcom/android/systemui/media/MediaHierarchyManager$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaHierarchyManager$4;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    iget-object p2, p8, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/systemui/media/MediaHierarchyManager$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaHierarchyManager$5;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    iput-object p1, p5, Lcom/android/systemui/media/MediaCarouselController;->updateUserVisibility:Lkotlin/jvm/functions/Function0;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final access$setGoingToSleep(Lcom/android/systemui/media/MediaHierarchyManager;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->goingToSleep:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->goingToSleep:Z

    if-nez p1, :cond_0

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZI)V

    :cond_0
    return-void
.end method

.method public static applyState$default(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/graphics/Rect;FZLandroid/graphics/Rect;I)V
    .locals 4

    and-int/lit8 v0, p5, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p3, v1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    sget-object p4, Lcom/android/systemui/media/MediaHierarchyManagerKt;->EMPTY_RECT:Landroid/graphics/Rect;

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p5, "MediaHierarchyManager#applyState"

    invoke-static {p5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object p5, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    invoke-virtual {p5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput-object p4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentClipping:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyFading()Z

    move-result p1

    const/high16 p4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move p2, p4

    :goto_0
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->carouselAlpha:F

    cmpg-float p1, p1, p2

    const/4 p5, 0x1

    if-nez p1, :cond_3

    move p1, p5

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    iput p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->carouselAlpha:F

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    iget-object p1, p1, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-static {p1, p2, v1}, Landroidx/leanback/R$style;->fadeIn(Landroid/view/View;FZ)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyFading()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    move v1, p5

    :cond_6
    const/4 p1, -0x1

    if-eqz v1, :cond_7

    move p2, p1

    goto :goto_3

    :cond_7
    iget p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    :goto_3
    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getTransformationProgress()F

    move-result p4

    :goto_4
    iget-boolean p5, p0, Lcom/android/systemui/media/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    if-eqz p5, :cond_b

    iget p5, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationCrossFadeProgress:F

    float-to-double v0, p5

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p5, v0, v2

    if-gtz p5, :cond_a

    iget p5, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    if-ne p5, p1, :cond_9

    goto :goto_5

    :cond_9
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->crossFadeAnimationStartLocation:I

    goto :goto_6

    :cond_a
    :goto_5
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->crossFadeAnimationEndLocation:I

    goto :goto_6

    :cond_b
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    :goto_6
    iget-object p5, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {p5, p2, p1, p4, p3}, Lcom/android/systemui/media/MediaCarouselController;->setCurrentState(IIFZ)V

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateHostAttachment()V

    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    const/16 p2, -0x3e8

    if-ne p1, p2, :cond_d

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentClipping:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentClipping:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_c
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    iget-object p1, p1, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p3, p0, Landroid/graphics/Rect;->top:I

    iget p4, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/view/ViewGroup;->setLeftTopRightBottom(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public static interpolateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-static {v0, v1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-static {v1, v2, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-static {v2, v3, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    float-to-int v2, v2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    if-nez p3, :cond_0

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    invoke-virtual {p3, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p3
.end method

.method public static synthetic updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZI)V
    .locals 1

    and-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move p1, v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation(ZZ)V

    return-void
.end method


# virtual methods
.method public final applyTargetStateIfNotAnimating()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->carouselAlpha:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/media/MediaHierarchyManager;->targetClipping:Landroid/graphics/Rect;

    const/4 v6, 0x4

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/media/MediaHierarchyManager;->applyState$default(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/graphics/Rect;FZLandroid/graphics/Rect;I)V

    :cond_0
    return-void
.end method

.method public final areGuidedTransitionHostsVisible()Z
    .locals 3

    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    iget-boolean v0, v0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->visible:Z

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object p0

    if-nez p0, :cond_3

    :cond_2
    move p0, v1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->visible:Z

    if-ne p0, v2, :cond_2

    move p0, v2

    :goto_1
    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public final calculateLocation()I
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->goingToSleep:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->dozeAnimationRunning:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    iget p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    return p0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowLockscreenNotifications()Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->dreamOverlayActive:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_4

    const/4 v0, 0x3

    goto/16 :goto_a

    :cond_4
    iget v4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpansion:F

    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-gtz v6, :cond_5

    iget-boolean v6, p0, Lcom/android/systemui/media/MediaHierarchyManager;->inSplitShade:Z

    if-eqz v6, :cond_6

    :cond_5
    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    const v6, 0x3ecccccd    # 0.4f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_7

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaHosts:[Lcom/android/systemui/media/MediaHost;

    aget-object v4, v4, v2

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    iget-object v4, v4, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    iget-boolean v4, v4, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->visible:Z

    if-ne v4, v2, :cond_9

    move v4, v2

    goto :goto_4

    :cond_9
    :goto_3
    move v4, v1

    :goto_4
    if-nez v4, :cond_a

    goto :goto_6

    :cond_a
    if-eqz v0, :cond_c

    iget-boolean v4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->inSplitShade:Z

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isTransitioningToFullShade()Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v2

    goto :goto_5

    :cond_b
    move v4, v1

    :goto_5
    if-eqz v4, :cond_c

    :goto_6
    move v0, v1

    goto :goto_a

    :cond_c
    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isTransitioningToFullShade()Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_7

    :cond_d
    iget-boolean v4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->inSplitShade:Z

    if-eqz v4, :cond_e

    goto :goto_7

    :cond_e
    iget v4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullShadeTransitionProgress:F

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_f

    move v4, v2

    goto :goto_8

    :cond_f
    :goto_7
    move v4, v1

    :goto_8
    if-eqz v4, :cond_10

    goto :goto_9

    :cond_10
    if-eqz v0, :cond_11

    if-eqz v3, :cond_11

    move v0, v5

    goto :goto_a

    :cond_11
    :goto_9
    move v0, v2

    :goto_a
    if-ne v0, v5, :cond_14

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v3

    if-nez v3, :cond_12

    goto :goto_b

    :cond_12
    iget-object v3, v3, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    iget-boolean v3, v3, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->visible:Z

    if-ne v3, v2, :cond_13

    goto :goto_c

    :cond_13
    :goto_b
    move v2, v1

    :goto_c
    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v2

    if-nez v2, :cond_14

    return v1

    :cond_14
    if-ne v0, v5, :cond_15

    iget v2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-nez v2, :cond_15

    iget-boolean v2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->collapsingShadeFromQS:Z

    if-eqz v2, :cond_15

    return v1

    :cond_15
    if-eq v0, v5, :cond_16

    iget v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-ne v1, v5, :cond_16

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullyAwake:Z

    if-nez p0, :cond_16

    return v5

    :cond_16
    return v0
.end method

.method public final calculateTransformationType()I
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isTransitioningToFullShade()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->inSplitShade:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->areGuidedTransitionHostsVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget v4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-eqz v4, :cond_3

    :cond_2
    if-nez v0, :cond_4

    iget v4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-ne v4, v3, :cond_4

    :cond_3
    return v2

    :cond_4
    if-ne v0, v3, :cond_5

    iget p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-ne p0, v2, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public final cancelAnimationAndApplyDesiredState()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/media/MediaHierarchyManager;->applyState$default(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/graphics/Rect;FZLandroid/graphics/Rect;I)V

    :goto_0
    return-void
.end method

.method public final getAnimationParams(II)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getKeyguardFadingAwayDelay()J

    move-result-wide p0

    move-wide v2, p0

    :cond_0
    const-wide/16 p0, 0xe0

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    const-wide/16 p0, 0x1d0

    goto :goto_0

    :cond_2
    const-wide/16 p0, 0xc8

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public final getHost(I)Lcom/android/systemui/media/MediaHost;
    .locals 0

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaHosts:[Lcom/android/systemui/media/MediaHost;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getQSTransformationProgress()F
    .locals 5

    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaHosts:[Lcom/android/systemui/media/MediaHost;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    iget-boolean v2, v2, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->visible:Z

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    if-eqz v2, :cond_7

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget v0, v0, Lcom/android/systemui/media/MediaHost;->location:I

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v4

    :goto_3
    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->inSplitShade:Z

    if-nez v0, :cond_7

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    iget v0, v1, Lcom/android/systemui/media/MediaHost;->location:I

    if-ne v0, v3, :cond_5

    move v4, v3

    :cond_5
    :goto_4
    if-eqz v4, :cond_7

    iget-object v0, v1, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    iget-boolean v0, v0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->visible:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-eq v0, v3, :cond_7

    :cond_6
    iget p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpansion:F

    return p0

    :cond_7
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public final getTransformationProgress()F
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getQSTransformationProgress()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isTransitioningToFullShade()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullShadeTransitionProgress:F

    return p0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public final isCurrentlyFading()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->inSplitShade:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isTransitioningToFullShade()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isTransitioningToFullShade()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    return p0
.end method

.method public final isCurrentlyInGuidedTransformation()Z
    .locals 4

    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getTransformationProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->areGuidedTransitionHostsVisible()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method public final isHomeScreenShadeVisibleToUser()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isExpanded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLockScreenShadeVisibleToUser()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpanded:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final isLockScreenVisibleToUser()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowLockscreenNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpanded:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isTransitioningToFullShade()Z
    .locals 3

    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullShadeTransitionProgress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-ne p0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public final isVisibleToUser()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isLockScreenVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isLockScreenShadeVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isHomeScreenShadeVisibleToUser()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final performTransitionToNewLocation(ZZ)V
    .locals 6

    const-string v0, "MediaHierarchyManager#performTransitionToNewLocation"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    if-ltz v0, :cond_e

    if-eqz p1, :cond_0

    goto/16 :goto_8

    :cond_0
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    if-eqz p1, :cond_d

    if-nez v0, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateTargetState()V

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->applyTargetStateIfNotAnimating()V

    goto/16 :goto_6

    :cond_2
    if-eqz p2, :cond_b

    iget-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    iget p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationCrossFadeProgress:F

    iget-object v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iget v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    iget v2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartClipping:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/systemui/media/MediaHost;->currentClipping:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartClipping:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentClipping:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->calculateTransformationType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    iget v5, p0, Lcom/android/systemui/media/MediaHierarchyManager;->crossFadeAnimationEndLocation:I

    if-ne p1, v5, :cond_6

    if-eqz v0, :cond_9

    sub-float/2addr v4, p2

    goto :goto_3

    :cond_6
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->crossFadeAnimationStartLocation:I

    iget v2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-ne p1, v2, :cond_7

    sub-float p2, v4, p2

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    if-eqz v0, :cond_9

    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->carouselAlpha:F

    sub-float/2addr v4, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v4, p1

    :goto_3
    move p2, v4

    goto :goto_4

    :cond_9
    move p2, v2

    :goto_4
    move p1, v3

    :goto_5
    iput-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->crossFadeAnimationStartLocation:I

    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->crossFadeAnimationEndLocation:I

    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->carouselAlpha:F

    iput v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartAlpha:F

    iput p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartCrossFadeProgress:F

    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->getAnimationParams(II)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationPending:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootView:Landroid/view/View;

    if-nez p1, :cond_a

    goto :goto_6

    :cond_a
    iput-boolean v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationPending:Z

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->startAnimation:Lcom/android/systemui/media/MediaHierarchyManager$startAnimation$1;

    invoke-virtual {p1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->cancelAnimationAndApplyDesiredState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    :goto_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_d
    :goto_7
    :try_start_1
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->cancelAnimationAndApplyDesiredState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_e
    :goto_8
    :try_start_2
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->cancelAnimationAndApplyDesiredState()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final setQsExpanded(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpanded:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    iget-object v0, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iput-boolean p1, v0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->qsExpanded:Z

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isLockScreenShadeVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isHomeScreenShadeVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceImpression(Z)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    iget-object p1, p1, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isVisibleToUser()Z

    move-result p0

    iput-boolean p0, p1, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleToUser:Z

    return-void
.end method

.method public final shouldAnimateTransition(II)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    iget v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-nez v3, :cond_1

    return v1

    :cond_1
    if-ne p1, v2, :cond_3

    if-ne p2, v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-ne v3, v0, :cond_3

    :cond_2
    return v2

    :cond_3
    iget v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-ne v3, v2, :cond_5

    if-eq p1, v0, :cond_4

    if-ne p2, v0, :cond_5

    :cond_4
    return v1

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    iget-object p1, p1, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    sget-object p2, Lcom/android/systemui/media/MediaHierarchyManagerKt;->EMPTY_RECT:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_6

    :goto_1
    move p1, v1

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p2

    const/4 v0, 0x0

    cmpg-float p2, p2, v0

    if-nez p2, :cond_7

    move p2, v2

    goto :goto_2

    :cond_7
    move p2, v1

    :goto_2
    if-eqz p2, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    instance-of p2, p1, Landroid/view/View;

    if-nez p2, :cond_c

    move p1, v2

    :goto_3
    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationPending:Z

    if-eqz p0, :cond_b

    :cond_a
    move v1, v2

    :cond_b
    return v1

    :cond_c
    check-cast p1, Landroid/view/View;

    goto :goto_0
.end method

.method public final updateDesiredLocation(ZZ)V
    .locals 9

    const-string v0, "MediaHierarchyManager#updateDesiredLocation"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->calculateLocation()I

    move-result v2

    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-ne v2, v0, :cond_0

    if-eqz p2, :cond_9

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_1

    if-eq v2, v0, :cond_1

    iput v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    iget p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-ne p2, v3, :cond_2

    move p2, v3

    goto :goto_0

    :cond_2
    move p2, v1

    :goto_0
    if-nez v2, :cond_3

    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    if-nez p2, :cond_3

    iput v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    :cond_3
    :goto_1
    iget p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    move p2, v3

    goto :goto_2

    :cond_4
    move p2, v1

    :goto_2
    iput v2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-nez p1, :cond_5

    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->shouldAnimateTransition(II)Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v3

    goto :goto_3

    :cond_5
    move p1, v1

    :goto_3
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/media/MediaHierarchyManager;->getAnimationParams(II)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-virtual {p0, v2}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->calculateTransformationType()I

    move-result v4

    if-ne v4, v3, :cond_6

    move v1, v3

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result v1

    if-nez v1, :cond_7

    if-nez p1, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    move-object v3, v0

    move v4, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/media/MediaCarouselController;->onDesiredLocationChanged(ILcom/android/systemui/media/MediaHostState;ZJJ)Lkotlin/Unit;

    :cond_8
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->performTransitionToNewLocation(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final updateHostAttachment()V
    .locals 11

    const-string v0, "MediaHierarchyManager#updateHostAttachment"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationCrossFadeProgress:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->crossFadeAnimationStartLocation:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->crossFadeAnimationEndLocation:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyFading()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    if-eqz v4, :cond_9

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object v4, v4, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    iget-boolean v4, v4, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->visible:Z

    if-ne v4, v2, :cond_5

    move v4, v2

    goto :goto_4

    :cond_5
    :goto_3
    move v4, v3

    :goto_4
    if-eqz v4, :cond_9

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v4}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v4

    if-nez v4, :cond_8

    move v4, v2

    goto :goto_6

    :cond_8
    :goto_5
    move v4, v3

    :goto_6
    if-eqz v4, :cond_9

    iget v4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-eq v0, v4, :cond_9

    move v1, v2

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getTransformationProgress()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-nez v4, :cond_a

    move v4, v2

    goto :goto_7

    :cond_a
    move v4, v3

    :goto_7
    if-eqz v4, :cond_d

    :cond_b
    iget-object v4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-nez v4, :cond_d

    iget-boolean v4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationPending:Z

    if-eqz v4, :cond_c

    goto :goto_8

    :cond_c
    move v4, v3

    goto :goto_9

    :cond_d
    :goto_8
    move v4, v2

    :goto_9
    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootOverlay:Landroid/view/ViewGroupOverlay;

    if-eqz v4, :cond_e

    if-eqz v1, :cond_e

    goto :goto_a

    :cond_e
    move v2, v3

    :goto_a
    if-eqz v2, :cond_f

    const/16 v0, -0x3e8

    :cond_f
    move v4, v0

    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    if-eq v0, v4, :cond_12

    iput v4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    iget-object v0, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_10

    goto :goto_b

    :cond_10
    iget-object v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    iget-object v1, v1, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_b
    if-eqz v2, :cond_11

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootOverlay:Landroid/view/ViewGroupOverlay;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    iget-object v1, v1, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    goto :goto_c

    :cond_11
    invoke-virtual {p0, v4}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    iget-object v1, v1, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    iget-object v2, v2, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v5, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v2, v1, v0, v3, v5}, Landroid/view/ViewGroup;->setLeftTopRightBottom(IIII)V

    :goto_c
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    if-eqz v0, :cond_12

    iget-object v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {p0, v4}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v5

    const-wide/16 v7, 0xc8

    const-wide/16 v9, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/media/MediaCarouselController;->onDesiredLocationChanged(ILcom/android/systemui/media/MediaHostState;ZJJ)Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_12
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final updateTargetState()V
    .locals 6

    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyFading()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getTransformationProgress()F

    move-result v2

    iget-object v3, v1, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    iget-boolean v3, v3, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->visible:Z

    if-nez v3, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    iget-boolean v3, v3, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->visible:Z

    if-nez v3, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Lcom/android/systemui/media/MediaHierarchyManager;->interpolateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/systemui/media/MediaHost;->currentClipping:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->targetClipping:Landroid/graphics/Rect;

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v1, Lcom/android/systemui/media/MediaHost;->currentClipping:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->targetClipping:Landroid/graphics/Rect;

    :cond_3
    :goto_1
    return-void
.end method
