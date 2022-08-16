.class public final Lcom/android/systemui/media/MediaViewController;
.super Ljava/lang/Object;
.source "MediaViewController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaViewController$TYPE;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaViewController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaViewController.kt\ncom/android/systemui/media/MediaViewController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 TraceUtils.kt\ncom/android/systemui/util/TraceUtilsKt\n*L\n1#1,548:1\n1849#2,2:549\n1849#2,2:551\n1#3:553\n26#4,5:554\n26#4,5:559\n26#4,5:564\n26#4,5:569\n*S KotlinDebug\n*F\n+ 1 MediaViewController.kt\ncom/android/systemui/media/MediaViewController\n*L\n265#1:549,2\n272#1:551,2\n354#1:554,5\n377#1:559,5\n393#1:564,5\n525#1:569,5\n*E\n"
.end annotation


# instance fields
.field public animateNextStateChange:Z

.field public animationDelay:J

.field public animationDuration:J

.field public final collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configurationListener:Lcom/android/systemui/media/MediaViewController$configurationListener$1;

.field public final context:Landroid/content/Context;

.field public currentEndLocation:I

.field public currentHeight:I

.field public currentStartLocation:I

.field public currentTransitionProgress:F

.field public currentWidth:I

.field public final expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

.field public firstRefresh:Z

.field public isGutsVisible:Z

.field public final layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

.field public final logger:Lcom/android/systemui/media/MediaViewLogger;

.field public final measurement:Lcom/android/systemui/util/animation/MeasurementOutput;

.field public final mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

.field public sizeChangedListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final stateCallback:Lcom/android/systemui/media/MediaViewController$stateCallback$1;

.field public final tmpKey:Lcom/android/systemui/media/CacheKey;

.field public final tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

.field public final tmpState2:Lcom/android/systemui/util/animation/TransitionViewState;

.field public final tmpState3:Lcom/android/systemui/util/animation/TransitionViewState;

.field public transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

.field public type:Lcom/android/systemui/media/MediaViewController$TYPE;

