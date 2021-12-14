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
    value = "SMAP\nMediaCarouselController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaCarouselController$6\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,942:1\n1828#2,3:943\n1#3:946\n*E\n*S KotlinDebug\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaCarouselController$6\n*L\n228#1,3:943\n*E\n"
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
.method public onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;ZZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "key"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "data"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    move-object/from16 v4, p2

    invoke-static {v3, v1, v4, v2}, Lcom/android/systemui/media/MediaCarouselController;->access$addOrUpdatePlayer(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v3, v1}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    const/16 v6, 0x2f7

    iget v7, v4, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    iget v8, v4, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    const/4 v9, 0x0

    invoke-virtual {v4}, Lcom/android/systemui/media/MediaControlPanel;->getSurfaceForSmartspaceLogging()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3, v1}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayerIndex(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0x60

    const/4 v15, 0x0

    invoke-static/range {v5 .. v15}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;IIIZIIIIILjava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 v3, 0x0

    if-eqz p5, :cond_4

    sget-object v4, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v4}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v4

    iget-object v15, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v13, v3

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v16, v13, 0x1

    if-gez v13, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v5, Lcom/android/systemui/media/MediaControlPanel;

    invoke-virtual {v5}, Lcom/android/systemui/media/MediaControlPanel;->getRecommendationViewHolder()Lcom/android/systemui/media/RecommendationViewHolder;

    move-result-object v6

    if-nez v6, :cond_3

    iget v6, v5, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    invoke-static {v15}, Lcom/android/systemui/media/MediaCarouselController;->access$getSystemClock$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/util/time/SystemClock;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v7

    long-to-int v7, v7

    add-int/2addr v6, v7

    invoke-static {v6}, Lcom/android/systemui/media/SmallHash;->hash(I)I

    move-result v7

    iput v7, v5, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    const/16 v6, 0x2f7

    iget v8, v5, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    const/4 v9, 0x0

    invoke-virtual {v5}, Lcom/android/systemui/media/MediaControlPanel;->getSurfaceForSmartspaceLogging()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v14, 0x60

    const/16 v17, 0x0

    move-object v5, v15

    move-object/from16 v18, v15

    move-object/from16 v15, v17

    invoke-static/range {v5 .. v15}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;IIIZIIIIILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    move-object/from16 v18, v15

    :goto_2
    move/from16 v13, v16

    move-object/from16 v15, v18

    goto :goto_1

    :cond_4
    iget-object v4, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {v4}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getVisibleToUser()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p5, :cond_5

    iget-object v4, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {v4}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getQsExpanded()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {v4}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getQsExpanded()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceImpression(Z)V

    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/media/MediaData;->isPlaying()Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_3
    if-nez v4, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/media/MediaData;->isClearable()Z

    move-result v4

    goto :goto_4

    :cond_7
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_4
    if-eqz v4, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/media/MediaData;->getActive()Z

    move-result v2

    if-nez v2, :cond_8

    move v3, v5

    :cond_8
    if-eqz v3, :cond_a

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

    goto :goto_5

    :cond_9
    iget-object v0, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0}, Lcom/android/systemui/media/MediaCarouselController;->access$getKeysNeedRemoval$p(Lcom/android/systemui/media/MediaCarouselController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    iget-object v0, v0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0}, Lcom/android/systemui/media/MediaCarouselController;->access$getKeysNeedRemoval$p(Lcom/android/systemui/media/MediaCarouselController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_5
    return-void
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
    .locals 11

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/systemui/media/SmartspaceMediaData;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {v0, p1, p2, p3}, Lcom/android/systemui/media/MediaCarouselController;->access$addSmartspaceMediaRecommendations(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Z)V

    sget-object p2, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {p2, p1}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    const/16 v1, 0x2f7

    iget v2, p3, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    iget v3, p3, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    const/4 v4, 0x1

    invoke-virtual {p3}, Lcom/android/systemui/media/MediaControlPanel;->getSurfaceForSmartspaceLogging()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p2, p1}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayerIndex(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x60

    const/4 v10, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;IIIZIIIIILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getVisibleMediaIndex()I

    move-result v0

    invoke-virtual {p2, p1}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayerIndex(Ljava/lang/String;)I

    move-result p1

    if-ne v0, p1, :cond_2

    const/16 v1, 0x320

    iget v2, p3, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    iget v3, p3, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    const/4 v4, 0x1

    invoke-virtual {p3}, Lcom/android/systemui/media/MediaControlPanel;->getSurfaceForSmartspaceLogging()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;IIIZIIIIILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/media/SmartspaceMediaData;->getTargetId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/MediaCarouselController$6;->onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {p2}, Lcom/android/systemui/media/MediaCarouselController;->access$getVisualStabilityManager$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->isReorderingAllowed()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController$6;->this$0:Lcom/android/systemui/media/MediaCarouselController;

    invoke-static {p0}, Lcom/android/systemui/media/MediaCarouselController;->access$getKeysNeedRemoval$p(Lcom/android/systemui/media/MediaCarouselController;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaCarouselController$6;->onMediaDataRemoved(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
