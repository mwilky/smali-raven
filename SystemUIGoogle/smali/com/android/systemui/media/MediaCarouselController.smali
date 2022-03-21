.class public final Lcom/android/systemui/media/MediaCarouselController;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaCarouselController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaCarouselController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,991:1\n304#2,8:992\n1819#2,2:1000\n1819#2,2:1002\n1828#2,3:1006\n13527#3,2:1004\n*E\n*S KotlinDebug\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaCarouselController\n*L\n400#1,8:992\n517#1,2:1000\n714#1,2:1002\n836#1,3:1006\n803#1,2:1004\n*E\n"
.end annotation


# instance fields
.field private final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private bgColor:I

.field private carouselMeasureHeight:I

.field private carouselMeasureWidth:I

.field private final configListener:Lcom/android/systemui/media/MediaCarouselController$configListener$1;

.field private final context:Landroid/content/Context;

.field private currentCarouselHeight:I

.field private currentCarouselWidth:I

.field private currentEndLocation:I

.field private currentStartLocation:I

.field private currentTransitionProgress:F

.field private currentlyExpanded:Z

.field private currentlyShowingOnlyActive:Z

.field private desiredHostState:Lcom/android/systemui/media/MediaHostState;

.field private desiredLocation:I

.field private isRtl:Z

.field private keysNeedRemoval:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

.field private final mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

.field private final mediaContent:Landroid/view/ViewGroup;

.field private final mediaControlPanelFactory:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaControlPanel;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaFrame:Landroid/view/ViewGroup;

.field private final mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

.field private final mediaManager:Lcom/android/systemui/media/MediaDataManager;

.field private needsReordering:Z

.field private final pageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private playersVisible:Z

.field private settingsButton:Landroid/view/View;

.field private shouldScrollToActivePlayer:Z

.field private final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public updateUserVisibility:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final visualStabilityCallback:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$Callback;

