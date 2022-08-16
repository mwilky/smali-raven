.class final synthetic Lcom/android/systemui/media/MediaCarouselController$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "MediaCarouselController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaCarouselController;-><init>(Landroid/content/Context;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;Lcom/android/systemui/media/MediaHostStatesManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/media/MediaUiEventLogger;Lcom/android/systemui/media/MediaCarouselControllerLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/android/systemui/media/MediaCarouselController;

    const/4 v1, 0x0

    const-string/jumbo v4, "onSwipeToDismiss"

    const-string/jumbo v5, "onSwipeToDismiss()V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    move v8, v13

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v14, v8, 0x1

    if-ltz v8, :cond_1

    move-object v15, v1

    check-cast v15, Lcom/android/systemui/media/MediaControlPanel;

    iget-boolean v1, v15, Lcom/android/systemui/media/MediaControlPanel;->mIsImpressed:Z

    if-eqz v1, :cond_0

    const/16 v3, 0x2f9

    iget v4, v15, Lcom/android/systemui/media/MediaControlPanel;->mSmartspaceId:I

    iget v5, v15, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    new-array v6, v2, [I

    invoke-virtual {v15}, Lcom/android/systemui/media/MediaControlPanel;->getSurfaceForSmartspaceLogging()I

    move-result v1

    aput v1, v6, v13

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v16, 0xb0

    move-object v1, v0

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v9

    move v9, v10

    move v10, v11

    move/from16 v11, v16

    invoke-static/range {v1 .. v11}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;III[IIIIIZI)V

    iput-boolean v13, v15, Lcom/android/systemui/media/MediaControlPanel;->mIsImpressed:Z

    :cond_0
    move v8, v14

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v3

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->logger:Lcom/android/systemui/media/MediaUiEventLogger;

    iget-object v1, v1, Lcom/android/systemui/media/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v4, Lcom/android/systemui/media/MediaUiEvent;->DISMISS_SWIPE:Lcom/android/systemui/media/MediaUiEvent;

    invoke-interface {v1, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object v0, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/MediaDataManager;

    iget-object v0, v0, Lcom/android/systemui/media/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "MediaDataFilter"

    const-string v4, "Media carousel swiped away"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/systemui/media/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Lcom/android/systemui/media/MediaDataFilter;->mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move-object v6, v3

    :goto_2
    invoke-virtual {v6, v5, v2, v2}, Lcom/android/systemui/media/MediaDataManager;->setTimedOut$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Ljava/lang/String;ZZ)V

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcom/android/systemui/media/MediaDataFilter;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    iget-boolean v4, v2, Lcom/android/systemui/media/SmartspaceMediaData;->isActive:Z

    if-eqz v4, :cond_8

    iget-object v2, v2, Lcom/android/systemui/media/SmartspaceMediaData;->dismissIntent:Landroid/content/Intent;

    if-nez v2, :cond_5

    const-string v2, "Cannot create dismiss action click action: extras missing dismiss_intent."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.google.android.apps.gsa.staticplugins.opa.smartspace.ExportedSmartspaceTrampolineActivity"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/systemui/media/MediaDataFilter;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lcom/android/systemui/media/MediaDataFilter;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    invoke-virtual {v1, v2}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcast(Landroid/content/Intent;)V

    :goto_3
    sget-object v4, Lcom/android/systemui/media/MediaDataManagerKt;->EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/SmartspaceMediaData;

    iget-object v1, v0, Lcom/android/systemui/media/MediaDataFilter;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    iget-object v5, v1, Lcom/android/systemui/media/SmartspaceMediaData;->targetId:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    iget-object v10, v1, Lcom/android/systemui/media/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    const/16 v11, 0x7e

    invoke-static/range {v4 .. v11}, Lcom/android/systemui/media/SmartspaceMediaData;->copy$default(Lcom/android/systemui/media/SmartspaceMediaData;Ljava/lang/String;ZLandroid/content/Intent;JLcom/android/internal/logging/InstanceId;I)Lcom/android/systemui/media/SmartspaceMediaData;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/MediaDataFilter;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    iget-object v0, v0, Lcom/android/systemui/media/MediaDataFilter;->mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    if-eqz v0, :cond_7

    move-object v3, v0

    :cond_7
    iget-object v0, v1, Lcom/android/systemui/media/SmartspaceMediaData;->targetId:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/systemui/media/MediaDataManager;->dismissSmartspaceRecommendation(JLjava/lang/String;)V

    :cond_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
