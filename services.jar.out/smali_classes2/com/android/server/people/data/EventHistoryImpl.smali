.class Lcom/android/server/people/data/EventHistoryImpl;
.super Ljava/lang/Object;
.source "EventHistoryImpl.java"

# interfaces
.implements Lcom/android/server/people/data/EventHistory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;,
        Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;,
        Lcom/android/server/people/data/EventHistoryImpl$Injector;
    }
.end annotation


# static fields
.field private static final EVENTS_DIR:Ljava/lang/String; = "events"

.field private static final INDEXES_DIR:Ljava/lang/String; = "indexes"

.field private static final MAX_EVENTS_AGE:J = 0xdbba00L

.field private static final PRUNE_OLD_EVENTS_DELAY:J = 0xdbba0L


# instance fields
.field private final mEventIndexArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/people/data/EventIndex;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;

.field private final mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

.field private final mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

.field private mLastPruneTime:J

.field private final mRecentEvents:Lcom/android/server/people/data/EventList;

.field private final mRootDir:Ljava/io/File;

.field private final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Lcom/android/server/people/data/EventHistoryImpl$Injector;Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/people/data/EventList;

    invoke-direct {v0}, Lcom/android/server/people/data/EventList;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    iput-object p1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    iput-object p3, p0, Lcom/android/server/people/data/EventHistoryImpl;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Lcom/android/server/people/data/EventHistoryImpl$Injector;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mLastPruneTime:J

    iput-object p2, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRootDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "events"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    invoke-direct {v1, v0, p3}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    new-instance v1, Ljava/io/File;

    const-string v2, "indexes"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;

    invoke-direct {v2, v1, p3}, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v2, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    new-instance v0, Lcom/android/server/people/data/EventHistoryImpl$Injector;

    invoke-direct {v0}, Lcom/android/server/people/data/EventHistoryImpl$Injector;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/people/data/EventHistoryImpl;-><init>(Lcom/android/server/people/data/EventHistoryImpl$Injector;Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method private declared-synchronized addEventInMemory(Lcom/android/server/people/data/Event;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/people/data/Event;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/EventIndex;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    invoke-virtual {v1}, Lcom/android/server/people/data/EventHistoryImpl$Injector;->createEventIndex()Lcom/android/server/people/data/EventIndex;

    move-result-object v1

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/people/data/Event;->getType()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/people/data/Event;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/EventIndex;->addEvent(J)V

    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    invoke-virtual {v1, p1}, Lcom/android/server/people/data/EventList;->add(Lcom/android/server/people/data/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static eventHistoriesImplFromDisk(Lcom/android/server/people/data/EventHistoryImpl$Injector;Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/people/data/EventHistoryImpl$Injector;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/EventHistoryImpl;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sget-object v1, Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    sget-object v5, Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda1;

    invoke-virtual {v4, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_1

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    new-instance v6, Lcom/android/server/people/data/EventHistoryImpl;

    invoke-direct {v6, p0, v4, p2}, Lcom/android/server/people/data/EventHistoryImpl;-><init>(Lcom/android/server/people/data/EventHistoryImpl$Injector;Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-virtual {v6}, Lcom/android/server/people/data/EventHistoryImpl;->loadFromDisk()V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static eventHistoriesImplFromDisk(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/EventHistoryImpl;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/people/data/EventHistoryImpl$Injector;

    invoke-direct {v0}, Lcom/android/server/people/data/EventHistoryImpl$Injector;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/android/server/people/data/EventHistoryImpl;->eventHistoriesImplFromDisk(Lcom/android/server/people/data/EventHistoryImpl$Injector;Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$eventHistoriesImplFromDisk$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "events"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "indexes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method declared-synchronized addEvent(Lcom/android/server/people/data/Event;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/people/data/EventHistoryImpl;->pruneOldEvents()V

    invoke-direct {p0, p1}, Lcom/android/server/people/data/EventHistoryImpl;->addEventInMemory(Lcom/android/server/people/data/Event;)V

    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;->scheduleEventsSave(Lcom/android/server/people/data/EventList;)V

    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;

    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;->scheduleIndexesSave(Landroid/util/SparseArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getEventIndex(I)Lcom/android/server/people/data/EventIndex;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/EventIndex;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/people/data/EventIndex;

    invoke-direct {v1, v0}, Lcom/android/server/people/data/EventIndex;-><init>(Lcom/android/server/people/data/EventIndex;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    invoke-virtual {v1}, Lcom/android/server/people/data/EventHistoryImpl$Injector;->createEventIndex()Lcom/android/server/people/data/EventIndex;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/people/data/EventIndex;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventHistoryImpl$Injector;->createEventIndex()Lcom/android/server/people/data/EventIndex;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/data/EventIndex;

    if-eqz v3, :cond_0

    invoke-static {v0, v3}, Lcom/android/server/people/data/EventIndex;->combine(Lcom/android/server/people/data/EventIndex;Lcom/android/server/people/data/EventIndex;)Lcom/android/server/people/data/EventIndex;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic lambda$loadFromDisk$1$EventHistoryImpl()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;->loadRecentEventsFromDisk()Lcom/android/server/people/data/EventList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    invoke-virtual {v1}, Lcom/android/server/people/data/EventHistoryImpl$Injector;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xdbba00

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/EventList;->removeOldEvents(J)V

    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventList;->getAllEvents()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/people/data/EventList;->addAll(Ljava/util/List;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;

    invoke-virtual {v1}, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;->loadIndexesFromDisk()Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/people/data/EventIndex;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized loadFromDisk()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/people/data/EventHistoryImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onDestroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventList;->clear()V

    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;->deleteRecentEventsFile()V

    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;->deleteIndexesFile()V

    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRootDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized pruneOldEvents()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mInjector:Lcom/android/server/people/data/EventHistoryImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventHistoryImpl$Injector;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/people/data/EventHistoryImpl;->mLastPruneTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xdbba0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    const-wide/32 v3, 0xdbba00

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/people/data/EventList;->removeOldEvents(J)V

    iput-wide v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mLastPruneTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryEvents(Ljava/util/Set;JJ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;JJ)",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/Event;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/people/data/EventList;->queryEvents(Ljava/util/Set;JJ)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized saveToDisk()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventsProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;

    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mRecentEvents:Lcom/android/server/people/data/EventList;

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;->saveEventsImmediately(Lcom/android/server/people/data/EventList;)V

    iget-object v0, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexesProtoDiskReadWriter:Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;

    iget-object v1, p0, Lcom/android/server/people/data/EventHistoryImpl;->mEventIndexArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;->saveIndexesImmediately(Landroid/util/SparseArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