.field private final visualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;Lcom/android/systemui/media/MediaHostStatesManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/dump/DumpManager;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaControlPanel;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;",
            "Lcom/android/systemui/media/MediaHostStatesManager;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/media/MediaDataManager;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/dump/DumpManager;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p12

    const-string v10, "context"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "mediaControlPanelFactory"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v10, "visualStabilityManager"

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "mediaHostStatesManager"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "activityStarter"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "systemClock"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "executor"

    move-object/from16 v14, p7

    invoke-static {v14, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "mediaManager"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "configurationController"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "falsingCollector"

    move-object/from16 v15, p10

    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "falsingManager"

    move-object/from16 v13, p11

    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "dumpManager"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    iput-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaControlPanelFactory:Ljavax/inject/Provider;

    iput-object v3, v0, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    iput-object v4, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    iput-object v5, v0, Lcom/android/systemui/media/MediaCarouselController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v6, v0, Lcom/android/systemui/media/MediaCarouselController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object v7, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/MediaDataManager;

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/systemui/media/MediaCarouselController;->desiredLocation:I

    iput v2, v0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    iput v2, v0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->keysNeedRemoval:Ljava/util/Set;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaCarouselController;->getBackgroundColor()I

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/MediaCarouselController;->bgColor:I

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    new-instance v5, Lcom/android/systemui/media/MediaCarouselController$configListener$1;

    invoke-direct {v5, v0}, Lcom/android/systemui/media/MediaCarouselController$configListener$1;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    iput-object v5, v0, Lcom/android/systemui/media/MediaCarouselController;->configListener:Lcom/android/systemui/media/MediaCarouselController$configListener$1;

    const-string v6, "MediaCarouselController"

    invoke-virtual {v9, v6, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaCarouselController;->inflateMediaCarousel()Landroid/view/ViewGroup;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    sget v9, Lcom/android/systemui/R$id;->media_carousel_scroller:I

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    const-string v10, "mediaFrame.requireViewById(R.id.media_carousel_scroller)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lcom/android/systemui/media/MediaScrollView;

    iput-object v9, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    sget v10, Lcom/android/systemui/R$id;->media_page_indicator:I

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v10

    const-string v11, "mediaFrame.requireViewById(R.id.media_page_indicator)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lcom/android/systemui/qs/PageIndicator;

    iput-object v10, v0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    new-instance v12, Lcom/android/systemui/media/MediaCarouselScrollHandler;

    new-instance v11, Lcom/android/systemui/media/MediaCarouselController$1;

    invoke-direct {v11, v0}, Lcom/android/systemui/media/MediaCarouselController$1;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    new-instance v2, Lcom/android/systemui/media/MediaCarouselController$2;

    invoke-direct {v2, v0}, Lcom/android/systemui/media/MediaCarouselController$2;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$3;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaCarouselController$3;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    new-instance v4, Lcom/android/systemui/media/MediaCarouselController$4;

    invoke-direct {v4, v0}, Lcom/android/systemui/media/MediaCarouselController$4;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    move-object/from16 v16, v11

    move-object v11, v12

    move-object/from16 p5, v6

    move-object v6, v12

    move-object v12, v9

    move-object v13, v10

    move-object/from16 v15, v16

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v18, p10

    move-object/from16 v19, p11

    move-object/from16 v20, v4

    invoke-direct/range {v11 .. v20}, Lcom/android/systemui/media/MediaCarouselScrollHandler;-><init>(Lcom/android/systemui/media/MediaScrollView;Lcom/android/systemui/qs/PageIndicator;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lkotlin/jvm/functions/Function1;)V

    iput-object v6, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v2}, Lcom/android/systemui/media/MediaCarouselController;->setRtl(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaCarouselController;->inflateSettingsButton()V

    sget v1, Lcom/android/systemui/R$id;->media_carousel:I

    invoke-virtual {v9, v1}, Landroid/widget/HorizontalScrollView;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "mediaCarousel.requireViewById(R.id.media_carousel)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-interface {v8, v5}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$5;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaCarouselController$5;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    iput-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityCallback:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$Callback;

    const/4 v2, 0x1

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$Callback;Z)V

    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$6;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaCarouselController$6;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-virtual {v7, v1}, Lcom/android/systemui/media/MediaDataManager;->addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)V

    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$7;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaCarouselController$7;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$8;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaCarouselController$8;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHostStatesManager;->addCallback(Lcom/android/systemui/media/MediaHostStatesManager$Callback;)V

    return-void
.end method

