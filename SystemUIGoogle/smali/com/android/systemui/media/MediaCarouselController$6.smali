.class public final Lcom/android/systemui/media/MediaCarouselController$6;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaDataManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaCarouselController;-><init>(Landroid/content/Context;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;Lcom/android/systemui/media/MediaHostStatesManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/dump/DumpManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaCarouselController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaCarouselController$6\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1022:1\n1828#2,3:1023\n1828#2,3:1027\n1#3:1026\n*E\n*S KotlinDebug\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaCarouselController$6\n*L\n236#1,3:1023\n292#1,3:1027\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaCarouselController;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;ZIZ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "key"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "data"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    move-object/from16 v4, p2

    move/from16 v5, p6

    invoke-static {v3, v1, v4, v2, v5}, Lcom/android/systemui/media/MediaCarouselController;->access$addOrUpdatePlayer(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;Z)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v3, v1}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v7, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    const/16 v8, 0x2f7

    iget v9, v6, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    iget v10, v6, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    new-array v11, v4, [I

    fill-array-data v11, :array_0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3, v1}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayerIndex(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1b0

    const/16 v18, 0x0

    invoke-static/range {v7 .. v18}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;III[IIIIIZILjava/lang/Object;)V

    :goto_0
    iget-object v4, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {v4}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getVisibleToUser()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {v4}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getVisibleMediaIndex()I

    move-result v4

    invoke-virtual {v3, v1}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayerIndex(Ljava/lang/String;)I

    move-result v3

    if-ne v4, v3, :cond_5

    iget-object v3, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getQsExpanded()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceImpression(Z)V

    goto/16 :goto_3

    :cond_1
    if-eqz p5, :cond_5

    sget-object v3, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v3

    iget-object v15, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v13, v5

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v18, v13, 0x1

    if-gez v13, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v6, Lcom/android/systemui/media/MediaControlPanel;

    invoke-virtual {v6}, Lcom/android/systemui/media/MediaControlPanel;->getRecommendationViewHolder()Lcom/android/systemui/media/RecommendationViewHolder;

    move-result-object v7

    if-nez v7, :cond_3

    iget v7, v6, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    invoke-static {v15}, Lcom/android/systemui/media/MediaCarouselController;->access$getSystemClock$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/util/time/SystemClock;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v8, v8

    add-int/2addr v7, v8

    invoke-static {v7}, Lcom/android/systemui/media/SmallHash;->hash(I)I

    move-result v8

    iput v8, v6, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    iput-boolean v5, v6, Lcom/android/systemui/media/MediaControlPanel;->mIsImpressed:Z

    const/16 v7, 0x2f7

    iget v9, v6, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    new-array v10, v4, [I

    fill-array-data v10, :array_1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x130

    const/16 v19, 0x0

    move-object v6, v15

    move/from16 v14, p5

    move-object/from16 v20, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v19

    invoke-static/range {v6 .. v17}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;III[IIIIIZILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    move-object/from16 v20, v15

    :goto_2
    move/from16 v13, v18

    move-object/from16 v15, v20

    goto :goto_1

    :cond_4
    iget-object v3, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getVisibleToUser()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getQsExpanded()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getQsExpanded()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceImpression(Z)V

    :cond_5
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/media/MediaData;->isPlaying()Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_4
    if-nez v3, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/media/MediaData;->isClearable()Z

    move-result v3

    goto :goto_5

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_5
    if-eqz v3, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/media/MediaData;->getActive()Z

    move-result v2

    if-nez v2, :cond_8

    move v5, v4

    :cond_8
    if-eqz v5, :cond_a

    iget-object v2, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v2}, Lcom/android/systemui/media/MediaCarouselController;->access$getContext$p(Lcom/android/systemui/media/MediaCarouselController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/Utils;->useMediaResumption(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v2}, Lcom/android/systemui/media/MediaCarouselController;->access$getVisualStabilityManager$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->isReorderingAllowed()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/media/MediaCarouselController$6;->onMediaDataRemoved(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    iget-object v0, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0}, Lcom/android/systemui/media/MediaCarouselController;->access$getKeysNeedRemoval$p(Lcom/android/systemui/media/MediaCarouselController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    iget-object v0, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0}, Lcom/android/systemui/media/MediaCarouselController;->access$getKeysNeedRemoval$p(Lcom/android/systemui/media/MediaCarouselController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_6
    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x2
    .end array-data
.end method

.method public onMediaDataRemoved(Ljava/lang/String;)V
    .locals 7

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/media/MediaCarouselController;->removePlayer$default(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;ZZILjava/lang/Object;)V

    return-void
.end method

.method public onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Z)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "key"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "data"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/media/MediaCarouselControllerKt;->access$getDEBUG$p()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "MediaCarouselController"

    const-string v5, "Loading Smartspace media update"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/media/SmartspaceMediaData;->isActive()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v4}, Lcom/android/systemui/media/MediaCarouselController;->access$getMediaManager$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/media/MediaDataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/media/MediaDataManager;->hasActiveMedia()Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v4}, Lcom/android/systemui/media/MediaCarouselController;->access$getMediaManager$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/media/MediaDataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/media/MediaDataManager;->hasAnyMedia()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    const/4 v4, 0x2

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v5}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v5

    iget-object v15, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v14, v6

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v19, v14, 0x1

    if-gez v14, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v7, Lcom/android/systemui/media/MediaControlPanel;

    invoke-virtual {v7}, Lcom/android/systemui/media/MediaControlPanel;->getRecommendationViewHolder()Lcom/android/systemui/media/RecommendationViewHolder;

    move-result-object v8

    if-nez v8, :cond_3

    iget v8, v7, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    invoke-static {v15}, Lcom/android/systemui/media/MediaCarouselController;->access$getSystemClock$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/util/time/SystemClock;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v9

    long-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8}, Lcom/android/systemui/media/SmallHash;->hash(I)I

    move-result v9

    iput v9, v7, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    iput-boolean v6, v7, Lcom/android/systemui/media/MediaControlPanel;->mIsImpressed:Z

    const/16 v8, 0x2f7

    iget v10, v7, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    new-array v11, v4, [I

    fill-array-data v11, :array_0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v15}, Lcom/android/systemui/media/MediaCarouselController;->access$getSystemClock$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/util/time/SystemClock;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/media/SmartspaceMediaData;->getHeadphoneConnectionTimeMillis()J

    move-result-wide v20

    sub-long v6, v16, v20

    long-to-int v6, v6

    const/16 v16, 0x0

    const/16 v17, 0x130

    const/16 v18, 0x0

    move-object v7, v15

    move-object/from16 v20, v15

    move v15, v6

    invoke-static/range {v7 .. v18}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;III[IIIIIZILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    move-object/from16 v20, v15

    :goto_2
    move/from16 v14, v19

    move-object/from16 v15, v20

    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    iget-object v5, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v5, v1, v2, v3}, Lcom/android/systemui/media/MediaCarouselController;->access$addSmartspaceMediaRecommendations(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Z)V

    sget-object v3, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v3, v1}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    iget-object v6, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    const/16 v7, 0x2f7

    iget v8, v5, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    iget v9, v5, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    new-array v10, v4, [I

    fill-array-data v10, :array_1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3, v1}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayerIndex(Ljava/lang/String;)I

    move-result v13

    invoke-static {v6}, Lcom/android/systemui/media/MediaCarouselController;->access$getSystemClock$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/util/time/SystemClock;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/media/SmartspaceMediaData;->getHeadphoneConnectionTimeMillis()J

    move-result-wide v14

    sub-long/2addr v4, v14

    long-to-int v14, v4

    const/4 v15, 0x0

    const/16 v16, 0x130

    const/16 v17, 0x0

    invoke-static/range {v6 .. v17}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;III[IIIIIZILjava/lang/Object;)V

    :goto_3
    iget-object v2, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getVisibleToUser()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getVisibleMediaIndex()I

    move-result v2

    invoke-virtual {v3, v1}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayerIndex(Ljava/lang/String;)I

    move-result v1

    if-ne v2, v1, :cond_7

    iget-object v0, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getQsExpanded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceImpression(Z)V

    goto :goto_4

    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/media/SmartspaceMediaData;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/media/MediaCarouselController$6;->onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V

    :cond_7
    :goto_4
    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x2
    .end array-data
.end method

.method public onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/media/MediaCarouselControllerKt;->access$getDEBUG$p()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MediaCarouselController"

    const-string v1, "My Smartspace media removal request is received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {p2}, Lcom/android/systemui/media/MediaCarouselController;->access$getVisualStabilityManager$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->isReorderingAllowed()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {p0}, Lcom/android/systemui/media/MediaCarouselController;->access$getKeysNeedRemoval$p(Lcom/android/systemui/media/MediaCarouselController;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaCarouselController$6;->onMediaDataRemoved(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
