.class public Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;
.super Ljava/lang/Object;
.source "NotificationGroupManagerLegacy.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;
.implements Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;,
        Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$EventBuffer;,
        Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;,
        Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$PostRecord;
    }
.end annotation


# instance fields
.field private mBarState:I

.field private final mBubblesOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventBuffer:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$EventBuffer;

.field private final mExpansionChangeListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager$OnGroupExpansionChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupChangeListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mIsUpdatingUnchangedGroup:Z

.field private mIsolatedEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private final mPeopleNotificationIdentifier:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Ldagger/Lazy;Ljava/util/Optional;Lcom/android/systemui/dump/DumpManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Lcom/android/systemui/dump/DumpManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mExpansionChangeListeners:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupChangeListeners:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$EventBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$EventBuffer;-><init>(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mEventBuffer:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$EventBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mBarState:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mPeopleNotificationIdentifier:Ldagger/Lazy;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mBubblesOptional:Ljava/util/Optional;

    invoke-virtual {p4, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupChangeListeners:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    return-object p0
.end method

.method private addToPostBatchHistory(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->postBatchHistory:Ljava/util/TreeSet;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$PostRecord;

    invoke-direct {v1, p2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$PostRecord;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->postBatchHistory:Ljava/util/TreeSet;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->trimPostBatchHistory(Ljava/util/TreeSet;)V

    :cond_1
    return-void
.end method

.method private getGroupKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isIsolated(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method private getGroupSummary(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :goto_0
    return-object p0
.end method

.method private getImportantConversations(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isImportantConversation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_1
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getNumberOfIsolatedChildren(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isIsolated(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getPriorityConversationAlertOverride(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isIsolated(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    return-object v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getImportantConversations(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_3

    :cond_3
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    return-object v0

    :cond_5
    new-instance v3, Ljava/util/TreeSet;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->postBatchHistory:Ljava/util/TreeSet;

    invoke-direct {v3, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->postBatchHistory:Ljava/util/TreeSet;

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_6
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->trimPostBatchHistory(Ljava/util/TreeSet;)V

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-wide/16 v4, -0x1

    invoke-virtual {v3}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v3, v0

    :cond_7
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$PostRecord;

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$PostRecord;->key:Ljava/lang/String;

    invoke-virtual {p0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_2

    :cond_8
    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$PostRecord;->key:Ljava/lang/String;

    invoke-virtual {p0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$PostRecord;->key:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v7, v7, Landroid/app/Notification;->when:J

    if-eqz v3, :cond_9

    cmp-long v9, v7, v4

    if-lez v9, :cond_7

    :cond_9
    move-object v3, v6

    move-wide v4, v7

    goto :goto_1

    :cond_a
    :goto_2
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    return-object v3

    :cond_b
    :goto_3
    return-object v0
.end method

.method private getTotalNumberOfChildren(Landroid/service/notification/StatusBarNotification;)I
    .locals 1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getNumberOfIsolatedChildren(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method private hasIsolatedChildren(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)Z
    .locals 0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getNumberOfIsolatedChildren(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isGroupChild(Ljava/lang/String;ZZ)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isIsolated(Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method private isGroupNotFullyVisible(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)Z
    .locals 0

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isGroupNotFullyVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isGroupSuppressed(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->suppressed:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isImportantConversation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mPeopleNotificationIdentifier:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;->getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isIsolated(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isOnlyChild(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getTotalNumberOfChildren(Landroid/service/notification/StatusBarNotification;)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isolateNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryAddedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateSuppression(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;->onGroupsChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onEntryAddedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setDebugThrowable(Ljava/lang/Throwable;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;

    invoke-interface {v4, v2, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;->onGroupCreated(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_4

    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getDebugThrowable()Ljava/lang/Throwable;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistent entries found with the same key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "existing removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " added removed"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "NotifGroupManager"

    invoke-static {v3, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->addToPostBatchHistory(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateSuppression(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)V

    goto :goto_4

    :cond_4
    iput-object p1, v2, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->addToPostBatchHistory(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->areChildrenExpanded()Z

    move-result p1

    iput-boolean p1, v2, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->expanded:Z

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateSuppression(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)V

    iget-object p1, v2, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryBecomingChild(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;->onGroupCreatedFromChildren(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)V

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method

.method private onEntryBecomingChild(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateIsolation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private onEntryRemovedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v1

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p2

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private onEntryRemovedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;ZZ)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3, p4}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isGroupChild(Ljava/lang/String;ZZ)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, v0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateSuppression(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)V

    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;

    invoke-interface {p1, v0, p2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;->onGroupRemoved(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;Z)V
    .locals 2

    iput-boolean p2, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->expanded:Z

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mExpansionChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager$OnGroupExpansionChangeListener;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager$OnGroupExpansionChangeListener;->onGroupExpansionChange(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setStatusBarState(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mBarState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->collapseGroups()V

    :cond_0
    return-void
.end method

.method private shouldIsolate(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isImportantConversation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->expanded:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isGroupNotFullyVisible(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    :goto_0
    return v2
.end method

.method private stopIsolatingNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryAddedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;->onGroupsChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private trimPostBatchHistory(Ljava/util/TreeSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$PostRecord;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/TreeSet;->size()I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$PostRecord;

    iget-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$PostRecord;->postTime:J

    const-wide/16 v2, 0x1388

    sub-long/2addr v0, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$PostRecord;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$PostRecord;->postTime:J

    cmp-long p0, v2, v0

    if-gez p0, :cond_1

    invoke-virtual {p1}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSuppression(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->alertOverride:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getPriorityConversationAlertOverride(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->alertOverride:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mBubblesOptional:Ljava/util/Optional;

    invoke-virtual {v7}, Ljava/util/Optional;->isPresent()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mBubblesOptional:Ljava/util/Optional;

    invoke-virtual {v7}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/bubbles/Bubbles;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v8, v5}, Lcom/android/wm/shell/bubbles/Bubbles;->isBubbleNotificationSuppressedFromShade(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->suppressed:Z

    iget-object v5, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v5, :cond_4

    iget-boolean v7, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->expanded:Z

    if-nez v7, :cond_4

    if-eq v3, v6, :cond_3

    if-nez v3, :cond_4

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->hasIsolatedChildren(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    move v3, v6

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    iput-boolean v3, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->suppressed:Z

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->alertOverride:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eq v0, v4, :cond_5

    move v4, v6

    goto :goto_2

    :cond_5
    move v4, v2

    :goto_2
    if-eq v1, v3, :cond_6

    move v2, v6

    :cond_6
    if-nez v4, :cond_7

    if-eqz v2, :cond_a

    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsUpdatingUnchangedGroup:Z

    if-nez v1, :cond_a

    if-eqz v4, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mEventBuffer:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$EventBuffer;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$EventBuffer;->notifyAlertOverrideChanged(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_8
    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->suppressed:Z

    invoke-interface {v1, p1, v2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;->onGroupSuppressionChanged(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;Z)V

    goto :goto_3

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mEventBuffer:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$EventBuffer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$EventBuffer;->notifyGroupsChanged()V

    :cond_a
    return-void
.end method


# virtual methods
.method public collapseGroups()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    iget-boolean v5, v4, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->expanded:Z

    if-eqz v5, :cond_0

    invoke-direct {p0, v4, v2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->setGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;Z)V

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateSuppression(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p1, "GroupManagerLegacy state:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  number of groups: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n    key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\n    isolated entries: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    const-string p3, "      "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getChildren(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public getGroupForSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;
    .locals 1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupSummary(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    return-object p0
.end method

.method public getLogicalChildren(Landroid/service/notification/StatusBarNotification;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getLogicalGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupSummary(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    return-object p0
.end method

.method public isChildInGroup(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-eqz p0, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->suppressed:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public isGroupChild(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isGroupChild(Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public isGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->expanded:Z

    return p0
.end method

.method public isGroupSummary(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isIsolated(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p0

    return p0
.end method

.method public isGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isGroupSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public isLogicalGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->expanded:Z

    return p0
.end method

.method public isOnlyChildInGroup(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isOnlyChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getLogicalGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isGroupSuppressed(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateIsolation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryAddedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/StatusBarNotification;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateSuppression(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)V

    :cond_0
    return-void
.end method

.method public onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v1

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;ZZ)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p3, p4}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isGroupChild(Ljava/lang/String;ZZ)Z

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v1, :cond_0

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsUpdatingUnchangedGroup:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;ZZ)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryAddedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsUpdatingUnchangedGroup:Z

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isIsolated(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateSuppression(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateSuppression(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)V

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    if-eqz v4, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryBecomingChild(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateIsolation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->setStatusBarState(I)V

    return-void
.end method

.method public registerGroupChangeListener(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerGroupExpansionChangeListener(Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager$OnGroupExpansionChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mExpansionChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->setGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;Z)V

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method

.method public toggleGroupExpansion(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->expanded:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->setGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;Z)V

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->expanded:Z

    return p0
.end method

.method public updateIsolation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mEventBuffer:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$EventBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$EventBuffer;->startBuffering()V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isIsolated(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->shouldIsolate(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isolateNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->stopIsolatingNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mEventBuffer:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$EventBuffer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$EventBuffer;->flushAndStopBuffering()V

    return-void
.end method

.method public updateSuppression(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateSuppression(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)V

    :cond_0
    return-void
.end method
