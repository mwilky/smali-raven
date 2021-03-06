.class public final Lcom/android/systemui/media/MediaCarouselScrollHandler;
.super Ljava/lang/Object;
.source "MediaCarouselScrollHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion;
    }
.end annotation


# static fields
.field private static final CONTENT_TRANSLATION:Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

.field public static final Companion:Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion;


# instance fields
.field private carouselHeight:I

.field private carouselWidth:I

.field private final closeGuts:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private contentTranslation:F

.field private cornerRadius:I

.field private final dismissCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field private final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private falsingProtectionNeeded:Z

.field private final gestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private final gestureListener:Lcom/android/systemui/media/MediaCarouselScrollHandler$gestureListener$1;

.field private final logSmartspaceImpression:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private mediaContent:Landroid/view/ViewGroup;

.field private final pageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private playerWidthPlusPadding:I

.field private qsExpanded:Z

.field private final scrollChangedListener:Lcom/android/systemui/media/MediaCarouselScrollHandler$scrollChangedListener$1;

.field private scrollIntoCurrentMedia:I

.field private final scrollView:Lcom/android/systemui/media/MediaScrollView;

.field private settingsButton:Landroid/view/View;

.field private showsSettingsButton:Z

.field private final touchListener:Lcom/android/systemui/media/MediaCarouselScrollHandler$touchListener$1;

.field private translationChangedListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private visibleMediaIndex:I

