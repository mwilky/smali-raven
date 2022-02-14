.class public Lcom/android/server/people/data/PackageData;
.super Ljava/lang/Object;
.source "PackageData.java"


# instance fields
.field private final mConversationStore:Lcom/android/server/people/data/ConversationStore;

.field private final mEventStore:Lcom/android/server/people/data/EventStore;

.field private final mIsDefaultDialerPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsDefaultSmsAppPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageDataDir:Ljava/io/File;

.field private final mPackageName:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/concurrent/ScheduledExecutorService;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/people/data/PackageData;->mUserId:I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p6, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/people/data/PackageData;->mPackageDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Lcom/android/server/people/data/ConversationStore;

    invoke-direct {v1, v0, p5}, Lcom/android/server/people/data/ConversationStore;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v1, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    new-instance v1, Lcom/android/server/people/data/EventStore;

    invoke-direct {v1, v0, p5}, Lcom/android/server/people/data/EventStore;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v1, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    iput-object p3, p0, Lcom/android/server/people/data/PackageData;->mIsDefaultDialerPredicate:Ljava/util/function/Predicate;

    iput-object p4, p0, Lcom/android/server/people/data/PackageData;->mIsDefaultSmsAppPredicate:Ljava/util/function/Predicate;

    return-void
.end method

.method private loadFromDisk()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationStore;->loadConversationsFromDisk()V

    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventStore;->loadFromDisk()V

    return-void
.end method

.method static packagesDataFromDisk(ILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/concurrent/ScheduledExecutorService;Ljava/io/File;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/PackageData;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sget-object v1, Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/people/data/EventHistoryImpl$$ExternalSyntheticLambda0;

    move-object/from16 v9, p4

    invoke-virtual {v9, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    array-length v10, v1

    const/4 v2, 0x0

    move v11, v2

    :goto_0
    if-ge v11, v10, :cond_1

    aget-object v12, v1, v11

    new-instance v13, Lcom/android/server/people/data/PackageData;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v13

    move v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/people/data/PackageData;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/concurrent/ScheduledExecutorService;Ljava/io/File;)V

    invoke-direct {v2}, Lcom/android/server/people/data/PackageData;->loadFromDisk()V

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method deleteDataForConversation(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/ConversationStore;->deleteConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/server/people/data/EventStore;->deleteEventHistory(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/people/data/EventStore;->deleteEventHistory(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo;->getContactPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultDialer()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/android/server/people/data/EventStore;->deleteEventHistory(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultSmsApp()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/people/data/EventStore;->deleteEventHistory(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public forAllConversations(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/ConversationStore;->forAllConversations(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getClassLevelEventHistory(Ljava/lang/String;)Lcom/android/server/people/data/EventHistory;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/people/data/AggregateEventHistoryImpl;

    invoke-direct {v1}, Lcom/android/server/people/data/AggregateEventHistoryImpl;-><init>()V

    :goto_0
    return-object v1
.end method

.method public getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    return-object v0
.end method

.method getConversationStore()Lcom/android/server/people/data/ConversationStore;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    return-object v0
.end method

.method public getEventHistory(Ljava/lang/String;)Lcom/android/server/people/data/EventHistory;
    .locals 7

    new-instance v0, Lcom/android/server/people/data/AggregateEventHistoryImpl;

    invoke-direct {v0}, Lcom/android/server/people/data/AggregateEventHistoryImpl;-><init>()V

    iget-object v1, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v1, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/server/people/data/AggregateEventHistoryImpl;->addEventHistory(Lcom/android/server/people/data/EventHistory;)V

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/people/data/ConversationInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Lcom/android/server/people/data/AggregateEventHistoryImpl;->addEventHistory(Lcom/android/server/people/data/EventHistory;)V

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/people/data/ConversationInfo;->getContactPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultDialer()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v4}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v5}, Lcom/android/server/people/data/AggregateEventHistoryImpl;->addEventHistory(Lcom/android/server/people/data/EventHistory;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultSmsApp()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v4}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v0, v5}, Lcom/android/server/people/data/AggregateEventHistoryImpl;->addEventHistory(Lcom/android/server/people/data/EventHistory;)V

    :cond_5
    return-object v0
.end method

.method getEventStore()Lcom/android/server/people/data/EventStore;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/android/server/people/data/PackageData;->mUserId:I

    return v0
.end method

.method public isDefaultDialer()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mIsDefaultDialerPredicate:Ljava/util/function/Predicate;

    iget-object v1, p0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDefaultSmsApp()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mIsDefaultSmsAppPredicate:Ljava/util/function/Predicate;

    iget-object v1, p0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$pruneOrphanEvents$0$PackageData(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$pruneOrphanEvents$1$PackageData(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    new-instance v1, Landroid/content/LocusId;

    invoke-direct {v1, p1}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationStore;->getConversationByLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$pruneOrphanEvents$2$PackageData(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversationByPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$pruneOrphanEvents$3$PackageData(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/ConversationStore;->getConversationByPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventStore;->onDestroy()V

    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationStore;->onDestroy()V

    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mPackageDataDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    return-void
.end method

.method pruneOrphanEvents()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    new-instance v1, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/PackageData;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    new-instance v1, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/PackageData;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultDialer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v1, 0x2

    new-instance v2, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/people/data/PackageData;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->isDefaultSmsApp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v1, 0x3

    new-instance v2, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/people/data/PackageData$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/people/data/PackageData;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/EventStore;->pruneOrphanEventHistories(ILjava/util/function/Predicate;)V

    :cond_1
    return-void
.end method

.method saveToDisk()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationStore;->saveConversationsToDisk()V

    iget-object v0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventStore;->saveToDisk()V

    return-void
.end method