.field public final viewStates:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/MediaHostStatesManager;Lcom/android/systemui/media/MediaViewLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaViewController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/MediaViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p3, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    iput-object p4, p0, Lcom/android/systemui/media/MediaViewController;->logger:Lcom/android/systemui/media/MediaViewLogger;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaViewController;->firstRefresh:Z

    new-instance p1, Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-direct {p1}, Lcom/android/systemui/util/animation/TransitionLayoutController;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    new-instance p4, Lcom/android/systemui/util/animation/MeasurementOutput;

    invoke-direct {p4}, Lcom/android/systemui/util/animation/MeasurementOutput;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/media/MediaViewController;->measurement:Lcom/android/systemui/util/animation/MeasurementOutput;

    sget-object p4, Lcom/android/systemui/media/MediaViewController$TYPE;->PLAYER:Lcom/android/systemui/media/MediaViewController$TYPE;

    iput-object p4, p0, Lcom/android/systemui/media/MediaViewController;->type:Lcom/android/systemui/media/MediaViewController$TYPE;

    new-instance p4, Ljava/util/LinkedHashMap;

    invoke-direct {p4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/media/MediaViewController;->viewStates:Ljava/util/LinkedHashMap;

    const/4 p4, -0x1

    iput p4, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    iput p4, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    const/high16 p4, 0x3f800000    # 1.0f

    iput p4, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    new-instance p4, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p4}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/media/MediaViewController;->tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

    new-instance p4, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p4}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/media/MediaViewController;->tmpState2:Lcom/android/systemui/util/animation/TransitionViewState;

    new-instance p4, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p4}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/media/MediaViewController;->tmpState3:Lcom/android/systemui/util/animation/TransitionViewState;

    new-instance p4, Lcom/android/systemui/media/CacheKey;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/android/systemui/media/CacheKey;-><init>(I)V

    iput-object p4, p0, Lcom/android/systemui/media/MediaViewController;->tmpKey:Lcom/android/systemui/media/CacheKey;

    new-instance p4, Lcom/android/systemui/media/MediaViewController$configurationListener$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/media/MediaViewController$configurationListener$1;-><init>(Lcom/android/systemui/media/MediaViewController;)V

    iput-object p4, p0, Lcom/android/systemui/media/MediaViewController;->configurationListener:Lcom/android/systemui/media/MediaViewController$configurationListener$1;

    new-instance v0, Lcom/android/systemui/media/MediaViewController$stateCallback$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaViewController$stateCallback$1;-><init>(Lcom/android/systemui/media/MediaViewController;)V

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewController;->stateCallback:Lcom/android/systemui/media/MediaViewController$stateCallback$1;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object p3, p3, Lcom/android/systemui/media/MediaHostStatesManager;->controllers:Ljava/util/LinkedHashSet;

    invoke-interface {p3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/android/systemui/media/MediaViewController$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/media/MediaViewController$1;-><init>(Lcom/android/systemui/media/MediaViewController;)V

    iput-object p3, p1, Lcom/android/systemui/util/animation/TransitionLayoutController;->sizeChangedListener:Lkotlin/jvm/functions/Function2;

    invoke-interface {p2, p4}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/util/animation/TransitionLayout;Lcom/android/systemui/media/MediaViewController$TYPE;)V
    .locals 6

    const-string v0, "MediaViewController#attach"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/media/MediaViewController;->updateMediaViewControllerType(Lcom/android/systemui/media/MediaViewController$TYPE;)V

    iget-object p2, p0, Lcom/android/systemui/media/MediaViewController;->logger:Lcom/android/systemui/media/MediaViewLogger;

    const-string v0, "attach"

    iget v1, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    iget v2, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    iget-object p2, p2, Lcom/android/systemui/media/MediaViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v4, Lcom/android/systemui/media/MediaViewLogger$logMediaLocation$2;->INSTANCE:Lcom/android/systemui/media/MediaViewLogger$logMediaLocation$2;

    const-string v5, "MediaView"

    invoke-virtual {p2, v5, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v3

    iput-object v0, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput v1, v3, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput v2, v3, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    invoke-virtual {p2, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    iput-object p1, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    iget-object p2, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    iput-object p1, p2, Lcom/android/systemui/util/animation/TransitionLayoutController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    iget p1, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    :try_start_1
    iget p2, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    iget v0, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    const/4 v1, 0x1

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/media/MediaViewController;->isGutsVisible:Z

    iget-object v2, p0, Lcom/android/systemui/media/MediaViewController;->tmpKey:Lcom/android/systemui/media/CacheKey;

    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    iget v3, v3, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    :goto_0
    iput v3, v2, Lcom/android/systemui/media/CacheKey;->heightMeasureSpec:I

    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    iget v3, v3, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    :goto_1
    iput v3, v2, Lcom/android/systemui/media/CacheKey;->widthMeasureSpec:I

    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result v3

    iput v3, v2, Lcom/android/systemui/media/CacheKey;->expansion:F

    iput-boolean v1, v2, Lcom/android/systemui/media/CacheKey;->gutsVisible:Z

    iget-object v1, p0, Lcom/android/systemui/media/MediaViewController;->viewStates:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/animation/TransitionViewState;

    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    iget v1, v2, Lcom/android/systemui/media/CacheKey;->widthMeasureSpec:I

    iget v3, v2, Lcom/android/systemui/media/CacheKey;->heightMeasureSpec:I

    iget v5, v2, Lcom/android/systemui/media/CacheKey;->expansion:F

    iget-boolean v2, v2, Lcom/android/systemui/media/CacheKey;->gutsVisible:Z

    new-instance v6, Lcom/android/systemui/media/CacheKey;

    invoke-direct {v6, v1, v3, v5, v2}, Lcom/android/systemui/media/CacheKey;-><init>(IIFZ)V

    iget-object v1, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-eqz v1, :cond_15

    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    const/4 v3, 0x1

    if-nez v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    if-nez v1, :cond_9

    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result v1

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v5

    if-nez v1, :cond_5

    move v4, v3

    :cond_5
    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->copy()Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->setExpansion(F)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.android.systemui.util.animation.TransitionViewState"

    if-eqz v1, :cond_8

    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->copy()Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->setExpansion(F)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result p1

    invoke-virtual {p0, v1, v3, p1, v0}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getInterpolatedState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/TransitionViewState;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v0

    goto/16 :goto_c

    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/media/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/android/systemui/media/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    :goto_4
    new-instance v4, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {v4}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    invoke-virtual {v0, v1, p1, v4}, Lcom/android/systemui/util/animation/TransitionLayout;->calculateViewState(Lcom/android/systemui/util/animation/MeasurementInput;Landroidx/constraintlayout/widget/ConstraintSet;Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    iget-object p1, p0, Lcom/android/systemui/media/MediaViewController;->type:Lcom/android/systemui/media/MediaViewController$TYPE;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_c

    if-ne p1, v3, :cond_b

    sget-object p1, Lcom/android/systemui/media/RecommendationViewHolder;->controlsIds:Ljava/util/Set;

    goto :goto_5

    :cond_b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_c
    sget-object p1, Lcom/android/systemui/media/MediaViewHolder;->controlsIds:Ljava/util/Set;

    :goto_5
    sget-object v0, Lcom/android/systemui/media/GutsViewHolder;->ids:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v5, v4, Lcom/android/systemui/util/animation/TransitionViewState;->widgetStates:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v1, :cond_d

    goto :goto_6

    :cond_d
    iget-boolean v5, p0, Lcom/android/systemui/media/MediaViewController;->isGutsVisible:Z

    if-eqz v5, :cond_e

    move v7, v2

    goto :goto_7

    :cond_e
    iget v7, v1, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    :goto_7
    iput v7, v1, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    if-eqz v5, :cond_f

    move v5, v3

    goto :goto_8

    :cond_f
    iget-boolean v5, v1, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    :goto_8
    iput-boolean v5, v1, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    goto :goto_6

    :cond_10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, v4, Lcom/android/systemui/util/animation/TransitionViewState;->widgetStates:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v0, :cond_11

    goto :goto_9

    :cond_11
    iget-boolean v1, p0, Lcom/android/systemui/media/MediaViewController;->isGutsVisible:Z

    if-eqz v1, :cond_12

    iget v5, v0, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    goto :goto_a

    :cond_12
    move v5, v2

    :goto_a
    iput v5, v0, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    if-eqz v1, :cond_13

    iget-boolean v1, v0, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    goto :goto_b

    :cond_13
    move v1, v3

    :goto_b
    iput-boolean v1, v0, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    goto :goto_9

    :cond_14
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->viewStates:Ljava/util/LinkedHashMap;

    invoke-interface {p0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v4

    :cond_15
    :goto_c
    return-object v0
.end method

.method public final refreshState()V
    .locals 4

    const-string v0, "MediaViewController#refreshState"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->viewStates:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->firstRefresh:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    iget-object v0, v0, Lcom/android/systemui/media/MediaHostStatesManager;->mediaHostStates:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaHostState;

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->firstRefresh:Z

    :cond_1
    iget v0, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    iget v1, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    iget v2, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final setCurrentState(IIFZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "MediaView"

    const-string/jumbo v5, "setCurrentState"

    const-string v6, "MediaViewController#setCurrentState"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iput v2, v0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    iput v1, v0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    iput v3, v0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    iget-object v6, v0, Lcom/android/systemui/media/MediaViewController;->logger:Lcom/android/systemui/media/MediaViewLogger;

    iget-object v6, v6, Lcom/android/systemui/media/MediaViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v7, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v8, Lcom/android/systemui/media/MediaViewLogger$logMediaLocation$2;->INSTANCE:Lcom/android/systemui/media/MediaViewLogger$logMediaLocation$2;

    invoke-virtual {v6, v4, v7, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v8

    iput-object v5, v8, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput v1, v8, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput v2, v8, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    invoke-virtual {v6, v8}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    iget-boolean v6, v0, Lcom/android/systemui/media/MediaViewController;->animateNextStateChange:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_0

    if-nez p4, :cond_0

    move v13, v8

    goto :goto_0

    :cond_0
    move v13, v9

    :goto_0
    iget-object v6, v0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    iget-object v6, v6, Lcom/android/systemui/media/MediaHostStatesManager;->mediaHostStates:Ljava/util/LinkedHashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/MediaHostState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_1
    :try_start_1
    iget-object v10, v0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    iget-object v10, v10, Lcom/android/systemui/media/MediaHostStatesManager;->mediaHostStates:Ljava/util/LinkedHashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/media/MediaHostState;

    invoke-virtual {v0, v6}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v11, :cond_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_2
    :try_start_2
    iget-object v12, v0, Lcom/android/systemui/media/MediaViewController;->tmpState2:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v0, v11, v2, v12}, Lcom/android/systemui/media/MediaViewController;->updateViewStateToCarouselSize(Lcom/android/systemui/util/animation/TransitionViewState;ILcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v11, v0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-virtual {v11, v2}, Lcom/android/systemui/util/animation/TransitionLayoutController;->setMeasureState(Lcom/android/systemui/util/animation/TransitionViewState;)V

    iput-boolean v9, v0, Lcom/android/systemui/media/MediaViewController;->animateNextStateChange:Z

    iget-object v11, v0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v11, :cond_3

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {v0, v10}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v11

    iget-object v12, v0, Lcom/android/systemui/media/MediaViewController;->tmpState3:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v0, v11, v1, v12}, Lcom/android/systemui/media/MediaViewController;->updateViewStateToCarouselSize(Lcom/android/systemui/util/animation/TransitionViewState;ILcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v1

    invoke-interface {v6}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result v11

    if-nez v11, :cond_5

    if-eqz v1, :cond_b

    if-eqz v10, :cond_b

    invoke-interface {v10}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    iget-object v2, v0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-interface {v10}, Lcom/android/systemui/media/MediaHostState;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object v6

    iget-object v8, v0, Lcom/android/systemui/media/MediaViewController;->tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v6, v3, v8}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getGoneState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/DisappearParameters;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v1

    goto :goto_3

    :cond_5
    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v10, :cond_6

    invoke-interface {v10}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v1, v0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-interface {v6}, Lcom/android/systemui/media/MediaHostState;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object v6

    sub-float/2addr v11, v3

    iget-object v3, v0, Lcom/android/systemui/media/MediaViewController;->tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v6, v11, v3}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getGoneState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/DisappearParameters;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v1

    goto :goto_3

    :cond_6
    cmpg-float v6, v3, v11

    if-nez v6, :cond_7

    move v6, v8

    goto :goto_1

    :cond_7
    move v6, v9

    :goto_1
    if-nez v6, :cond_b

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    cmpg-float v6, v3, v6

    if-nez v6, :cond_9

    goto :goto_2

    :cond_9
    move v8, v9

    :goto_2
    if-eqz v8, :cond_a

    goto :goto_3

    :cond_a
    iget-object v6, v0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    iget-object v8, v0, Lcom/android/systemui/media/MediaViewController;->tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v6, v1, v2, v3, v8}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getInterpolatedState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/TransitionViewState;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v1

    :goto_3
    move-object v11, v1

    goto :goto_5

    :cond_b
    :goto_4
    move-object v11, v2

    :goto_5
    iget-object v1, v0, Lcom/android/systemui/media/MediaViewController;->logger:Lcom/android/systemui/media/MediaViewLogger;

    iget v2, v11, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    iget v3, v11, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    iget-object v1, v1, Lcom/android/systemui/media/MediaViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v6, Lcom/android/systemui/media/MediaViewLogger$logMediaSize$2;->INSTANCE:Lcom/android/systemui/media/MediaViewLogger$logMediaSize$2;

    invoke-virtual {v1, v4, v7, v6}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v4

    iput-object v5, v4, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput v2, v4, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput v3, v4, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    invoke-virtual {v1, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    iget-object v10, v0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    iget-wide v14, v0, Lcom/android/systemui/media/MediaViewController;->animationDuration:J

    iget-wide v0, v0, Lcom/android/systemui/media/MediaViewController;->animationDelay:J

    move/from16 v12, p4

    move-wide/from16 v16, v0

    invoke-virtual/range {v10 .. v17}, Lcom/android/systemui/util/animation/TransitionLayoutController;->setState(Lcom/android/systemui/util/animation/TransitionViewState;ZZJJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method public final updateMediaViewControllerType(Lcom/android/systemui/media/MediaViewController$TYPE;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/media/MediaViewController;->type:Lcom/android/systemui/media/MediaViewController$TYPE;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->context:Landroid/content/Context;

    const v1, 0x7f170004

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->context:Landroid/content/Context;

    const v1, 0x7f170005

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/media/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->context:Landroid/content/Context;

    const v1, 0x7f170006

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->context:Landroid/content/Context;

    const v1, 0x7f170007

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->refreshState()V

    return-void
.end method

.method public final updateViewStateToCarouselSize(Lcom/android/systemui/util/animation/TransitionViewState;ILcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/android/systemui/util/animation/TransitionViewState;->copy(Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    iget-object p3, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    iget-object p3, p3, Lcom/android/systemui/media/MediaHostStatesManager;->carouselSizes:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/animation/MeasurementOutput;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    iget p3, p2, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    iget v0, p1, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p1, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    iget p2, p2, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    iget p3, p1, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->logger:Lcom/android/systemui/media/MediaViewLogger;

    iget p2, p1, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    iget p3, p1, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/media/MediaViewLogger$logMediaSize$2;->INSTANCE:Lcom/android/systemui/media/MediaViewLogger$logMediaSize$2;

    const-string v2, "MediaView"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    const-string/jumbo v1, "update to carousel"

    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput p2, v0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput p3, v0, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    return-object p1
.end method
