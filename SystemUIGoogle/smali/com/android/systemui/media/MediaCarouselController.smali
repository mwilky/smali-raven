.class public final Lcom/android/systemui/media/MediaCarouselController;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaCarouselController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaCarouselController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 TraceUtils.kt\ncom/android/systemui/util/TraceUtilsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1079:1\n334#2,8:1080\n1849#2,2:1099\n1849#2,2:1106\n1858#2,3:1110\n26#3,5:1088\n26#3,5:1093\n26#3,5:1101\n1#4:1098\n13557#5,2:1108\n*S KotlinDebug\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaCarouselController\n*L\n416#1:1080,8\n548#1:1099,2\n747#1:1106,2\n878#1:1110,3\n430#1:1088,5\n476#1:1093,5\n705#1:1101,5\n839#1:1108,2\n*E\n"
.end annotation


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public carouselMeasureHeight:I

.field public carouselMeasureWidth:I

.field public final context:Landroid/content/Context;

.field public currentCarouselHeight:I

.field public currentCarouselWidth:I

.field public currentEndLocation:I

.field public currentStartLocation:I

.field public currentTransitionProgress:F

.field public currentlyExpanded:Z

.field public currentlyShowingOnlyActive:Z

.field public final debugLogger:Lcom/android/systemui/media/MediaCarouselControllerLogger;

.field public desiredHostState:Lcom/android/systemui/media/MediaHostState;

.field public desiredLocation:I

.field public isRtl:Z

.field public keysNeedRemoval:Ljava/util/LinkedHashSet;

.field public final logger:Lcom/android/systemui/media/MediaUiEventLogger;

.field public final mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

.field public final mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

.field public final mediaContent:Landroid/view/ViewGroup;

.field public final mediaControlPanelFactory:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaControlPanel;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaFrame:Landroid/view/ViewGroup;

.field public final mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

.field public final mediaManager:Lcom/android/systemui/media/MediaDataManager;

.field public needsReordering:Z

.field public final pageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field public playersVisible:Z

.field public settingsButton:Landroid/view/View;

.field public shouldScrollToActivePlayer:Z

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public updateUserVisibility:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final visualStabilityCallback:Lcom/android/systemui/media/MediaCarouselController$5;