.field private visibleToUser:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->Companion:Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion;

    new-instance v0, Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    invoke-direct {v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;-><init>()V

    sput-object v0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/media/MediaScrollView;Lcom/android/systemui/qs/PageIndicator;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/MediaScrollView;",
            "Lcom/android/systemui/qs/PageIndicator;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "scrollView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageIndicator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dismissCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "translationChangedListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeGuts"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falsingCollector"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falsingManager"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logSmartspaceImpression"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    iput-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iput-object p3, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p4, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->dismissCallback:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->translationChangedListener:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->closeGuts:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iput-object p8, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p9, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->logSmartspaceImpression:Lkotlin/jvm/functions/Function1;

    new-instance p2, Lcom/android/systemui/media/MediaCarouselScrollHandler$gestureListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler$gestureListener$1;-><init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;)V

    iput-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->gestureListener:Lcom/android/systemui/media/MediaCarouselScrollHandler$gestureListener$1;

    new-instance p3, Lcom/android/systemui/media/MediaCarouselScrollHandler$touchListener$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler$touchListener$1;-><init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;)V

    iput-object p3, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->touchListener:Lcom/android/systemui/media/MediaCarouselScrollHandler$touchListener$1;

    new-instance p4, Lcom/android/systemui/media/MediaCarouselScrollHandler$scrollChangedListener$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler$scrollChangedListener$1;-><init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;)V

    iput-object p4, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollChangedListener:Lcom/android/systemui/media/MediaCarouselScrollHandler$scrollChangedListener$1;

    new-instance p5, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-direct {p5, p6, p2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p5, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1, p3}, Lcom/android/systemui/media/MediaScrollView;->setTouchListener(Lcom/android/systemui/Gefingerpoken;)V

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaScrollView;->getContentContainer()Landroid/view/ViewGroup;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p1, p4}, Landroid/widget/HorizontalScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    new-instance p2, Lcom/android/systemui/media/MediaCarouselScrollHandler$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler$1;-><init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;)V

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public static final synthetic access$getCarouselHeight$p(Lcom/android/systemui/media/MediaCarouselScrollHandler;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->carouselHeight:I

    return p0
.end method

.method public static final synthetic access$getCarouselWidth$p(Lcom/android/systemui/media/MediaCarouselScrollHandler;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->carouselWidth:I

    return p0
.end method

.method public static final synthetic access$getCornerRadius$p(Lcom/android/systemui/media/MediaCarouselScrollHandler;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->cornerRadius:I

    return p0
.end method

.method public static final synthetic access$getDismissCallback$p(Lcom/android/systemui/media/MediaCarouselScrollHandler;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->dismissCallback:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getFalsingCollector$p(Lcom/android/systemui/media/MediaCarouselScrollHandler;)Lcom/android/systemui/classifier/FalsingCollector;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    return-object p0
.end method

.method public static final synthetic access$getScrollView$p(Lcom/android/systemui/media/MediaCarouselScrollHandler;)Lcom/android/systemui/media/MediaScrollView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    return-object p0
.end method

.method public static final synthetic access$onFling(Lcom/android/systemui/media/MediaCarouselScrollHandler;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onFling(FF)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onInterceptTouch(Lcom/android/systemui/media/MediaCarouselScrollHandler;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onMediaScrollingChanged(Lcom/android/systemui/media/MediaCarouselScrollHandler;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onMediaScrollingChanged(II)V

    return-void
.end method

.method public static final synthetic access$onTouch(Lcom/android/systemui/media/MediaCarouselScrollHandler;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setContentTranslation(Lcom/android/systemui/media/MediaCarouselScrollHandler;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setContentTranslation(F)V

    return-void
.end method

.method private final getMaxTranslation()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->showsSettingsButton:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    const-string p0, "settingsButton"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    iget p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    :goto_0
    return p0
.end method

.method private final isFalseTouch()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingProtectionNeeded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final onFling(FF)Z
    .locals 7

    mul-float v0, p1, p1

    float-to-double v1, v0

    float-to-double v3, p2

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v3

    mul-double/2addr v5, v3

    cmpg-double p2, v1, v5

    const/4 v1, 0x0

    if-gez p2, :cond_0

    return v1

    :cond_0
    const p2, 0x49742400    # 1000000.0f

    cmpg-float p2, v0, p2

    if-gez p2, :cond_1

    return v1

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaScrollView;->getContentTranslation()F

    move-result p2

    const/4 v0, 0x0

    cmpg-float v2, p2, v0

    const/4 v3, 0x1

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-nez v2, :cond_6

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v4

    cmpg-float v2, v2, v4

    if-nez v2, :cond_3

    move v1, v3

    :cond_3
    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->isFalseTouch()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    mul-float/2addr v0, p2

    iget-boolean p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->showsSettingsButton:Z

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/media/MediaCarouselScrollHandler$onFling$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler$onFling$1;-><init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;)V

    const-wide/16 v4, 0x64

    invoke-interface {p2, v1, v4, v5}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :cond_5
    :goto_1
    sget-object p2, Lcom/android/wm/shell/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;

    invoke-virtual {p2, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p2

    sget-object v1, Lcom/android/systemui/media/MediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    invoke-static {}, Lcom/android/systemui/media/MediaCarouselScrollHandlerKt;->access$getTranslationConfig$p()Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    move-result-object v2

    invoke-virtual {p2, v1, v0, p1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaScrollView;->setAnimationTargetX(F)V

    goto :goto_5

    :cond_6
    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaScrollView;->getRelativeScrollX()I

    move-result p2

    iget v2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    if-lez v2, :cond_7

    div-int/2addr p2, v2

    goto :goto_2

    :cond_7
    move p2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_8

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    goto :goto_3

    :cond_8
    cmpg-float p1, p1, v0

    if-gez p1, :cond_9

    :goto_3
    move p1, v3

    goto :goto_4

    :cond_9
    move p1, v1

    :goto_4
    if-eqz p1, :cond_a

    add-int/lit8 p2, p2, 0x1

    :cond_a
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/media/MediaCarouselScrollHandler$onFling$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler$onFling$2;-><init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;Landroid/view/View;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_5
    return v3
.end method

.method private final onInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private final onMediaScrollingChanged(II)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    if-eqz p2, :cond_1

    move v1, v2

    :cond_1
    iget v3, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    if-ne p1, v3, :cond_2

    if-eq v0, v1, :cond_4

    :cond_2
    iput p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    if-eq v3, p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleToUser:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->logSmartspaceImpression:Lkotlin/jvm/functions/Function1;

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->qsExpanded:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->closeGuts:Lkotlin/jvm/functions/Function1;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->updatePlayerVisibilities()V

    :cond_4
    iget p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    int-to-float p1, p1

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    if-lez v0, :cond_5

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    :goto_1
    add-float/2addr p1, p2

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->isRtl()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, p1

    int-to-float p1, v2

    sub-float p1, p2, p1

    :cond_6
    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->updateClipToOutline()V

    return-void
.end method

.method private final onTouch(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingProtectionNeeded:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v3}, Lcom/android/systemui/classifier/FalsingCollector;->onNotificationStopDismissing()V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v3, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaScrollView;->cancelCurrentScroll()V

    return v2

    :cond_2
    return v1

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_d

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaScrollView;->getRelativeScrollX()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    rem-int/2addr p1, v0

    div-int/lit8 v3, v0, 0x2

    if-le p1, v3, :cond_5

    sub-int/2addr v0, p1

    goto :goto_1

    :cond_5
    mul-int/lit8 v0, p1, -0x1

    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_6

    neg-int v0, v0

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaScrollView;->getRelativeScrollX()I

    move-result p1

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v3, Lcom/android/systemui/media/MediaCarouselScrollHandler$onTouch$1;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler$onTouch$1;-><init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;I)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaScrollView;->getContentTranslation()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v3, p1, v0

    if-nez v3, :cond_8

    move v3, v2

    goto :goto_2

    :cond_8
    move v3, v1

    :goto_2
    if-nez v3, :cond_d

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->isFalseTouch()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    move v2, v1

    :cond_a
    :goto_3
    if-eqz v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr v2, p1

    iget-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->showsSettingsButton:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v3, Lcom/android/systemui/media/MediaCarouselScrollHandler$onTouch$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler$onTouch$2;-><init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;)V

    const-wide/16 v4, 0x64

    invoke-interface {p1, v3, v4, v5}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :cond_c
    :goto_4
    sget-object p1, Lcom/android/wm/shell/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    sget-object v3, Lcom/android/systemui/media/MediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    invoke-static {}, Lcom/android/systemui/media/MediaCarouselScrollHandlerKt;->access$getTranslationConfig$p()Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    move-result-object v4

    invoke-virtual {p1, v3, v2, v0, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/media/MediaScrollView;->setAnimationTargetX(F)V

    :cond_d
    return v1
.end method

.method public static synthetic resetTranslation$default(Lcom/android/systemui/media/MediaCarouselScrollHandler;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->resetTranslation(Z)V

    return-void
.end method

.method public static synthetic scrollToPlayer$default(Lcom/android/systemui/media/MediaCarouselScrollHandler;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, -0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollToPlayer(II)V

    return-void
.end method

.method private final setContentTranslation(F)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->contentTranslation:F

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->updateSettingsPresentation()V

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->translationChangedListener:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->updateClipToOutline()V

    return-void
.end method

.method private final updateClipToOutline()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->contentTranslation:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setClipToOutline(Z)V

    return-void
.end method

.method private final updateMediaPaddings()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_media_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v7

    if-eq v7, v3, :cond_1

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-lt v4, v1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private final updatePlayerVisibilities()V
    .locals 8

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_5

    move v4, v2

    :goto_1
    add-int/lit8 v5, v4, 0x1

    iget-object v6, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    if-eq v4, v7, :cond_2

    add-int/lit8 v7, v7, 0x1

    if-ne v4, v7, :cond_1

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    move v4, v2

    goto :goto_3

    :cond_2
    :goto_2
    move v4, v1

    :goto_3
    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_4

    :cond_3
    const/4 v4, 0x4

    :goto_4
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    if-lt v5, v3, :cond_4

    goto :goto_5

    :cond_4
    move v4, v5

    goto :goto_1

    :cond_5
    :goto_5
    return-void
.end method

.method private final updateSettingsPresentation()V
    .locals 10

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->showsSettingsButton:Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, "settingsButton"

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_f

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->contentTranslation:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v0, v5, v6, v4}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    sub-float v4, v6, v0

    iget-object v7, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    const v8, 0x3e99999a    # 0.3f

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->isRtl()Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->contentTranslation:F

    cmpl-float v8, v8, v5

    if-lez v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v8}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v7

    iget-object v7, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v8, v7

    neg-float v7, v8

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    neg-float v7, v7

    goto :goto_0

    :cond_2
    iget v8, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->contentTranslation:F

    cmpl-float v8, v8, v5

    if-lez v8, :cond_3

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v8}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v7

    iget-object v7, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v8, v7

    :goto_0
    const/16 v8, 0x32

    int-to-float v8, v8

    mul-float/2addr v4, v8

    iget-object v8, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz v8, :cond_b

    iget v9, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->contentTranslation:F

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    neg-float v9, v9

    mul-float/2addr v4, v9

    invoke-virtual {v8, v4}, Landroid/view/View;->setRotation(F)V

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v4, v6, v5, v6, v0}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz v4, :cond_9

    cmpg-float v0, v0, v5

    const/4 v5, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v5

    :goto_1
    if-nez v0, :cond_5

    move v1, v5

    :cond_5
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v7}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr v1, p0

    int-to-float p0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_c
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_f
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz p0, :cond_10

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    :cond_10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final getContentTranslation()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->contentTranslation:F

    return p0
.end method

.method public final getFalsingProtectionNeeded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingProtectionNeeded:Z

    return p0
.end method

.method public final getPlayerWidthPlusPadding()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    return p0
.end method

.method public final getQsExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->qsExpanded:Z

    return p0
.end method

.method public final getVisibleMediaIndex()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    return p0
.end method

.method public final getVisibleToUser()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleToUser:Z

    return p0
.end method

.method public final isRtl()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result p0

    return p0
.end method

.method public final onPlayersChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->updatePlayerVisibilities()V

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->updateMediaPaddings()V

    return-void
.end method

.method public final onPrePlayerRemoved(Lcom/android/systemui/media/MediaControlPanel;)V
    .locals 3

    const-string v0, "removed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaControlPanel;->getPlayerViewHolder()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eqz p1, :cond_2

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    move v1, p1

    :goto_2
    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    sub-int/2addr v0, p0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    :cond_5
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z
    .locals 7

    const-string v0, "down"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastMotion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaScrollView;->getContentTranslation()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    neg-float p2, p2

    float-to-int p2, p2

    invoke-virtual {v4, p2}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    :goto_1
    sub-float p2, p1, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpg-float v5, v5, v6

    if-nez v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    if-nez v5, :cond_5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    const v6, 0x3e4ccccd    # 0.2f

    if-lez v5, :cond_4

    mul-float/2addr p3, v6

    sub-float p2, p1, p3

    goto :goto_3

    :cond_4
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result p3

    int-to-float p3, p3

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getMaxTranslation()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v6

    add-float/2addr p3, v4

    mul-float/2addr p2, p3

    :cond_5
    :goto_3
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p3

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    cmpg-float p1, p3, p1

    if-nez p1, :cond_6

    move p1, v2

    goto :goto_4

    :cond_6
    move p1, v3

    :goto_4
    if-nez p1, :cond_8

    if-nez v1, :cond_7

    move v3, v2

    :cond_7
    if-nez v3, :cond_8

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    float-to-int p3, p2

    neg-int p3, p3

    invoke-virtual {p1, p3}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_8

    move p2, v0

    :cond_8
    sget-object p1, Lcom/android/wm/shell/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_9

    sget-object p3, Lcom/android/systemui/media/MediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    invoke-static {}, Lcom/android/systemui/media/MediaCarouselScrollHandlerKt;->access$getTranslationConfig$p()Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    move-result-object v1

    invoke-virtual {p1, p3, p2, v0, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    goto :goto_5

    :cond_9
    invoke-direct {p0, p2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setContentTranslation(F)V

    :goto_5
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/media/MediaScrollView;->setAnimationTargetX(F)V

    return v2
.end method

.method public final onSettingsButtonUpdated(Landroid/view/View;)V
    .locals 3

    const-string v0, "button"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    const/4 v0, 0x0

    const-string v1, "settingsButton"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010571

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->cornerRadius:I

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->updateSettingsPresentation()V

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidateOutline()V

    return-void

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public final resetTranslation(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaScrollView;->getContentTranslation()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/wm/shell/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    invoke-static {}, Lcom/android/systemui/media/MediaCarouselScrollHandlerKt;->access$getTranslationConfig$p()Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/MediaScrollView;->setAnimationTargetX(F)V

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/android/wm/shell/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    invoke-direct {p0, v1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setContentTranslation(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final scrollToPlayer(II)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    iget v1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    mul-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/MediaScrollView;->setRelativeScrollX(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/media/MediaCarouselScrollHandler$scrollToPlayer$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/MediaCarouselScrollHandler$scrollToPlayer$1;-><init>(Lcom/android/systemui/media/MediaCarouselScrollHandler;Landroid/view/View;)V

    const-wide/16 p0, 0x64

    invoke-interface {p2, v0, p0, p1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return-void
.end method

.method public final scrollToStart()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaScrollView;->setRelativeScrollX(I)V

    return-void
.end method

.method public final setCarouselBounds(II)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->carouselHeight:I

    if-ne p2, v0, :cond_0

    if-eq p1, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->carouselWidth:I

    iput p2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->carouselHeight:I

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidateOutline()V

    :cond_1
    return-void
.end method

.method public final setFalsingProtectionNeeded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingProtectionNeeded:Z

    return-void
.end method

.method public final setPlayerWidthPlusPadding(I)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    if-le v1, p1, :cond_0

    sub-int/2addr v1, p1

    sub-int/2addr p1, v1

    add-int/2addr v0, p1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaScrollView;->setRelativeScrollX(I)V

    return-void
.end method

.method public final setQsExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->qsExpanded:Z

    return-void
.end method

.method public final setShowsSettingsButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->showsSettingsButton:Z

    return-void
.end method

.method public final setVisibleToUser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleToUser:Z

    return-void
.end method
