.class public final Lcom/android/systemui/media/MediaCarouselController$6;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaDataManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaCarouselController;-><init>(Landroid/content/Context;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;Lcom/android/systemui/media/MediaHostStatesManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/media/MediaUiEventLogger;Lcom/android/systemui/media/MediaCarouselControllerLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaCarouselController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaCarouselController$6\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1079:1\n1858#2,3:1080\n1858#2,3:1084\n1#3:1083\n*S KotlinDebug\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaCarouselController$6\n*L\n246#1:1080,3\n303#1:1084,3\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/MediaCarouselController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;ZIZ)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    move-object/from16 v4, p2

    move/from16 v5, p6

    invoke-virtual {v3, v1, v4, v2, v5}, Lcom/android/systemui/media/MediaCarouselController;->addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;Z)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v7, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    const/16 v8, 0x2f7

    iget v9, v3, Lcom/android/systemui/media/MediaControlPanel;->mSmartspaceId:I

    iget v10, v3, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    new-array v11, v5, [I

    fill-array-data v11, :array_0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayerIndex(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1b0

    invoke-static/range {v7 .. v17}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;III[IIIIIZI)V

    :goto_0
    iget-object v3, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    iget-object v3, v3, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iget-boolean v5, v3, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleToUser:Z

    if-eqz v5, :cond_5

    iget v3, v3, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayerIndex(Ljava/lang/String;)I

    move-result v5

    if-ne v3, v5, :cond_5

    iget-object v3, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    iget-object v5, v3, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iget-boolean v5, v5, Lcom/android/systemui/media/MediaCarouselScrollHandler;->qsExpanded:Z

    invoke-virtual {v3, v5}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceImpression(Z)V

    goto/16 :goto_3

    :cond_1
    if-eqz p5, :cond_5

    sget-object v3, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v3

    iget-object v15, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v14, v6

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v18, v14, 0x1

    if-ltz v14, :cond_3

    check-cast v7, Lcom/android/systemui/media/MediaControlPanel;

    iget-object v8, v7, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    if-nez v8, :cond_2

    iget v8, v7, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    iget-object v9, v15, Lcom/android/systemui/media/MediaCarouselController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v9}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v9

    long-to-int v9, v9

    add-int/2addr v8, v9

    const/16 v9, 0x2000

    invoke-static {v8, v9}, Ljava/lang/Math;->floorMod(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iput v9, v7, Lcom/android/systemui/media/MediaControlPanel;->mSmartspaceId:I

    iput-boolean v6, v7, Lcom/android/systemui/media/MediaControlPanel;->mIsImpressed:Z

    const/16 v8, 0x2f7

    iget v10, v7, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    new-array v11, v5, [I

    fill-array-data v11, :array_1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x130

    move-object v7, v15

    move-object/from16 v19, v15

    move/from16 v15, p5

    invoke-static/range {v7 .. v17}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;III[IIIIIZI)V

    goto :goto_2

    :cond_2
    move-object/from16 v19, v15

    :goto_2
    move/from16 v14, v18

    move-object/from16 v15, v19

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v4

    :cond_4
    iget-object v3, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    iget-object v5, v3, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iget-boolean v7, v5, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleToUser:Z

    if-eqz v7, :cond_5

    iget-boolean v5, v5, Lcom/android/systemui/media/MediaCarouselScrollHandler;->qsExpanded:Z

    if-nez v5, :cond_5

    invoke-virtual {v3, v5}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceImpression(Z)V

    :cond_5
    :goto_3
    iget-object v3, v2, Lcom/android/systemui/media/MediaData;->isPlaying:Ljava/lang/Boolean;

    const/4 v5, 0x1

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_4
    if-nez v4, :cond_7

    iget-boolean v3, v2, Lcom/android/systemui/media/MediaData;->isClearable:Z

    goto :goto_5

    :cond_7
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_5
    if-eqz v3, :cond_8

    iget-boolean v2, v2, Lcom/android/systemui/media/MediaData;->active:Z

    if-nez v2, :cond_8

    move v6, v5

    :cond_8
    if-eqz v6, :cond_a

    iget-object v2, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    iget-object v2, v2, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/util/Utils;->useMediaResumption(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    iget-object v3, v2, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;->isReorderingAllowed:Z

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/media/MediaCarouselController$6;->onMediaDataRemoved(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    iget-object v0, v2, Lcom/android/systemui/media/MediaCarouselController;->keysNeedRemoval:Ljava/util/LinkedHashSet;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    iget-object v0, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    iget-object v0, v0, Lcom/android/systemui/media/MediaCarouselController;->keysNeedRemoval:Ljava/util/LinkedHashSet;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_6
    return-void

    :array_0
    .array-data 4
        0x4
        0x2
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x2
        0x5
    .end array-data
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/media/MediaCarouselController;->removePlayer(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Z)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    sget-boolean v3, Lcom/android/systemui/media/MediaCarouselControllerKt;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MediaCarouselController"

    const-string v4, "Loading Smartspace media update"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v3, v1, Lcom/android/systemui/media/SmartspaceMediaData;->isActive:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    iget-object v3, v3, Lcom/android/systemui/media/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/MediaDataManager;

    iget-object v3, v3, Lcom/android/systemui/media/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaDataFilter;->hasActiveMedia()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    iget-object v3, v3, Lcom/android/systemui/media/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/MediaDataManager;

    iget-object v3, v3, Lcom/android/systemui/media/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;

    iget-object v3, v3, Lcom/android/systemui/media/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v4

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    const/4 v3, 0x3

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v4

    iget-object v15, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v13, v5

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v17, v13, 0x1

    if-ltz v13, :cond_3

    check-cast v6, Lcom/android/systemui/media/MediaControlPanel;

    iget-object v7, v6, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    if-nez v7, :cond_2

    iget v7, v6, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    iget-object v8, v15, Lcom/android/systemui/media/MediaCarouselController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v8}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v8, v8

    add-int/2addr v7, v8

    const/16 v8, 0x2000

    invoke-static {v7, v8}, Ljava/lang/Math;->floorMod(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iput v8, v6, Lcom/android/systemui/media/MediaControlPanel;->mSmartspaceId:I

    iput-boolean v5, v6, Lcom/android/systemui/media/MediaControlPanel;->mIsImpressed:Z

    const/16 v7, 0x2f7

    iget v9, v6, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    new-array v10, v3, [I

    fill-array-data v10, :array_0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v6, v15, Lcom/android/systemui/media/MediaCarouselController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v6}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v18

    iget-wide v5, v1, Lcom/android/systemui/media/SmartspaceMediaData;->headphoneConnectionTimeMillis:J

    sub-long v5, v18, v5

    long-to-int v14, v5

    const/4 v5, 0x0

    const/16 v16, 0x130

    move-object v6, v15

    move-object/from16 v18, v15

    move v15, v5

    invoke-static/range {v6 .. v16}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;III[IIIIIZI)V

    goto :goto_2

    :cond_2
    move-object/from16 v18, v15

    :goto_2
    move/from16 v13, v17

    move-object/from16 v15, v18

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_4
    iget-object v4, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5, v1, v2}, Lcom/android/systemui/media/MediaCarouselController;->addSmartspaceMediaRecommendations(Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Z)V

    sget-object v2, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    iget-object v6, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    const/16 v7, 0x2f7

    iget v8, v2, Lcom/android/systemui/media/MediaControlPanel;->mSmartspaceId:I

    iget v9, v2, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    new-array v10, v3, [I

    fill-array-data v10, :array_1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayerIndex(Ljava/lang/String;)I

    move-result v13

    iget-object v2, v6, Lcom/android/systemui/media/MediaCarouselController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v14, v1, Lcom/android/systemui/media/SmartspaceMediaData;->headphoneConnectionTimeMillis:J

    sub-long/2addr v2, v14

    long-to-int v14, v2

    const/4 v15, 0x0

    const/16 v16, 0x130

    invoke-static/range {v6 .. v16}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;III[IIIIIZI)V

    :goto_3
    iget-object v1, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    iget-object v1, v1, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iget-boolean v2, v1, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleToUser:Z

    if-eqz v2, :cond_7

    iget v1, v1, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleMediaIndex:I

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayerIndex(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_7

    iget-object v0, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    iget-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    iget-boolean v1, v1, Lcom/android/systemui/media/MediaCarouselScrollHandler;->qsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceImpression(Z)V

    goto :goto_4

    :cond_6
    iget-object v1, v1, Lcom/android/systemui/media/SmartspaceMediaData;->targetId:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/media/MediaCarouselController$6;->onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V

    :cond_7
    :goto_4
    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x2
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x2
        0x5
    .end array-data
.end method

.method public final onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/media/MediaCarouselControllerKt;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaCarouselController"

    const-string v1, "My Smartspace media removal request is received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    iget-object v0, p2, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;->isReorderingAllowed:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p2, Lcom/android/systemui/media/MediaCarouselController;->keysNeedRemoval:Ljava/util/LinkedHashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaCarouselController$6;->onMediaDataRemoved(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