.field public final visualStabilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;Lcom/android/systemui/media/MediaHostStatesManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/media/MediaUiEventLogger;Lcom/android/systemui/media/MediaCarouselControllerLogger;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaControlPanel;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;",
            "Lcom/android/systemui/media/MediaHostStatesManager;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/media/MediaDataManager;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/media/MediaUiEventLogger;",
            "Lcom/android/systemui/media/MediaCarouselControllerLogger;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    move-object/from16 v5, p2

    iput-object v5, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaControlPanelFactory:Ljavax/inject/Provider;

    iput-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;

    iput-object v3, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/systemui/media/MediaCarouselController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v5, p6

    iput-object v5, v0, Lcom/android/systemui/media/MediaCarouselController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object v4, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/MediaDataManager;

    move-object/from16 v15, p13

    iput-object v15, v0, Lcom/android/systemui/media/MediaCarouselController;->logger:Lcom/android/systemui/media/MediaUiEventLogger;

    move-object/from16 v5, p14

    iput-object v5, v0, Lcom/android/systemui/media/MediaCarouselController;->debugLogger:Lcom/android/systemui/media/MediaCarouselControllerLogger;

    const/4 v5, -0x1

    iput v5, v0, Lcom/android/systemui/media/MediaCarouselController;->desiredLocation:I

    iput v5, v0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    iput v5, v0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/media/MediaCarouselController;->keysNeedRemoval:Ljava/util/LinkedHashSet;

    const/4 v14, 0x1

    iput-boolean v14, v0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    new-instance v13, Lcom/android/systemui/media/MediaCarouselController$configListener$1;

    invoke-direct {v13, v0}, Lcom/android/systemui/media/MediaCarouselController$configListener$1;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    const-string v5, "MediaCarouselController"

    move-object/from16 v6, p12

    invoke-virtual {v6, v5, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/util/animation/UniqueObjectHostView;

    invoke-direct {v6, v1}, Lcom/android/systemui/util/animation/UniqueObjectHostView;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0e0138

    const/4 v12, 0x0

    invoke-virtual {v5, v7, v6, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object v11, v5

    check-cast v11, Landroid/view/ViewGroup;

    const/4 v5, 0x3

    invoke-virtual {v11, v5}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    iput-object v11, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    const v5, 0x7f0b03eb

    invoke-virtual {v11, v5}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcom/android/systemui/media/MediaScrollView;

    iput-object v10, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    const v5, 0x7f0b03f5

    invoke-virtual {v11, v5}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/android/systemui/qs/PageIndicator;

    iput-object v7, v0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    new-instance v9, Lcom/android/systemui/media/MediaCarouselScrollHandler;

    new-instance v8, Lcom/android/systemui/media/MediaCarouselController$1;

    invoke-direct {v8, v0}, Lcom/android/systemui/media/MediaCarouselController$1;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lcom/android/systemui/media/MediaCarouselController$2;

    invoke-direct {v6, v0}, Lcom/android/systemui/media/MediaCarouselController$2;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lcom/android/systemui/media/MediaCarouselController$3;

    invoke-direct {v5, v0}, Lcom/android/systemui/media/MediaCarouselController$3;-><init>(Ljava/lang/Object;)V

    new-instance v14, Lcom/android/systemui/media/MediaCarouselController$4;

    invoke-direct {v14, v0}, Lcom/android/systemui/media/MediaCarouselController$4;-><init>(Ljava/lang/Object;)V

    move-object/from16 v16, v5

    move-object v5, v9

    move-object/from16 v17, v6

    move-object v6, v10

    move-object/from16 v18, v8

    move-object/from16 v8, p7

    move-object v1, v9

    move-object/from16 v9, v18

    move-object/from16 p5, v10

    move-object/from16 v10, v17

    move-object v3, v11

    move-object/from16 v11, v16

    move/from16 v16, v12

    move-object/from16 v12, p10

    move-object v4, v13

    move-object/from16 v13, p11

    const/4 v2, 0x1

    move-object/from16 v15, p13

    invoke-direct/range {v5 .. v15}, Lcom/android/systemui/media/MediaCarouselScrollHandler;-><init>(Lcom/android/systemui/media/MediaScrollView;Lcom/android/systemui/qs/PageIndicator;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/MediaUiEventLogger;)V

    iput-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v14, v2

    goto :goto_0

    :cond_0
    move/from16 v14, v16

    :goto_0
    iget-boolean v1, v0, Lcom/android/systemui/media/MediaCarouselController;->isRtl:Z

    if-eq v14, v1, :cond_3

    iput-boolean v14, v0, Lcom/android/systemui/media/MediaCarouselController;->isRtl:Z

    invoke-virtual {v3, v14}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    invoke-virtual/range {p5 .. p5}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v1

    move-object/from16 v5, p5

    if-eqz v1, :cond_2

    iget-object v1, v5, Lcom/android/systemui/media/MediaScrollView;->contentContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v12, v1, 0x0

    goto :goto_2

    :cond_2
    move/from16 v12, v16

    :goto_2
    invoke-virtual {v5, v12}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    goto :goto_3

    :cond_3
    move-object/from16 v5, p5

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaCarouselController;->inflateSettingsButton()V

    const v1, 0x7f0b03ea

    invoke-virtual {v5, v1}, Landroid/widget/HorizontalScrollView;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    move-object/from16 v1, p9

    invoke-interface {v1, v4}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$5;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaCarouselController$5;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    iput-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityCallback:Lcom/android/systemui/media/MediaCarouselController$5;

    move-object/from16 v2, p3

    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;->temporaryListeners:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;->allListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {v2, v1}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$6;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaCarouselController$6;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    move-object/from16 v2, p8

    iget-object v2, v2, Lcom/android/systemui/media/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;

    iget-object v2, v2, Lcom/android/systemui/media/MediaDataFilter;->_listeners:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$7;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaCarouselController$7;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$8;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaCarouselController$8;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/systemui/media/MediaHostStatesManager;->callbacks:Ljava/util/LinkedHashSet;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final access$updateCarouselDimensions(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaControlPanel;

    iget-object v3, v3, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    iget v4, v3, Lcom/android/systemui/media/MediaViewController;->currentWidth:I

    iget-object v5, v3, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v5

    :goto_1
    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v4, v3, Lcom/android/systemui/media/MediaViewController;->currentHeight:I

    iget-object v3, v3, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v6

    :goto_2
    float-to-int v3, v6

    add-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    if-ne v1, v0, :cond_3

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselHeight:I

    if-eq v2, v0, :cond_6

    :cond_3
    iput v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    iput v2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselHeight:I

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iget v3, v0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->carouselHeight:I

    if-ne v2, v3, :cond_4

    if-eq v1, v3, :cond_5

    :cond_4
    iput v1, v0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->carouselWidth:I

    iput v2, v0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->carouselHeight:I

    iget-object v0, v0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->invalidateOutline()V

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorLocation()V

    :cond_6
    return-void
.end method

.method public static final access$updatePlayers(Lcom/android/systemui/media/MediaCarouselController;Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    const v2, 0x7f0602e1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/PageIndicator;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iput-object v1, v0, Lcom/android/systemui/qs/PageIndicator;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/systemui/qs/PageIndicator;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v4, Lkotlin/Triple;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    iget-object v6, v6, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/MediaData;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    iget-boolean v2, v2, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v4, v5, v6, v2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Triple;

    invoke-virtual {v1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/MediaData;

    invoke-virtual {v1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/media/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/systemui/media/MediaCarouselController;->removePlayer(Ljava/lang/String;ZZ)V

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v2, v1, Lcom/android/systemui/media/SmartspaceMediaData;->targetId:Ljava/lang/String;

    sget-boolean v4, Lcom/android/systemui/media/MediaPlayerData;->shouldPrioritizeSs:Z

    invoke-virtual {p0, v2, v1, v4}, Lcom/android/systemui/media/MediaCarouselController;->addSmartspaceMediaRecommendations(Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Z)V

    goto :goto_3

    :cond_5
    sget-object v1, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    if-nez v1, :cond_6

    move v1, v3

    goto :goto_4

    :cond_6
    iget-boolean v1, v1, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->isSsReactivated:Z

    :goto_4
    if-eqz p1, :cond_7

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/systemui/media/MediaCarouselController;->removePlayer(Ljava/lang/String;ZZ)V

    :cond_7
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5, v4, v1}, Lcom/android/systemui/media/MediaCarouselController;->addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;Z)Z

    goto :goto_3

    :cond_8
    return-void
.end method

.method public static closeGuts(Z)V
    .locals 2

    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaControlPanel;

    invoke-virtual {v1, p0}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic getSettingsButton$annotations()V
    .locals 0

    return-void
.end method

.method public static logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;III[IIIIIZI)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p10

    and-int/lit8 v3, v2, 0x10

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move/from16 v3, p5

    :goto_0
    and-int/lit8 v5, v2, 0x20

    if-eqz v5, :cond_1

    move v15, v4

    goto :goto_1

    :cond_1
    move/from16 v15, p6

    :goto_1
    and-int/lit8 v5, v2, 0x40

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iget v5, v5, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    move v14, v5

    goto :goto_2

    :cond_2
    move/from16 v14, p7

    :goto_2
    and-int/lit16 v5, v2, 0x80

    if-eqz v5, :cond_3

    move v13, v4

    goto :goto_3

    :cond_3
    move/from16 v13, p8

    :goto_3
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_4

    :cond_4
    move/from16 v2, p9

    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    if-gt v5, v14, :cond_5

    goto/16 :goto_a

    :cond_5
    sget-object v5, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5, v14}, Lkotlin/collections/CollectionsKt___CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    iget-boolean v5, v12, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    if-nez v5, :cond_6

    iget-object v5, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/MediaDataManager;

    iget-object v5, v5, Lcom/android/systemui/media/MediaDataManager;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    iget-boolean v5, v5, Lcom/android/systemui/media/SmartspaceMediaData;->isActive:Z

    if-nez v5, :cond_6

    sget-object v5, Lcom/android/systemui/media/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    if-nez v5, :cond_6

    goto/16 :goto_a

    :cond_6
    iget-object v0, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    array-length v11, v1

    :goto_5
    if-ge v4, v11, :cond_b

    aget v10, v1, v4

    add-int/lit8 v4, v4, 0x1

    if-eqz v2, :cond_7

    const/4 v5, -0x1

    move v8, v5

    goto :goto_6

    :cond_7
    move v8, v14

    :goto_6
    iget-boolean v5, v12, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    if-eqz v5, :cond_8

    const/16 v5, 0xf

    :goto_7
    move/from16 v16, v5

    goto :goto_8

    :cond_8
    iget-boolean v5, v12, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->isSsReactivated:Z

    if-eqz v5, :cond_9

    const/16 v5, 0x2b

    goto :goto_7

    :cond_9
    const/16 v5, 0x1f

    goto :goto_7

    :goto_8
    const/16 v17, 0x0

    move/from16 v5, p1

    move/from16 v6, p2

    move v7, v10

    move v9, v0

    move v1, v10

    move/from16 v10, v16

    move/from16 v16, v11

    move/from16 v11, p3

    move/from16 p5, v2

    move-object v2, v12

    move v12, v3

    move/from16 p0, v13

    move v13, v15

    move/from16 p6, v4

    move v4, v14

    move/from16 v14, p0

    move/from16 v18, v15

    move-object/from16 v15, v17

    invoke-static/range {v5 .. v15}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIIIIIIIII[B)V

    sget-boolean v5, Lcom/android/systemui/media/MediaCarouselControllerKt;->DEBUG:Z

    if-eqz v5, :cond_a

    const-string v5, "Log Smartspace card event id: "

    const-string v6, " instance id: "

    const-string v7, " surface: "

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-static {v5, v8, v6, v9, v7}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline1;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rank: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cardinality: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isRecommendationCard: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isSsReactivated: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->isSsReactivated:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uid: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p3

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " interactedSubcardRank: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " interactedSubcardCardinality: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v18

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " received_latency_millis: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "MediaCarouselController"

    move/from16 v10, p0

    invoke-static {v5, v10, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_9

    :cond_a
    move/from16 v10, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v1, p3

    move/from16 v6, v18

    :goto_9
    move-object/from16 v1, p4

    move-object v12, v2

    move v14, v4

    move v15, v6

    move v13, v10

    move/from16 v11, v16

    move/from16 v2, p5

    move/from16 v4, p6

    goto/16 :goto_5

    :cond_b
    :goto_a
    return-void
.end method


# virtual methods
.method public final addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;Z)Z
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const-string v4, "MediaCarouselController#addOrUpdatePlayer"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    sget-object v4, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/LinkedHashMap;

    invoke-interface {v4, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/media/MediaPlayerData;->removeMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object v7

    sget-object v2, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v4, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iget v4, v4, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->elementAtOrNull(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v7, :cond_5

    iget-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaControlPanelFactory:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/systemui/media/MediaControlPanel;

    sget-object v2, Lcom/android/systemui/media/MediaViewHolder;->controlsIds:Ljava/util/Set;

    iget-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v4, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    const v5, 0x7f0e013f

    invoke-virtual {v2, v5, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutDirection(I)V

    new-instance v4, Lcom/android/systemui/media/MediaViewHolder;

    invoke-direct {v4, v2}, Lcom/android/systemui/media/MediaViewHolder;-><init>(Landroid/view/View;)V

    iget-object v2, v4, Lcom/android/systemui/media/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v9}, Landroid/widget/SeekBar;->setLayoutDirection(I)V

    invoke-virtual {v11, v4}, Lcom/android/systemui/media/MediaControlPanel;->attachPlayer(Lcom/android/systemui/media/MediaViewHolder;)V

    iget-object v2, v11, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    new-instance v4, Lcom/android/systemui/media/MediaCarouselController$addOrUpdatePlayer$1$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/media/MediaCarouselController$addOrUpdatePlayer$1$1;-><init>(Ljava/lang/Object;)V

    iput-object v4, v2, Lcom/android/systemui/media/MediaViewController;->sizeChangedListener:Lkotlin/jvm/functions/Function0;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, v11, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, v4, Lcom/android/systemui/media/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    invoke-virtual {v11, p3, p1}, Lcom/android/systemui/media/MediaControlPanel;->bindPlayer(Lcom/android/systemui/media/MediaData;Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    iget-object v4, v11, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    iget-object v5, v4, Lcom/android/systemui/media/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v6, Lcom/android/systemui/media/SeekBarViewModel$listening$1;

    invoke-direct {v6, v4, v2}, Lcom/android/systemui/media/SeekBarViewModel$listening$1;-><init>(Lcom/android/systemui/media/SeekBarViewModel;Z)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v4, v0, Lcom/android/systemui/media/MediaCarouselController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iget-object v6, v0, Lcom/android/systemui/media/MediaCarouselController;->debugLogger:Lcom/android/systemui/media/MediaCarouselControllerLogger;

    move-object v1, p1

    move-object v2, p3

    move-object v3, v11

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/media/MediaPlayerData;->addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/MediaData;Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/util/time/SystemClock;ZLcom/android/systemui/media/MediaCarouselControllerLogger;)V

    iget-object v1, v11, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    iget v2, v0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    iget v3, v0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    iget v4, v0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    invoke-virtual {v1, v2, v3, v4, v10}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V

    invoke-virtual {p0, v8}, Lcom/android/systemui/media/MediaCarouselController;->reorderAllPlayers(Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v7, p3, p1}, Lcom/android/systemui/media/MediaControlPanel;->bindPlayer(Lcom/android/systemui/media/MediaData;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/systemui/media/MediaCarouselController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iget-object v6, v0, Lcom/android/systemui/media/MediaCarouselController;->debugLogger:Lcom/android/systemui/media/MediaCarouselControllerLogger;

    move-object v1, p1

    move-object v2, p3

    move-object v3, v7

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/media/MediaPlayerData;->addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/MediaData;Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/util/time/SystemClock;ZLcom/android/systemui/media/MediaCarouselControllerLogger;)V

    iget-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;->isReorderingAllowed:Z

    if-nez v1, :cond_7

    iget-boolean v1, v0, Lcom/android/systemui/media/MediaCarouselController;->shouldScrollToActivePlayer:Z

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    iput-boolean v10, v0, Lcom/android/systemui/media/MediaCarouselController;->needsReordering:Z

    goto :goto_3

    :cond_7
    :goto_2
    invoke-virtual {p0, v8}, Lcom/android/systemui/media/MediaCarouselController;->reorderAllPlayers(Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicator()V

    iget-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onPlayersChanged()V

    iget-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v3, 0x7f0b0552

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v0, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eq v1, v0, :cond_8

    const-string v0, "MediaCarouselController"

    const-string v1, "Size of players list and number of views in carousel are out of sync"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    if-nez v7, :cond_9

    move v9, v10

    :cond_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v9

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method public final addSmartspaceMediaRecommendations(Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Z)V
    .locals 9

    const-string v0, "MediaCarouselController#addSmartspaceMediaRecommendations"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    sget-boolean v0, Lcom/android/systemui/media/MediaCarouselControllerKt;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "MediaCarouselController"

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "Updating smartspace target in carousel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string p0, "Skip adding smartspace target in carousel"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/android/systemui/media/MediaPlayerData;->smartspaceMediaKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/android/systemui/media/MediaPlayerData;->removeMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->debugLogger:Lcom/android/systemui/media/MediaCarouselControllerLogger;

    invoke-virtual {v2, v0}, Lcom/android/systemui/media/MediaCarouselControllerLogger;->logPotentialMemoryLeak(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaControlPanelFactory:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaControlPanel;

    sget-object v2, Lcom/android/systemui/media/RecommendationViewHolder;->controlsIds:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    const v4, 0x7f0e0141

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutDirection(I)V

    new-instance v3, Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-direct {v3, v2}, Lcom/android/systemui/media/RecommendationViewHolder;-><init>(Landroid/view/View;)V

    iput-object v3, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    iget-object v2, v3, Lcom/android/systemui/media/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    iget-object v3, v0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    sget-object v4, Lcom/android/systemui/media/MediaViewController$TYPE;->RECOMMENDATION:Lcom/android/systemui/media/MediaViewController$TYPE;

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/media/MediaViewController;->attach(Lcom/android/systemui/util/animation/TransitionLayout;Lcom/android/systemui/media/MediaViewController$TYPE;)V

    iget-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    iget-object v2, v2, Lcom/android/systemui/media/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    new-instance v3, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    new-instance v3, Lcom/android/systemui/media/MediaCarouselController$addSmartspaceMediaRecommendations$1$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/MediaCarouselController$addSmartspaceMediaRecommendations$1$2;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/android/systemui/media/MediaViewController;->sizeChangedListener:Lkotlin/jvm/functions/Function0;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v3, v3, Lcom/android/systemui/media/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    invoke-virtual {v0, p2}, Lcom/android/systemui/media/MediaControlPanel;->bindRecommendation(Lcom/android/systemui/media/SmartspaceMediaData;)V

    sget-object v2, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iget v3, v3, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->elementAtOrNull(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    iget-object v6, p0, Lcom/android/systemui/media/MediaCarouselController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iget-object v7, p0, Lcom/android/systemui/media/MediaCarouselController;->debugLogger:Lcom/android/systemui/media/MediaCarouselControllerLogger;

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move v5, p3

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/media/MediaPlayerData;->addMediaRecommendation(Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Lcom/android/systemui/media/MediaControlPanel;ZLcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/media/MediaCarouselControllerLogger;)V

    const/4 p1, 0x1

    iget-object p2, v0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    iget p3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    iget v2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    invoke-virtual {p2, p3, v0, v2, p1}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V

    invoke-virtual {p0, v8}, Lcom/android/systemui/media/MediaCarouselController;->reorderAllPlayers(Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicator()V

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const p3, 0x7f0b0552

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-eq p1, p0, :cond_6

    const-string p0, "Size of players list and number of views in carousel are out of sync"

    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselController;->keysNeedRemoval:Ljava/util/LinkedHashSet;

    const-string v0, "keysNeedRemoval: "

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p2, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/systemui/media/MediaPlayerData;->mediaData:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    const-string v0, "dataKeys: "

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p2, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p2

    const-string/jumbo v0, "playerSortKeys: "

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p2, Lcom/android/systemui/media/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    const-string/jumbo v0, "smartspaceMediaData: "

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean p2, Lcom/android/systemui/media/MediaPlayerData;->shouldPrioritizeSs:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string/jumbo v0, "shouldPrioritizeSs: "

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "current size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselHeight:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredLocation:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "location: "

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", only active "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lcom/android/systemui/media/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final inflateSettingsButton()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    const v2, 0x7f0e0139

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->settingsButton:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->settingsButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iput-object v0, v1, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, v1, Lcom/android/systemui/media/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-nez v3, :cond_2

    move-object v3, v2

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1010571

    invoke-static {v3, v4}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Lcom/android/systemui/media/MediaCarouselScrollHandler;->cornerRadius:I

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->updateSettingsPresentation()V

    iget-object v0, v1, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->invalidateOutline()V

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->settingsButton:Landroid/view/View;

    if-eqz v0, :cond_3

    move-object v2, v0

    :cond_3
    new-instance v0, Lcom/android/systemui/media/MediaCarouselController$inflateSettingsButton$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaCarouselController$inflateSettingsButton$2;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final logSmartspaceImpression(Z)V
    .locals 14

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iget v1, v1, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    sget-object v2, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-le v2, v1, :cond_3

    invoke-static {}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/systemui/media/MediaControlPanel;

    sget-object v1, Lcom/android/systemui/media/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    const/4 v2, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/android/systemui/media/SmartspaceMediaData;->isActive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/media/MediaPlayerData;->firstActiveMediaIndex()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    :goto_0
    move v1, v12

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/16 v1, 0x320

    iget v3, v11, Lcom/android/systemui/media/MediaControlPanel;->mSmartspaceId:I

    iget v4, v11, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    new-array v5, v12, [I

    invoke-virtual {v11}, Lcom/android/systemui/media/MediaControlPanel;->getSurfaceForSmartspaceLogging()I

    move-result v6

    aput v6, v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v13, 0x1f0

    move-object v0, p0

    move v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v13

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;III[IIIIIZI)V

    iput-boolean v12, v11, Lcom/android/systemui/media/MediaControlPanel;->mIsImpressed:Z

    :cond_3
    return-void
.end method

.method public final onDesiredLocationChanged(ILcom/android/systemui/media/MediaHostState;ZJJ)Lkotlin/Unit;
    .locals 8

    const-string v0, "MediaCarouselController#onDesiredLocationChanged"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto/16 :goto_8

    :cond_0
    :try_start_0
    iget v1, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredLocation:I

    const/4 v2, 0x1

    if-eq v1, p1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->logger:Lcom/android/systemui/media/MediaUiEventLogger;

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    sget-object v3, Lcom/android/systemui/media/MediaUiEvent;->MEDIA_CAROUSEL_LOCATION_DREAM:Lcom/android/systemui/media/MediaUiEvent;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Unknown media carousel location "

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-object v3, Lcom/android/systemui/media/MediaUiEvent;->MEDIA_CAROUSEL_LOCATION_LOCKSCREEN:Lcom/android/systemui/media/MediaUiEvent;

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/systemui/media/MediaUiEvent;->MEDIA_CAROUSEL_LOCATION_QQS:Lcom/android/systemui/media/MediaUiEvent;

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/android/systemui/media/MediaUiEvent;->MEDIA_CAROUSEL_LOCATION_QS:Lcom/android/systemui/media/MediaUiEvent;

    :goto_0
    iget-object v1, v1, Lcom/android/systemui/media/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {v1, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_5
    iput p1, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredLocation:I

    iput-object p2, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    const/4 v3, 0x0

    if-lez v1, :cond_6

    move v1, v2

    goto :goto_1

    :cond_6
    move v1, v3

    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    if-eq v4, v1, :cond_7

    iput-boolean v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    sget-object v1, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/MediaControlPanel;

    iget-boolean v5, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    iget-object v4, v4, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    iget-object v6, v4, Lcom/android/systemui/media/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v7, Lcom/android/systemui/media/SeekBarViewModel$listening$1;

    invoke-direct {v7, v4, v5}, Lcom/android/systemui/media/SeekBarViewModel$listening$1;-><init>(Lcom/android/systemui/media/SeekBarViewModel;Z)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaDataManager;->hasActiveMediaOrRecommendation()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    goto :goto_3

    :cond_8
    move v1, v3

    :goto_3
    sget-object v4, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/media/MediaControlPanel;

    if-eqz p3, :cond_9

    iget-object v6, v5, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    iput-boolean v2, v6, Lcom/android/systemui/media/MediaViewController;->animateNextStateChange:Z

    iput-wide p4, v6, Lcom/android/systemui/media/MediaViewController;->animationDuration:J

    iput-wide p6, v6, Lcom/android/systemui/media/MediaViewController;->animationDelay:J

    :cond_9
    if-eqz v1, :cond_b

    iget-object v6, v5, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    iget-boolean v6, v6, Lcom/android/systemui/media/MediaViewController;->isGutsVisible:Z

    if-eqz v6, :cond_b

    if-nez p3, :cond_a

    move v6, v2

    goto :goto_5

    :cond_a
    move v6, v3

    :goto_5
    invoke-virtual {v5, v6}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts(Z)V

    :cond_b
    iget-object v5, v5, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    iget-object v6, v5, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    iget-object v6, v6, Lcom/android/systemui/media/MediaHostStatesManager;->mediaHostStates:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/MediaHostState;

    if-nez v6, :cond_c

    move-object v6, v0

    goto :goto_6

    :cond_c
    invoke-virtual {v5, v6}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v6

    :goto_6
    if-nez v6, :cond_d

    goto :goto_4

    :cond_d
    iget-object v5, v5, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-virtual {v5, v6}, Lcom/android/systemui/util/animation/TransitionLayoutController;->setMeasureState(Lcom/android/systemui/util/animation/TransitionViewState;)V

    goto :goto_4

    :cond_e
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result p3

    if-nez p3, :cond_f

    goto :goto_7

    :cond_f
    move v2, v3

    :goto_7
    iput-boolean v2, p1, Lcom/android/systemui/media/MediaCarouselScrollHandler;->showsSettingsButton:Z

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getFalsingProtectionNeeded()Z

    move-result p3

    iput-boolean p3, p1, Lcom/android/systemui/media/MediaCarouselScrollHandler;->falsingProtectionNeeded:Z

    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result p1

    iget-boolean p2, p0, Lcom/android/systemui/media/MediaCarouselController;->playersVisible:Z

    if-eq p1, p2, :cond_10

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->playersVisible:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p1, v3}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->resetTranslation(Z)V

    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->updateCarouselSize()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final removePlayer(Ljava/lang/String;ZZ)V
    .locals 7

    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/media/MediaPlayerData;->smartspaceMediaKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->logger:Lcom/android/systemui/media/MediaUiEventLogger;

    iget-object v3, v0, Lcom/android/systemui/media/SmartspaceMediaData;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/media/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v2, v2, Lcom/android/systemui/media/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v4, Lcom/android/systemui/media/MediaUiEvent;->MEDIA_RECOMMENDATION_REMOVED:Lcom/android/systemui/media/MediaUiEvent;

    invoke-interface {v2, v4, v1, v3, v0}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/media/MediaPlayerData;->removeMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iget-object v3, v2, Lcom/android/systemui/media/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    const/4 v5, 0x0

    if-nez v4, :cond_3

    move-object v4, v5

    goto :goto_1

    :cond_3
    iget-object v4, v4, Lcom/android/systemui/media/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iget v4, v2, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    const/4 v6, 0x1

    if-gt v3, v4, :cond_4

    move v3, v6

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    if-eqz v3, :cond_5

    sub-int/2addr v4, v6

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v2, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    :cond_5
    iget-object v4, v2, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    move v6, v1

    goto :goto_3

    :cond_7
    move v6, v3

    :goto_3
    if-eqz v6, :cond_8

    iget-object v3, v2, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v4

    iget v2, v2, Lcom/android/systemui/media/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    sub-int/2addr v4, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    if-nez v2, :cond_9

    move-object v2, v5

    goto :goto_4

    :cond_9
    iget-object v2, v2, Lcom/android/systemui/media/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    if-nez v2, :cond_a

    move-object v2, v5

    goto :goto_5

    :cond_a
    iget-object v2, v2, Lcom/android/systemui/media/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

    if-eqz v1, :cond_b

    iget-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    iget-object v2, v2, Lcom/android/systemui/media/SeekBarViewModel;->_progress:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_b
    iget-object v1, v0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    iget-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mScrubbingChangeListener:Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;

    iget-object v3, v1, Lcom/android/systemui/media/SeekBarViewModel;->scrubbingChangeListener:Lcom/android/systemui/media/SeekBarViewModel$ScrubbingChangeListener;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iput-object v5, v1, Lcom/android/systemui/media/SeekBarViewModel;->scrubbingChangeListener:Lcom/android/systemui/media/SeekBarViewModel$ScrubbingChangeListener;

    :cond_c
    iget-object v1, v0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    iget-object v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mEnabledChangeListener:Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda5;

    iget-object v3, v1, Lcom/android/systemui/media/SeekBarViewModel;->enabledChangeListener:Lcom/android/systemui/media/SeekBarViewModel$EnabledChangeListener;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iput-object v5, v1, Lcom/android/systemui/media/SeekBarViewModel;->enabledChangeListener:Lcom/android/systemui/media/SeekBarViewModel$EnabledChangeListener;

    :cond_d
    iget-object v1, v0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    iget-object v2, v1, Lcom/android/systemui/media/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    new-instance v3, Lcom/android/systemui/media/SeekBarViewModel$onDestroy$1;

    invoke-direct {v3, v1}, Lcom/android/systemui/media/SeekBarViewModel$onDestroy$1;-><init>(Lcom/android/systemui/media/SeekBarViewModel;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    iget-object v1, v0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    iget-object v1, v1, Lcom/android/systemui/media/MediaHostStatesManager;->controllers:Ljava/util/LinkedHashSet;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/systemui/media/MediaViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, v0, Lcom/android/systemui/media/MediaViewController;->configurationListener:Lcom/android/systemui/media/MediaViewController$configurationListener$1;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onPlayersChanged()V

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicator()V

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/systemui/media/MediaDataManager;->dismissMediaData(JLjava/lang/String;)Z

    :cond_e
    if-eqz p3, :cond_f

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/media/MediaDataManager;->dismissSmartspaceRecommendation(JLjava/lang/String;)V

    :cond_f
    :goto_6
    return-void
.end method

.method public final reorderAllPlayers(Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaControlPanel;

    iget-object v3, v1, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    iget-object v3, v3, Lcom/android/systemui/media/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    iget-object v1, v1, Lcom/android/systemui/media/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onPlayersChanged()V

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselController;->shouldScrollToActivePlayer:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselController;->shouldScrollToActivePlayer:Z

    sget-object v1, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/media/MediaPlayerData;->firstActiveMediaIndex()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    sget-object v4, Lcom/android/systemui/media/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-ltz v0, :cond_6

    check-cast v5, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v2

    :cond_7
    move v0, v3

    :goto_3
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollToPlayer(II)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_4
    if-nez v2, :cond_8

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollToPlayer(II)V

    :cond_8
    return-void
.end method

.method public final setCurrentState(IIFZ)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    cmpg-float v0, p3, v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p4, :cond_9

    :cond_1
    iput p1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    iput p2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    iput p3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    sget-object p1, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/MediaControlPanel;

    iget-object p2, p2, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    iget p3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    iget v3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    invoke-virtual {p2, p3, v0, v3, p4}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    iget-object p1, p1, Lcom/android/systemui/media/MediaHostStatesManager;->mediaHostStates:Ljava/util/LinkedHashMap;

    iget p2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/MediaHostState;

    if-nez p2, :cond_3

    move p2, v2

    goto :goto_2

    :cond_3
    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result p2

    :goto_2
    iget p3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/MediaHostState;

    if-nez p1, :cond_4

    move p1, p2

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result p1

    :goto_3
    iget-boolean p3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyShowingOnlyActive:Z

    if-ne p3, p2, :cond_7

    iget p3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    const/high16 p4, 0x3f800000    # 1.0f

    cmpg-float p4, p3, p4

    if-nez p4, :cond_5

    move p4, v2

    goto :goto_4

    :cond_5
    move p4, v1

    :goto_4
    if-nez p4, :cond_8

    const/4 p4, 0x0

    cmpg-float p3, p3, p4

    if-nez p3, :cond_6

    move v1, v2

    :cond_6
    if-nez v1, :cond_8

    if-eq p1, p2, :cond_8

    :cond_7
    iput-boolean p2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyShowingOnlyActive:Z

    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p1, v2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->resetTranslation(Z)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorAlpha()V

    :cond_9
    return-void
.end method

.method public final updateCarouselSize()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    iget v0, v0, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_2
    move v2, v1

    goto :goto_3

    :cond_3
    iget v2, v2, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    :goto_3
    iget v3, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureWidth:I

    if-eq v0, v3, :cond_4

    if-nez v0, :cond_5

    :cond_4
    iget v3, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureHeight:I

    if-eq v2, v3, :cond_d

    if-eqz v2, :cond_d

    :cond_5
    iput v0, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureWidth:I

    iput v2, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureHeight:I

    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {v3}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v3

    if-nez v3, :cond_7

    :goto_4
    move v3, v1

    goto :goto_5

    :cond_7
    iget v3, v3, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    :goto_5
    iget-object v4, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {v4}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v4

    if-nez v4, :cond_9

    :goto_6
    move v4, v1

    goto :goto_7

    :cond_9
    iget v4, v4, Lcom/android/systemui/util/animation/MeasurementInput;->heightMeasureSpec:I

    :goto_7
    iget-object v5, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v5, v3, v4}, Landroid/widget/HorizontalScrollView;->measure(II)V

    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v1, v1, v0, v4}, Landroid/widget/HorizontalScrollView;->layout(IIII)V

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iput v2, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    if-le v1, v2, :cond_a

    sub-int/2addr v1, v2

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    goto :goto_8

    :cond_a
    add-int v2, v0, v1

    :goto_8
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/media/MediaScrollView;->contentContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    goto :goto_9

    :cond_b
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int v2, v0, v2

    :cond_c
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    :cond_d
    return-void
.end method

.method public final updatePageIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorAlpha()V

    return-void
.end method

.method public final updatePageIndicatorAlpha()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    iget-object v0, v0, Lcom/android/systemui/media/MediaHostStatesManager;->mediaHostStates:Ljava/util/LinkedHashMap;

    iget v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaHostState;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result v1

    :goto_0
    iget v3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaHostState;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result v2

    :goto_1
    const/4 v0, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    if-eqz v1, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v0

    :goto_3
    if-eqz v1, :cond_4

    if-nez v2, :cond_6

    :cond_4
    iget v2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    if-nez v1, :cond_5

    sub-float v2, v3, v2

    :cond_5
    const v1, 0x3f733333    # 0.95f

    invoke-static {v1, v3, v0, v3, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v1

    invoke-static {v1, v0, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    invoke-static {v4, v5, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public final updatePageIndicatorLocation()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselController;->isRtl:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    :goto_0
    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iget v2, v2, Lcom/android/systemui/media/MediaCarouselScrollHandler;->contentTranslation:F

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget p0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselHeight:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr p0, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p0, v0

    int-to-float p0, p0

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
