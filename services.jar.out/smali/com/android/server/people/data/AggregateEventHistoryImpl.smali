.class Lcom/android/server/people/data/AggregateEventHistoryImpl;
.super Ljava/lang/Object;
.source "AggregateEventHistoryImpl.java"

# interfaces
.implements Lcom/android/server/people/data/EventHistory;


# instance fields
.field private final mEventHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/people/data/EventHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    return-void
.end method

.method private combineEventLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/Event;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/Event;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/Event;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/data/Event;

    invoke-virtual {v3}, Lcom/android/server/people/data/Event;->getTimestamp()J

    move-result-wide v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/people/data/Event;

    invoke-virtual {v5}, Lcom/android/server/people/data/Event;->getTimestamp()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/Event;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, 0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/Event;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p2, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method addEventHistory(Lcom/android/server/people/data/EventHistory;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getEventIndex(I)Lcom/android/server/people/data/EventIndex;
    .locals 4

    iget-object v0, p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/EventHistory;

    invoke-interface {v1, p1}, Lcom/android/server/people/data/EventHistory;->getEventIndex(I)Lcom/android/server/people/data/EventIndex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/people/data/EventIndex;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/server/people/data/EventIndex;->EMPTY:Lcom/android/server/people/data/EventIndex;

    return-object v0
.end method

.method public getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;
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

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/EventHistory;

    invoke-interface {v2, p1}, Lcom/android/server/people/data/EventHistory;->getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;

    move-result-object v3

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/people/data/EventIndex;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0, v3}, Lcom/android/server/people/data/EventIndex;->combine(Lcom/android/server/people/data/EventIndex;Lcom/android/server/people/data/EventIndex;)Lcom/android/server/people/data/EventIndex;

    move-result-object v0

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    move-object v1, v0

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/android/server/people/data/EventIndex;->EMPTY:Lcom/android/server/people/data/EventIndex;

    :goto_2
    return-object v1
.end method

.method public queryEvents(Ljava/util/Set;JJ)Ljava/util/List;
    .locals 10
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/EventHistory;

    invoke-interface {v2, p1}, Lcom/android/server/people/data/EventHistory;->getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/people/data/EventIndex;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v2

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Lcom/android/server/people/data/EventHistory;->queryEvents(Ljava/util/Set;JJ)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/people/data/AggregateEventHistoryImpl;->combineEventLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method
