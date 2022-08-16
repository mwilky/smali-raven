.class public final Lcom/android/systemui/media/MediaCarouselScrollHandler$gestureListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MediaCarouselScrollHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaCarouselScrollHandler;-><init>(Lcom/android/systemui/media/MediaScrollView;Lcom/android/systemui/qs/PageIndicator;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/MediaUiEventLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$gestureListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$gestureListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iget-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingProtectionNeeded:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {p0}, Lcom/android/systemui/classifier/FalsingCollector;->onNotificationStartDismissing()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$gestureListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-float p1, p3, p3

    float-to-double v0, p1

    float-to-double v2, p4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v2

    mul-double/2addr v4, v2

    cmpg-double p2, v0, v4

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-gez p2, :cond_0

    goto/16 :goto_8

    :cond_0
    const p2, 0x49742400    # 1000000.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaScrollView;->getContentTranslation()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float v1, p1, p2

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, p4

    :goto_0
    if-nez v1, :cond_7

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    cmpg-float v1, v1, v2

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, p4

    :goto_1
    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingProtectionNeeded:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move p4, v0

    :cond_4
    if-eqz p4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr p2, p1

    iget-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->showsSettingsButton:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p4, Lcom/android/systemui/media/MediaCarouselScrollHandler$onFling$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler$onFling$1;-><init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;)V

    const-wide/16 v1, 0x64

    invoke-interface {p1, p4, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :cond_6
    :goto_2
    sget-object p1, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    invoke-static {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    sget-object p4, Lcom/android/systemui/media/MediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    sget-object v1, Lcom/android/systemui/media/MediaCarouselScrollHandlerKt;->translationConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {p1, p4, p2, p3, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    iput p2, p0, Lcom/android/systemui/media/MediaScrollView;->animationTargetX:F

    goto :goto_7

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p1, Lcom/android/systemui/media/MediaScrollView;->contentContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p1

    sub-int/2addr v2, p1

    sub-int v1, v2, v1

    :cond_9
    iget p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    if-lez p1, :cond_a

    div-int/2addr v1, p1

    goto :goto_4

    :cond_a
    move v1, p4

    :goto_4
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_b

    cmpl-float p1, p3, p2

    if-lez p1, :cond_c

    goto :goto_5

    :cond_b
    cmpg-float p1, p3, p2

    if-gez p1, :cond_c

    :goto_5
    move p1, v0

    goto :goto_6

    :cond_c
    move p1, p4

    :goto_6
    if-eqz p1, :cond_d

    add-int/lit8 v1, v1, 0x1

    :cond_d
    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p3, Lcom/android/systemui/media/MediaCarouselScrollHandler$onFling$2;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler$onFling$2;-><init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;Landroid/view/View;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_7
    move p4, v0

    :goto_8
    return p4
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler$gestureListener$1;->this$0:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaScrollView;->getContentTranslation()F

    move-result p1

    const/4 p4, 0x0

    cmpg-float v0, p1, p4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    neg-float p2, p2

    float-to-int p2, p2

    invoke-virtual {v3, p2}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto/16 :goto_6

    :cond_2
    :goto_1
    sub-float p2, p1, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-nez v4, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    if-nez v4, :cond_5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    const v5, 0x3e4ccccd    # 0.2f

    if-lez v4, :cond_4

    mul-float/2addr p3, v5

    sub-float p2, p1, p3

    goto :goto_3

    :cond_4
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v5

    add-float/2addr v3, p3

    mul-float/2addr p2, v3

    :cond_5
    :goto_3
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p3

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    cmpg-float p1, p3, p1

    if-nez p1, :cond_6

    move p1, v1

    goto :goto_4

    :cond_6
    move p1, v2

    :goto_4
    if-nez p1, :cond_8

    if-nez v0, :cond_7

    move v2, v1

    :cond_7
    if-nez v2, :cond_8

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    float-to-int p3, p2

    neg-int p3, p3

    invoke-virtual {p1, p3}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_8

    move p2, p4

    :cond_8
    sget-object p1, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    invoke-static {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_9

    sget-object p3, Lcom/android/systemui/media/MediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    sget-object v0, Lcom/android/systemui/media/MediaCarouselScrollHandlerKt;->translationConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {p1, p3, p2, p4, v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    goto :goto_5

    :cond_9
    invoke-virtual {p0, p2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setContentTranslation(F)V

    :goto_5
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    iput p2, p0, Lcom/android/systemui/media/MediaScrollView;->animationTargetX:F

    :goto_6
    return v1
.end method
