.class public final Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;
.super Ljava/lang/Object;
.source "NotificationRankingManager.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;-><init>(Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/NotificationFilter;Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-object/from16 v2, p2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v5}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v5

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v6}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v6

    invoke-static {v1}, Lcom/android/systemui/R$attr;->access$isColorizedForegroundService(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v7

    invoke-static {v2}, Lcom/android/systemui/R$attr;->access$isColorizedForegroundService(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v8

    invoke-static {v1}, Lcom/android/systemui/R$attr;->access$isImportantCall(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v9

    invoke-static {v2}, Lcom/android/systemui/R$attr;->access$isImportantCall(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v10

    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->peopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    invoke-interface {v11, v1}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;->getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v11

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->peopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    invoke-interface {v12, v2}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;->getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v12

    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-virtual {v13, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->isImportantMedia(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v13

    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-virtual {v14, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->isImportantMedia(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v14

    invoke-static {v1}, Lcom/android/systemui/R$attr;->access$isSystemMax(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v15

    move-object/from16 p1, v3

    invoke-static {v2}, Lcom/android/systemui/R$attr;->access$isSystemMax(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v3

    move-object/from16 p2, v4

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eqz v4, :cond_0

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v4, :cond_0

    move/from16 v4, v16

    goto :goto_0

    :cond_0
    move/from16 v4, v17

    :goto_0
    move/from16 v18, v5

    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v5, :cond_1

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v5, :cond_1

    move/from16 v5, v16

    goto :goto_1

    :cond_1
    move/from16 v5, v17

    :goto_1
    move/from16 v19, v6

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->highPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->isHighPriority(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result v6

    move/from16 v20, v6

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->highPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->isHighPriority(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result v6

    const/16 v21, -0x1

    if-eq v4, v5, :cond_2

    if-eqz v4, :cond_c

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->compare(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v16

    goto :goto_3

    :cond_3
    if-eq v7, v8, :cond_4

    if-eqz v7, :cond_c

    goto :goto_2

    :cond_4
    if-eq v9, v10, :cond_5

    if-eqz v9, :cond_c

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->isFilteringEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eq v11, v12, :cond_6

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->peopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    invoke-interface {v0, v11, v12}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;->compareTo(II)I

    move-result v16

    goto :goto_3

    :cond_6
    if-eq v13, v14, :cond_7

    if-eqz v13, :cond_c

    goto :goto_2

    :cond_7
    if-eq v15, v3, :cond_8

    if-eqz v15, :cond_c

    goto :goto_2

    :cond_8
    move/from16 v0, v20

    if-eq v0, v6, :cond_9

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    mul-int/lit8 v16, v0, -0x1

    goto :goto_3

    :cond_9
    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    sub-int v16, v0, v1

    goto :goto_3

    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_b

    :goto_2
    move/from16 v16, v21

    goto :goto_3

    :cond_b
    if-nez v0, :cond_c

    move/from16 v16, v17

    :cond_c
    :goto_3
    return v16
.end method
