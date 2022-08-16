.class public final Lcom/android/systemui/media/MediaTimeoutListener;
.super Ljava/lang/Object;
.source "MediaTimeoutListener.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaDataManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaTimeoutListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaTimeoutListener.kt\ncom/android/systemui/media/MediaTimeoutListener\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,323:1\n1290#2,2:324\n1849#3,2:326\n*S KotlinDebug\n*F\n+ 1 MediaTimeoutListener.kt\ncom/android/systemui/media/MediaTimeoutListener\n*L\n292#1:324,2\n314#1:326,2\n*E\n"
.end annotation


# instance fields
.field public final logger:Lcom/android/systemui/media/MediaTimeoutLogger;

.field public final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mediaControllerFactory:Lcom/android/systemui/media/MediaControllerFactory;

.field public final mediaListeners:Ljava/util/LinkedHashMap;

.field public stateCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroid/media/session/PlaybackState;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public timeoutCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaControllerFactory;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/MediaTimeoutLogger;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener;->mediaControllerFactory:Lcom/android/systemui/media/MediaControllerFactory;

    iput-object p2, p0, Lcom/android/systemui/media/MediaTimeoutListener;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p3, p0, Lcom/android/systemui/media/MediaTimeoutListener;->logger:Lcom/android/systemui/media/MediaTimeoutLogger;

    iput-object p5, p0, Lcom/android/systemui/media/MediaTimeoutListener;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener;->mediaListeners:Ljava/util/LinkedHashMap;

    new-instance p1, Lcom/android/systemui/media/MediaTimeoutListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaTimeoutListener$1;-><init>(Lcom/android/systemui/media/MediaTimeoutListener;)V

    invoke-interface {p4, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method


# virtual methods
.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;ZIZ)V
    .locals 3

    sget-object p4, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    iget-object p5, p0, Lcom/android/systemui/media/MediaTimeoutListener;->mediaListeners:Ljava/util/LinkedHashMap;

    invoke-virtual {p5, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

    const-string p6, "MediaTimeout"

    if-nez p5, :cond_0

    const/4 p5, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, p5, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->destroyed:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener;->logger:Lcom/android/systemui/media/MediaTimeoutLogger;

    iget-object v0, v0, Lcom/android/systemui/media/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v1, Lcom/android/systemui/media/MediaTimeoutLogger$logReuseListener$2;->INSTANCE:Lcom/android/systemui/media/MediaTimeoutLogger$logReuseListener$2;

    invoke-virtual {v0, p6, p4, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v1

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    iget-object p5, p0, Lcom/android/systemui/media/MediaTimeoutListener;->mediaListeners:Ljava/util/LinkedHashMap;

    invoke-interface {p5, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    iget-object v2, p0, Lcom/android/systemui/media/MediaTimeoutListener;->logger:Lcom/android/systemui/media/MediaTimeoutLogger;

    if-eqz p5, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    iget-object v1, v2, Lcom/android/systemui/media/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v2, Lcom/android/systemui/media/MediaTimeoutLogger$logMigrateListener$2;->INSTANCE:Lcom/android/systemui/media/MediaTimeoutLogger$logMigrateListener$2;

    invoke-virtual {v1, p6, p4, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v2

    iput-object p2, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p1, v2, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput-boolean v0, v2, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    :cond_4
    check-cast p5, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

    if-nez p5, :cond_5

    iget-object p2, p0, Lcom/android/systemui/media/MediaTimeoutListener;->mediaListeners:Ljava/util/LinkedHashMap;

    new-instance p4, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

    invoke-direct {p4, p0, p1, p3}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;-><init>(Lcom/android/systemui/media/MediaTimeoutListener;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    invoke-virtual {p5}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->isPlaying$1()Z

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/media/MediaTimeoutListener;->logger:Lcom/android/systemui/media/MediaTimeoutLogger;

    iget-object v0, v0, Lcom/android/systemui/media/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v1, Lcom/android/systemui/media/MediaTimeoutLogger$logUpdateListener$2;->INSTANCE:Lcom/android/systemui/media/MediaTimeoutLogger$logUpdateListener$2;

    invoke-virtual {v0, p6, p4, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object p4

    iput-object p1, p4, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-boolean p2, p4, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v0, p4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    invoke-virtual {p5, p3}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->setMediaData(Lcom/android/systemui/media/MediaData;)V

    iput-object p1, p5, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    iget-object p3, p0, Lcom/android/systemui/media/MediaTimeoutListener;->mediaListeners:Ljava/util/LinkedHashMap;

    invoke-interface {p3, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p5}, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->isPlaying$1()Z

    move-result p3

    if-eq p2, p3, :cond_6

    iget-object p2, p0, Lcom/android/systemui/media/MediaTimeoutListener;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p3, Lcom/android/systemui/media/MediaTimeoutListener$onMediaDataLoaded$2$1;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/media/MediaTimeoutListener$onMediaDataLoaded$2$1;-><init>(Lcom/android/systemui/media/MediaTimeoutListener;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaTimeoutListener;->mediaListeners:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->mediaController:Landroid/media/session/MediaController;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->cancellation:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaTimeoutListener$PlaybackStateListener;->destroyed:Z

    :goto_2
    return-void
.end method

.method public final onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Z)V
    .locals 0

    return-void
.end method

.method public final onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method
