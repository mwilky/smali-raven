.class public final Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;
.super Landroid/media/session/MediaController$Callback;
.source "MediaTimeoutListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/MediaTimeoutListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PlaybackStateListener"
.end annotation


# instance fields
.field public cancellation:Ljava/lang/Runnable;

.field public destroyed:Z

.field public expiration:J

.field public key:Ljava/lang/String;

.field public lastState:Landroid/media/session/PlaybackState;

.field public mediaController:Landroid/media/session/MediaController;

.field public mediaData:Lcom/android/systemui/media/MediaData;

.field public resumption:Ljava/lang/Boolean;

.field public final synthetic this$0:Lcom/android/systemui/media/MediaTimeoutListener;

.field public timedOut:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaTimeoutListener;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/media/MediaData;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->expiration:J

    iput-object p3, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->mediaData:Lcom/android/systemui/media/MediaData;

    invoke-virtual {p0, p3}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->setMediaData(Lcom/android/systemui/media/MediaData;)V

    return-void
.end method


# virtual methods
.method public final doTimeout()V
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->cancellation:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    iget-object v1, v1, Lcom/android/systemui/media/MediaTimeoutListener;->logger:Lcom/android/systemui/media/MediaTimeoutLogger;

    iget-object v2, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/systemui/media/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v4, Lcom/android/systemui/media/MediaTimeoutLogger$logTimeout$2;->INSTANCE:Lcom/android/systemui/media/MediaTimeoutLogger$logTimeout$2;

    const-string v5, "MediaTimeout"

    invoke-virtual {v1, v5, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v3

    iput-object v2, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->timedOut:Z

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->expiration:J

    iget-object v2, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    iget-object v2, v2, Lcom/android/systemui/media/MediaTimeoutListener;->timeoutCallback:Lkotlin/jvm/functions/Function2;

    if-eqz v2, :cond_0

    move-object v0, v2

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final expireMediaTimeout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->cancellation:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    iget-object v1, v1, Lcom/android/systemui/media/MediaTimeoutListener;->logger:Lcom/android/systemui/media/MediaTimeoutLogger;

    iget-object v1, v1, Lcom/android/systemui/media/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v2, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    sget-object v3, Lcom/android/systemui/media/MediaTimeoutLogger$logTimeoutCancelled$2;->INSTANCE:Lcom/android/systemui/media/MediaTimeoutLogger$logTimeoutCancelled$2;

    const-string v4, "MediaTimeout"

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v2

    iput-object p1, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p2, v2, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->expiration:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->cancellation:Ljava/lang/Runnable;

    return-void
.end method

.method public final isPlaying$1()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->lastState:Landroid/media/session/PlaybackState;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->processState(Landroid/media/session/PlaybackState;Z)V

    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    iget-object v0, v0, Lcom/android/systemui/media/MediaTimeoutListener;->logger:Lcom/android/systemui/media/MediaTimeoutLogger;

    iget-object v1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/media/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v3, Lcom/android/systemui/media/MediaTimeoutLogger$logSessionDestroyed$2;->INSTANCE:Lcom/android/systemui/media/MediaTimeoutLogger$logSessionDestroyed$2;

    const-string v4, "MediaTimeout"

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v2

    iput-object v1, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->resumption:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->mediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->mediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->cancellation:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->destroyed:Z

    :goto_2
    return-void
.end method

.method public final processState(Landroid/media/session/PlaybackState;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    iget-object v3, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    iget-object v3, v3, Lcom/android/systemui/media/MediaTimeoutListener;->logger:Lcom/android/systemui/media/MediaTimeoutLogger;

    iget-object v4, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/systemui/media/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v5, Lcom/android/systemui/media/MediaTimeoutLogger$logPlaybackState$2;->INSTANCE:Lcom/android/systemui/media/MediaTimeoutLogger$logPlaybackState$2;

    const-string v6, "MediaTimeout"

    invoke-virtual {v3, v6, v2, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v5

    iput-object v4, v5, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    iput-object v7, v5, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->isPlaying$1()Z

    move-result v8

    if-ne v7, v8, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v7, v5

    :goto_2
    iget-object v8, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->lastState:Landroid/media/session/PlaybackState;

    if-nez v8, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v8}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    :goto_3
    if-nez v1, :cond_4

    const/4 v9, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    :goto_4
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    iget-object v9, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->lastState:Landroid/media/session/PlaybackState;

    if-nez v9, :cond_5

    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v9}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v9

    :goto_5
    if-nez v1, :cond_6

    const/4 v10, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v10

    :goto_6
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v9, v10, :cond_7

    goto/16 :goto_c

    :cond_7
    if-eqz v9, :cond_13

    if-eqz v10, :cond_13

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-eq v8, v11, :cond_8

    goto/16 :goto_d

    :cond_8
    new-instance v8, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v8, v9}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    new-instance v9, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v9, v10}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v8, v9}, Lkotlin/sequences/SequencesKt___SequencesKt;->zip(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;)Lkotlin/sequences/MergingSequence;

    move-result-object v8

    iget-object v9, v8, Lkotlin/sequences/MergingSequence;->sequence1:Lkotlin/sequences/Sequence;

    invoke-interface {v9}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v9

    iget-object v10, v8, Lkotlin/sequences/MergingSequence;->sequence2:Lkotlin/sequences/Sequence;

    invoke-interface {v10}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    move v11, v3

    goto :goto_7

    :cond_a
    move v11, v5

    :goto_7
    if-eqz v11, :cond_12

    iget-object v11, v8, Lkotlin/sequences/MergingSequence;->transform:Lkotlin/jvm/functions/Function2;

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/Pair;

    invoke-virtual {v11}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {v11}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {v12}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-virtual {v12}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v11}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-virtual {v12}, Landroid/media/session/PlaybackState$CustomAction;->getIcon()I

    move-result v13

    invoke-virtual {v11}, Landroid/media/session/PlaybackState$CustomAction;->getIcon()I

    move-result v14

    if-eq v13, v14, :cond_b

    goto :goto_a

    :cond_b
    invoke-virtual {v12}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    if-nez v13, :cond_c

    move v13, v3

    goto :goto_8

    :cond_c
    move v13, v5

    :goto_8
    invoke-virtual {v11}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    if-nez v14, :cond_d

    move v14, v3

    goto :goto_9

    :cond_d
    move v14, v5

    :goto_9
    if-eq v13, v14, :cond_e

    goto :goto_a

    :cond_e
    invoke-virtual {v12}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    if-eqz v13, :cond_10

    invoke-virtual {v12}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v12}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v11}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_a

    :cond_10
    move v4, v3

    goto :goto_b

    :cond_11
    :goto_a
    move v4, v5

    :goto_b
    if-nez v4, :cond_9

    goto :goto_d

    :cond_12
    :goto_c
    move v4, v3

    goto :goto_e

    :cond_13
    :goto_d
    move v4, v5

    :goto_e
    if-eqz v4, :cond_14

    move v4, v3

    goto :goto_f

    :cond_14
    move v4, v5

    :goto_f
    iget-object v8, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->resumption:Ljava/lang/Boolean;

    iget-object v9, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->mediaData:Lcom/android/systemui/media/MediaData;

    iget-boolean v9, v9, Lcom/android/systemui/media/MediaData;->resumption:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v3, v8

    iput-object v1, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->lastState:Landroid/media/session/PlaybackState;

    if-eqz v4, :cond_15

    if-nez v7, :cond_17

    :cond_15
    if-eqz v1, :cond_17

    if-eqz p2, :cond_17

    iget-object v4, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    iget-object v4, v4, Lcom/android/systemui/media/MediaTimeoutListener;->logger:Lcom/android/systemui/media/MediaTimeoutLogger;

    iget-object v8, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    iget-object v4, v4, Lcom/android/systemui/media/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    new-instance v9, Lcom/android/systemui/media/MediaTimeoutLogger$logStateCallback$2;

    invoke-direct {v9, v8}, Lcom/android/systemui/media/MediaTimeoutLogger$logStateCallback$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v2, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v2

    iput-object v8, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    iget-object v2, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    iget-object v2, v2, Lcom/android/systemui/media/MediaTimeoutListener;->stateCallback:Lkotlin/jvm/functions/Function2;

    if-eqz v2, :cond_16

    goto :goto_10

    :cond_16
    const/4 v2, 0x0

    :goto_10
    iget-object v4, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    invoke-interface {v2, v4, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    if-eqz v7, :cond_18

    if-nez v3, :cond_18

    return-void

    :cond_18
    iget-object v2, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->mediaData:Lcom/android/systemui/media/MediaData;

    iget-boolean v2, v2, Lcom/android/systemui/media/MediaData;->resumption:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->resumption:Ljava/lang/Boolean;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->isPlaying$1()Z

    move-result v2

    const-string v4, ", "

    if-nez v2, :cond_1b

    iget-object v5, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    iget-object v5, v5, Lcom/android/systemui/media/MediaTimeoutListener;->logger:Lcom/android/systemui/media/MediaTimeoutLogger;

    iget-object v7, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->resumption:Ljava/lang/Boolean;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v5, v5, Lcom/android/systemui/media/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v9, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v10, Lcom/android/systemui/media/MediaTimeoutLogger$logScheduleTimeout$2;->INSTANCE:Lcom/android/systemui/media/MediaTimeoutLogger$logScheduleTimeout$2;

    invoke-virtual {v5, v6, v9, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v10

    iput-object v7, v10, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-boolean v2, v10, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean v8, v10, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {v5, v10}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    iget-object v2, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->cancellation:Ljava/lang/Runnable;

    if-eqz v2, :cond_19

    if-nez v3, :cond_19

    iget-object v1, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    iget-object v1, v1, Lcom/android/systemui/media/MediaTimeoutListener;->logger:Lcom/android/systemui/media/MediaTimeoutLogger;

    iget-object v0, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/systemui/media/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v2, Lcom/android/systemui/media/MediaTimeoutLogger$logCancelIgnored$2;->INSTANCE:Lcom/android/systemui/media/MediaTimeoutLogger$logCancelIgnored$2;

    invoke-virtual {v1, v6, v9, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v2

    iput-object v0, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    return-void

    :cond_19
    iget-object v2, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PLAYBACK STATE CHANGED - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->resumption:Ljava/lang/Boolean;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->expireMediaTimeout(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->mediaData:Lcom/android/systemui/media/MediaData;

    iget-boolean v1, v1, Lcom/android/systemui/media/MediaData;->resumption:Z

    if-eqz v1, :cond_1a

    sget-wide v1, Lcom/android/systemui/media/MediaTimeoutListenerKt;->RESUME_MEDIA_TIMEOUT:J

    goto :goto_11

    :cond_1a
    sget-wide v1, Lcom/android/systemui/media/MediaTimeoutListenerKt;->PAUSED_MEDIA_TIMEOUT:J

    :goto_11
    iget-object v3, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    iget-object v3, v3, Lcom/android/systemui/media/MediaTimeoutListener;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v3}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->expiration:J

    iget-object v3, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    iget-object v3, v3, Lcom/android/systemui/media/MediaTimeoutListener;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v4, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;

    invoke-direct {v4, v0}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener$processState$1;-><init>(Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;)V

    invoke-interface {v3, v4, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->cancellation:Ljava/lang/Runnable;

    goto :goto_13

    :cond_1b
    iget-object v2, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "playback started - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->expireMediaTimeout(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->timedOut:Z

    if-eqz p2, :cond_1d

    iget-object v1, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    iget-object v1, v1, Lcom/android/systemui/media/MediaTimeoutListener;->timeoutCallback:Lkotlin/jvm/functions/Function2;

    if-eqz v1, :cond_1c

    move-object v4, v1

    goto :goto_12

    :cond_1c
    const/4 v4, 0x0

    :goto_12
    iget-object v0, v0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    :goto_13
    return-void
.end method

.method public final setMediaData(Lcom/android/systemui/media/MediaData;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->destroyed:Z

    iget-object v1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->mediaController:Landroid/media/session/MediaController;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->mediaData:Lcom/android/systemui/media/MediaData;

    iget-object p1, p1, Lcom/android/systemui/media/MediaData;->token:Landroid/media/session/MediaSession$Token;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/MediaTimeoutListener;

    iget-object v2, v2, Lcom/android/systemui/media/MediaTimeoutListener;->mediaControllerFactory:Lcom/android/systemui/media/MediaControllerFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/media/session/MediaController;

    iget-object v2, v2, Lcom/android/systemui/media/MediaControllerFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v2, p1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    iput-object v3, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->mediaController:Landroid/media/session/MediaController;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3, p0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    :goto_2
    iget-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->mediaController:Landroid/media/session/MediaController;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    :goto_3
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->processState(Landroid/media/session/PlaybackState;Z)V

    return-void
.end method