.method public static final synthetic access$addOrUpdatePlayer(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/MediaCarouselController;->addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$addSmartspaceMediaRecommendations(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/MediaCarouselController;->addSmartspaceMediaRecommendations(Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Z)V

    return-void
.end method

.method public static final synthetic access$getActivityStarter$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/media/MediaCarouselController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getDesiredLocation$p(Lcom/android/systemui/media/MediaCarouselController;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredLocation:I

    return p0
.end method

.method public static final synthetic access$getKeysNeedRemoval$p(Lcom/android/systemui/media/MediaCarouselController;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->keysNeedRemoval:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getNeedsReordering$p(Lcom/android/systemui/media/MediaCarouselController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaCarouselController;->needsReordering:Z

    return p0
.end method

.method public static final synthetic access$getSystemClock$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/util/time/SystemClock;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    return-object p0
.end method

.method public static final synthetic access$getVisualStabilityManager$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    return-object p0
.end method

.method public static final synthetic access$inflateSettingsButton(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->inflateSettingsButton()V

    return-void
.end method

.method public static final synthetic access$onSwipeToDismiss(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->onSwipeToDismiss()V

    return-void
.end method

.method public static final synthetic access$recreatePlayers(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->recreatePlayers()V

    return-void
.end method

.method public static final synthetic access$reorderAllPlayers(Lcom/android/systemui/media/MediaCarouselController;Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaCarouselController;->reorderAllPlayers(Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;)V

    return-void
.end method

.method public static final synthetic access$setNeedsReordering$p(Lcom/android/systemui/media/MediaCarouselController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->needsReordering:Z

    return-void
.end method

.method public static final synthetic access$setRtl(Lcom/android/systemui/media/MediaCarouselController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaCarouselController;->setRtl(Z)V

    return-void
.end method

.method public static final synthetic access$updateCarouselDimensions(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updateCarouselDimensions()V

    return-void
.end method

.method public static final synthetic access$updatePageIndicatorLocation(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorLocation()V

    return-void
.end method

.method private final addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)Z
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget v5, v0, Lcom/android/systemui/media/MediaCarouselController;->bgColor:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const v27, 0x7ffffb

    const/16 v28, 0x0

    invoke-static/range {v2 .. v28}, Lcom/android/systemui/media/MediaData;->copy$default(Lcom/android/systemui/media/MediaData;IZILjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/MediaDeviceData;ZLjava/lang/Runnable;IZLjava/lang/String;ZLjava/lang/Boolean;ZJILjava/lang/Object;)Lcom/android/systemui/media/MediaData;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/media/MediaPlayerData;->moveIfExists(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaPlayerData;->playerKeys()Ljava/util/Set;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v6}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getVisibleMediaIndex()I

    move-result v6

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->elementAtOrNull(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    const/4 v6, 0x1

    if-nez v4, :cond_2

    iget-object v7, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaControlPanelFactory:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/media/MediaControlPanel;

    sget-object v8, Lcom/android/systemui/media/PlayerViewHolder;->Companion:Lcom/android/systemui/media/PlayerViewHolder$Companion;

    iget-object v9, v0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const-string v10, "from(context)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v8, v9, v10}, Lcom/android/systemui/media/PlayerViewHolder$Companion;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/media/MediaControlPanel;->attachPlayer(Lcom/android/systemui/media/PlayerViewHolder;)V

    invoke-virtual {v7}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/media/MediaCarouselController$addOrUpdatePlayer$1;

    invoke-direct {v9, v0}, Lcom/android/systemui/media/MediaCarouselController$addOrUpdatePlayer$1;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-virtual {v8, v9}, Lcom/android/systemui/media/MediaViewController;->setSizeChangedListener(Lkotlin/jvm/functions/Function0;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7}, Lcom/android/systemui/media/MediaControlPanel;->getPlayerViewHolder()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object v9

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v9}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-virtual {v7, v2, v1}, Lcom/android/systemui/media/MediaControlPanel;->bindPlayer(Lcom/android/systemui/media/MediaData;Ljava/lang/String;)V

    iget-boolean v8, v0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    invoke-virtual {v7, v8}, Lcom/android/systemui/media/MediaControlPanel;->setListening(Z)V

    const-string v8, "newPlayer"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/systemui/media/MediaCarouselController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-virtual {v3, v1, v2, v7, v9}, Lcom/android/systemui/media/MediaPlayerData;->addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/MediaData;Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/util/time/SystemClock;)V

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v7, v6}, Lcom/android/systemui/media/MediaCarouselController;->updatePlayerToState(Lcom/android/systemui/media/MediaControlPanel;Z)V

    invoke-direct {v0, v5}, Lcom/android/systemui/media/MediaCarouselController;->reorderAllPlayers(Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v2, v1}, Lcom/android/systemui/media/MediaControlPanel;->bindPlayer(Lcom/android/systemui/media/MediaData;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/systemui/media/MediaCarouselController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-virtual {v3, v1, v2, v4, v7}, Lcom/android/systemui/media/MediaPlayerData;->addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/MediaData;Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/util/time/SystemClock;)V

    iget-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->isReorderingAllowed()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lcom/android/systemui/media/MediaCarouselController;->shouldScrollToActivePlayer:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean v6, v0, Lcom/android/systemui/media/MediaCarouselController;->needsReordering:Z

    goto :goto_2

    :cond_4
    :goto_1
    invoke-direct {v0, v5}, Lcom/android/systemui/media/MediaCarouselController;->reorderAllPlayers(Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;)V

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicator()V

    iget-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onPlayersChanged()V

    iget-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-static {v1, v6}, Lcom/android/systemui/util/animation/UniqueObjectHostViewKt;->setRequiresRemeasuring(Landroid/view/View;Z)V

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v0, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eq v1, v0, :cond_5

    const-string v0, "MediaCarouselController"

    const-string v1, "Size of players list and number of views in carousel are out of sync"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    return v6
.end method

.method private final addSmartspaceMediaRecommendations(Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Z)V
    .locals 23

    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/systemui/media/MediaCarouselControllerKt;->access$getDEBUG$p()Z

    move-result v1

    const-string v2, "MediaCarouselController"

    if-eqz v1, :cond_0

    const-string v1, "Updating smartspace target in carousel"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    move-object/from16 v4, p1

    invoke-virtual {v1, v4}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v0, "Skip adding smartspace target in carousel"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaPlayerData;->smartspaceMediaKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Lcom/android/systemui/media/MediaPlayerData;->removeMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    :goto_0
    iget-object v3, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaControlPanelFactory:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/systemui/media/MediaControlPanel;

    sget-object v3, Lcom/android/systemui/media/RecommendationViewHolder;->Companion:Lcom/android/systemui/media/RecommendationViewHolder$Companion;

    iget-object v5, v0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const-string v6, "from(context)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5, v6}, Lcom/android/systemui/media/RecommendationViewHolder$Companion;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/systemui/media/RecommendationViewHolder;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/android/systemui/media/MediaControlPanel;->attachRecommendation(Lcom/android/systemui/media/RecommendationViewHolder;)V

    invoke-virtual {v9}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v3

    new-instance v5, Lcom/android/systemui/media/MediaCarouselController$addSmartspaceMediaRecommendations$2;

    invoke-direct {v5, v0}, Lcom/android/systemui/media/MediaCarouselController$addSmartspaceMediaRecommendations$2;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-virtual {v3, v5}, Lcom/android/systemui/media/MediaViewController;->setSizeChangedListener(Lkotlin/jvm/functions/Function0;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9}, Lcom/android/systemui/media/MediaControlPanel;->getRecommendationViewHolder()Lcom/android/systemui/media/RecommendationViewHolder;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Lcom/android/systemui/media/RecommendationViewHolder;->getRecommendations()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget v3, v0, Lcom/android/systemui/media/MediaCarouselController;->bgColor:I

    const-wide/16 v19, 0x0

    const/16 v21, 0x17f

    const/16 v22, 0x0

    move-object/from16 v10, p2

    move/from16 v18, v3

    invoke-static/range {v10 .. v22}, Lcom/android/systemui/media/SmartspaceMediaData;->copy$default(Lcom/android/systemui/media/SmartspaceMediaData;Ljava/lang/String;ZZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;Landroid/content/Intent;IJILjava/lang/Object;)Lcom/android/systemui/media/SmartspaceMediaData;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/android/systemui/media/MediaControlPanel;->bindRecommendation(Lcom/android/systemui/media/SmartspaceMediaData;)V

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaPlayerData;->playerKeys()Ljava/util/Set;

    move-result-object v3

    iget-object v5, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v5}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getVisibleMediaIndex()I

    move-result v5

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->elementAtOrNull(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    const-string v11, "newRecs"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/systemui/media/MediaCarouselController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object v3, v1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v9

    move/from16 v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/media/MediaPlayerData;->addMediaRecommendation(Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Lcom/android/systemui/media/MediaControlPanel;ZLcom/android/systemui/util/time/SystemClock;)V

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v0, v9, v3}, Lcom/android/systemui/media/MediaCarouselController;->updatePlayerToState(Lcom/android/systemui/media/MediaControlPanel;Z)V

    invoke-direct {v0, v10}, Lcom/android/systemui/media/MediaCarouselController;->reorderAllPlayers(Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicator()V

    iget-object v4, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-static {v4, v3}, Lcom/android/systemui/util/animation/UniqueObjectHostViewKt;->setRequiresRemeasuring(Landroid/view/View;Z)V

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v0, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eq v1, v0, :cond_5

    const-string v0, "Size of players list and number of views in carousel are out of sync"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public static synthetic closeGuts$default(Lcom/android/systemui/media/MediaCarouselController;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaCarouselController;->closeGuts(Z)V

    return-void
.end method

.method private final getBackgroundColor()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    const v0, 0x1060046

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method private final getForegroundColor()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    const v0, 0x106004f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method private final inflateMediaCarousel()Landroid/view/ViewGroup;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->media_carousel:I

    new-instance v2, Lcom/android/systemui/util/animation/UniqueObjectHostView;

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-direct {v2, p0}, Lcom/android/systemui/util/animation/UniqueObjectHostView;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-object p0
.end method

.method private final inflateSettingsButton()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->media_carousel_settings_button:I

    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->settingsButton:Landroid/view/View;

    const/4 v2, 0x0

    const-string v3, "settingsButton"

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->settingsButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onSettingsButtonUpdated(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->settingsButton:Landroid/view/View;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$inflateSettingsButton$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/MediaCarouselController$inflateSettingsButton$2;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public static synthetic logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;IIIZ[IIIIIILjava/lang/Object;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v9, v2

    goto :goto_0

    :cond_0
    move/from16 v9, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move v10, v2

    goto :goto_1

    :cond_1
    move/from16 v10, p7

    :goto_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    move-object v1, p0

    iget-object v3, v1, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getVisibleMediaIndex()I

    move-result v3

    move v11, v3

    goto :goto_2

    :cond_2
    move-object v1, p0

    move/from16 v11, p8

    :goto_2
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_3

    move v12, v2

    goto :goto_3

    :cond_3
    move/from16 v12, p9

    :goto_3
    move-object v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v12}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported(IIIZ[IIIII)V

    return-void
.end method

.method private final maybeResetSettingsCog()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHostStatesManager;->getMediaHostStates()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaHostState;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/android/systemui/media/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result v1

    :goto_0
    iget v3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaHostState;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/media/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result v0

    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyShowingOnlyActive:Z

    if-ne v3, v1, :cond_4

    iget v3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    if-nez v4, :cond_5

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-nez v3, :cond_3

    move v5, v2

    :cond_3
    if-nez v5, :cond_5

    if-eq v0, v1, :cond_5

    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyShowingOnlyActive:Z

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0, v2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->resetTranslation(Z)V

    :cond_5
    return-void
.end method

.method public static synthetic onDesiredLocationChanged$default(Lcom/android/systemui/media/MediaCarouselController;ILcom/android/systemui/media/MediaHostState;ZJJILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xc8

    move-wide v6, v0

    goto :goto_0

    :cond_0
    move-wide v6, p4

    :goto_0
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    move-wide v8, v0

    goto :goto_1

    :cond_1
    move-wide/from16 v8, p6

    :goto_1
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/media/MediaCarouselController;->onDesiredLocationChanged(ILcom/android/systemui/media/MediaHostState;ZJJ)V

    return-void
.end method

.method private final onSwipeToDismiss()V
    .locals 17

    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lcom/android/systemui/media/MediaControlPanel;

    iget-boolean v2, v3, Lcom/android/systemui/media/MediaControlPanel;->mIsImpressed:Z

    if-eqz v2, :cond_2

    const/16 v6, 0x2f9

    iget v7, v3, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    iget v8, v3, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaControlPanel;->getRecommendationViewHolder()Lcom/android/systemui/media/RecommendationViewHolder;

    move-result-object v2

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    move v9, v5

    goto :goto_1

    :cond_1
    move v9, v1

    :goto_1
    new-array v10, v5, [I

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaControlPanel;->getSurfaceForSmartspaceLogging()I

    move-result v2

    aput v2, v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v15, 0x160

    const/16 v16, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v16}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;IIIZ[IIIIIILjava/lang/Object;)V

    iput-boolean v1, v3, Lcom/android/systemui/media/MediaControlPanel;->mIsImpressed:Z

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/android/systemui/media/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDataManager;->onSwipeToDismiss()V

    return-void
.end method

.method private final recreatePlayers()V
    .locals 5

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/MediaCarouselController;->bgColor:I

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->getForegroundColor()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PageIndicator;->setTintList(Landroid/content/res/ColorStateList;)V

    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaPlayerData;->mediaData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Triple;

    invoke-virtual {v1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaData;

    invoke-virtual {v1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaPlayerData;->getSmartspaceMediaData$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Lcom/android/systemui/media/SmartspaceMediaData;

    move-result-object v3

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/systemui/media/MediaCarouselController;->removePlayer(Ljava/lang/String;ZZ)V

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/android/systemui/media/SmartspaceMediaData;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaPlayerData;->getShouldPrioritizeSs$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/android/systemui/media/MediaCarouselController;->addSmartspaceMediaRecommendations(Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v4, v4}, Lcom/android/systemui/media/MediaCarouselController;->removePlayer(Ljava/lang/String;ZZ)V

    const/4 v1, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/android/systemui/media/MediaCarouselController;->addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic removePlayer$default(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/media/MediaCarouselController;->removePlayer(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private final reorderAllPlayers(Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

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

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaControlPanel;->getPlayerViewHolder()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaControlPanel;->getRecommendationViewHolder()Lcom/android/systemui/media/RecommendationViewHolder;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/android/systemui/media/RecommendationViewHolder;->getRecommendations()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v1

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

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaPlayerData;->firstActiveMediaIndex()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaPlayerData;->playerKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-gez v0, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_5
    check-cast v2, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v4, v0

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollToPlayer(II)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_4
    if-nez v2, :cond_8

    new-instance p1, Lcom/android/systemui/media/MediaCarouselController$reorderAllPlayers$4;

    invoke-direct {p1, p0, v3}, Lcom/android/systemui/media/MediaCarouselController$reorderAllPlayers$4;-><init>(Lcom/android/systemui/media/MediaCarouselController;I)V

    :cond_8
    return-void
.end method

.method private final setCurrentlyExpanded(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    sget-object p1, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaControlPanel;

    iget-boolean v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaControlPanel;->setListening(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setRtl(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselController;->isRtl:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->isRtl:Z

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollToStart()V

    :cond_0
    return-void
.end method

.method private final updateCarouselDimensions()V
    .locals 6

    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaControlPanel;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v3

    const-string v4, "mediaPlayer.mediaViewController"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaViewController;->getCurrentWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaViewController;->getTranslationX()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaViewController;->getCurrentHeight()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaViewController;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselHeight:I

    if-eq v2, v0, :cond_2

    :cond_1
    iput v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    iput v2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselHeight:I

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setCarouselBounds(II)V

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorLocation()V

    :cond_2
    return-void
.end method

.method private final updateCarouselSize()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/MeasurementInput;->getWidth()I

    move-result v0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    if-nez v3, :cond_2

    move-object v3, v1

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v3

    :goto_2
    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/android/systemui/util/animation/MeasurementInput;->getHeight()I

    move-result v3

    :goto_3
    iget v4, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureWidth:I

    if-eq v0, v4, :cond_4

    if-nez v0, :cond_5

    :cond_4
    iget v4, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureHeight:I

    if-eq v3, v4, :cond_a

    if-eqz v3, :cond_a

    :cond_5
    iput v0, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureWidth:I

    iput v3, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureHeight:I

    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->qs_media_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    if-nez v4, :cond_6

    move-object v4, v1

    goto :goto_4

    :cond_6
    invoke-interface {v4}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v4

    :goto_4
    if-nez v4, :cond_7

    move v4, v2

    goto :goto_5

    :cond_7
    invoke-virtual {v4}, Lcom/android/systemui/util/animation/MeasurementInput;->getWidthMeasureSpec()I

    move-result v4

    :goto_5
    iget-object v5, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    if-nez v5, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {v5}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v1

    :goto_6
    if-nez v1, :cond_9

    move v1, v2

    goto :goto_7

    :cond_9
    invoke-virtual {v1}, Lcom/android/systemui/util/animation/MeasurementInput;->getHeightMeasureSpec()I

    move-result v1

    :goto_7
    iget-object v5, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v5, v4, v1}, Landroid/widget/HorizontalScrollView;->measure(II)V

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v2, v2, v0, v4}, Landroid/widget/HorizontalScrollView;->layout(IIII)V

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0, v3}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setPlayerWidthPlusPadding(I)V

    :cond_a
    return-void
.end method

.method private final updatePageIndicator()V
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
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorAlpha()V

    return-void
.end method

.method private final updatePageIndicatorAlpha()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHostStatesManager;->getMediaHostStates()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

.method private final updatePageIndicatorLocation()V
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

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getContentTranslation()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

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
.end method

.method private final updatePlayerToState(Lcom/android/systemui/media/MediaControlPanel;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    iget v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    iget p0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V

    return-void
.end method


# virtual methods
.method public final closeGuts(Z)V
    .locals 1

    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaControlPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->keysNeedRemoval:Ljava/util/Set;

    const-string p1, "keysNeedRemoval: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerData;->playerKeys()Ljava/util/Set;

    move-result-object p1

    const-string p3, "playerKeys: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerData;->getSmartspaceMediaData$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Lcom/android/systemui/media/SmartspaceMediaData;

    move-result-object p1

    const-string p3, "smartspaceMediaData: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerData;->getShouldPrioritizeSs$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "shouldPrioritizeSs: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    return-object p0
.end method

.method public final getMediaFrame()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getUpdateUserVisibility()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->updateUserVisibility:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "updateUserVisibility"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final logSmartspaceCardReported(IIIZ[III)V
    .locals 13

    const-string v0, "surfaces"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x180

    const/4 v12, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v1 .. v12}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;IIIZ[IIIIIILjava/lang/Object;)V

    return-void
.end method

.method public final logSmartspaceCardReported(IIIZ[IIIII)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p5

    const-string v3, "surfaces"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_0

    iget-object v3, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaDataManager;->getSmartspaceMediaData()Lcom/android/systemui/media/SmartspaceMediaData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/media/SmartspaceMediaData;->isActive()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaPlayerData;->getSmartspaceMediaData$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Lcom/android/systemui/media/SmartspaceMediaData;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    array-length v15, v2

    const/4 v3, 0x0

    move v14, v3

    :goto_0
    if-ge v14, v15, :cond_3

    aget v13, v2, v14

    const/16 v3, 0x160

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    const/16 v4, 0xf

    goto :goto_1

    :cond_1
    const/16 v4, 0x1f

    :goto_1
    move v10, v4

    move/from16 v4, p1

    move/from16 v5, p2

    move v7, v13

    move/from16 v8, p8

    move v9, v0

    move/from16 v11, p3

    move/from16 v12, p6

    move/from16 v16, v13

    move/from16 v13, p7

    move/from16 v17, v14

    move/from16 v14, p9

    invoke-static/range {v3 .. v14}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIIIIIIIIIII)V

    invoke-static {}, Lcom/android/systemui/media/MediaCarouselControllerKt;->access$getDEBUG$p()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Log Smartspace card event id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " instance id: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " surface: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v16

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " rank: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p8

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " cardinality: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " isRecommendationCard: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " uid: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " interactedSubcardRank: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p6

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " interactedSubcardCardinality: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p7

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " received_latency_millis: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p9

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v11, "MediaCarouselController"

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v7, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v6, p8

    move/from16 v10, p9

    :goto_2
    add-int/lit8 v14, v17, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public final logSmartspaceImpression(Z)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getVisibleMediaIndex()I

    move-result v1

    sget-object v2, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-le v3, v1, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "MediaPlayerData.players().elementAt(visibleMediaIndex)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v1

    check-cast v12, Lcom/android/systemui/media/MediaControlPanel;

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaPlayerData;->hasActiveMediaOrRecommendationCard()Z

    move-result v1

    invoke-virtual {v12}, Lcom/android/systemui/media/MediaControlPanel;->getRecommendationViewHolder()Lcom/android/systemui/media/RecommendationViewHolder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v13, 0x1

    if-eqz v2, :cond_0

    move v4, v13

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-nez v1, :cond_1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x320

    iget v2, v12, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    iget v5, v12, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    new-array v6, v13, [I

    invoke-virtual {v12}, Lcom/android/systemui/media/MediaControlPanel;->getSurfaceForSmartspaceLogging()I

    move-result v7

    aput v7, v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1e0

    const/4 v14, 0x0

    move-object v0, p0

    move v3, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move-object v11, v14

    invoke-static/range {v0 .. v11}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;IIIZ[IIIIIILjava/lang/Object;)V

    iput-boolean v13, v12, Lcom/android/systemui/media/MediaControlPanel;->mIsImpressed:Z

    :cond_2
    return-void
.end method

.method public final onDesiredLocationChanged(ILcom/android/systemui/media/MediaHostState;ZJJ)V
    .locals 6

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    iput p1, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredLocation:I

    iput-object p2, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaCarouselController;->setCurrentlyExpanded(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDataManager;->hasActiveMedia()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    sget-object v3, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/MediaControlPanel;

    if-eqz p3, :cond_3

    invoke-virtual {v4}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v5

    invoke-virtual {v5, p4, p5, p6, p7}, Lcom/android/systemui/media/MediaViewController;->animatePendingStateChange(JJ)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v4}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result v5

    if-eqz v5, :cond_4

    xor-int/lit8 v5, p3, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts(Z)V

    :cond_4
    invoke-virtual {v4}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/systemui/media/MediaViewController;->onLocationPreChange(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result p3

    xor-int/2addr p3, v2

    invoke-virtual {p1, p3}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setShowsSettingsButton(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getFalsingProtectionNeeded()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setFalsingProtectionNeeded(Z)V

    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result p1

    iget-boolean p2, p0, Lcom/android/systemui/media/MediaCarouselController;->playersVisible:Z

    if-eq p1, p2, :cond_6

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->playersVisible:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, v1, v2, p2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->resetTranslation$default(Lcom/android/systemui/media/MediaCarouselScrollHandler;ZILjava/lang/Object;)V

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updateCarouselSize()V

    :goto_3
    return-void
.end method

.method public final removePlayer(Ljava/lang/String;ZZ)V
    .locals 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/MediaPlayerData;->removeMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onPrePlayerRemoved(Lcom/android/systemui/media/MediaControlPanel;)V

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaControlPanel;->getPlayerViewHolder()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaControlPanel;->getRecommendationViewHolder()Lcom/android/systemui/media/RecommendationViewHolder;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/android/systemui/media/RecommendationViewHolder;->getRecommendations()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaControlPanel;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onPlayersChanged()V

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicator()V

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/media/MediaDataManager;->dismissMediaData(Ljava/lang/String;J)Z

    :cond_3
    if-eqz p3, :cond_4

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/media/MediaDataManager;->dismissSmartspaceRecommendation(Ljava/lang/String;J)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final setCurrentState(IIFZ)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    cmpg-float v0, p3, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p4, :cond_3

    :cond_1
    iput p1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    iput p2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    iput p3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    sget-object p1, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

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

    const-string p3, "mediaPlayer"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lcom/android/systemui/media/MediaCarouselController;->updatePlayerToState(Lcom/android/systemui/media/MediaControlPanel;Z)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->maybeResetSettingsCog()V

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorAlpha()V

    :cond_3
    return-void
.end method

.method protected final setShouldScrollToActivePlayer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->shouldScrollToActivePlayer:Z

    return-void
.end method

.method public final setUpdateUserVisibility(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->updateUserVisibility:Lkotlin/jvm/functions/Function0;

    return-void
.end method
