.class Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
.super Lcom/android/server/notification/RankingReconsideration;
.source "ValidateNotificationPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ValidateNotificationPeople;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeopleRankingReconsideration"
.end annotation


# static fields
.field private static final LOOKUP_TIME:J = 0x3e8L


# instance fields
.field private mContactAffinity:F

.field private final mContext:Landroid/content/Context;

.field private final mPendingLookups:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneNumbers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecord:Lcom/android/server/notification/NotificationRecord;

.field final synthetic this$0:Lcom/android/server/notification/ValidateNotificationPeople;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/notification/RankingReconsideration;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPhoneNumbers:Landroid/util/ArraySet;

    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPendingLookups:Ljava/util/LinkedList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;Lcom/android/server/notification/ValidateNotificationPeople$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;)V

    return-void
.end method


# virtual methods
.method public applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v0

    iget v1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->setContactAffinity(F)V

    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "final affinity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ValidateNoPeople"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPhoneNumbers:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->mergePhoneNumbers(Landroid/util/ArraySet;)V

    return-void
.end method

.method public getContactAffinity()F
    .locals 1

    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    return v0
.end method

.method public setRecord(Lcom/android/server/notification/NotificationRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    return-void
.end method

.method public work()V
    .locals 11

    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ValidateNoPeople"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing: validation for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPendingLookups:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v5, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-static {v4, v5, v3}, Lcom/android/server/notification/ValidateNotificationPeople;->access$600(Lcom/android/server/notification/ValidateNotificationPeople;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {v7}, Lcom/android/server/notification/ValidateNotificationPeople;->access$300(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {v8}, Lcom/android/server/notification/ValidateNotificationPeople;->access$300(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-object v5, v8

    if-eqz v5, :cond_1

    invoke-static {v5}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->access$400(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v6, 0x1

    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v6, :cond_8

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string/jumbo v8, "tel"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "ValidateNoPeople"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checking telephone URI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v9, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/server/notification/ValidateNotificationPeople;->access$700(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v5

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v8, "mailto"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "ValidateNoPeople"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checking mailto URI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v9, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/server/notification/ValidateNotificationPeople;->access$800(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v5

    goto :goto_1

    :cond_5
    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "ValidateNoPeople"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checking lookup URI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v9, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v7}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContactsAndLookupNumbers(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v5

    goto :goto_1

    :cond_7
    new-instance v8, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    invoke-direct {v8}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;-><init>()V

    move-object v5, v8

    const-string/jumbo v8, "name"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "ValidateNoPeople"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unsupported URI "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    if-eqz v5, :cond_c

    if-nez v6, :cond_9

    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {v7}, Lcom/android/server/notification/ValidateNotificationPeople;->access$300(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;

    move-result-object v7

    monitor-enter v7

    :try_start_1
    iget-object v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {v8}, Lcom/android/server/notification/ValidateNotificationPeople;->access$300(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v7

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_9
    :goto_2
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "ValidateNoPeople"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "lookup contactAffinity is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    invoke-virtual {v5}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    invoke-virtual {v5}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getPhoneNumbers()Landroid/util/ArraySet;

    move-result-object v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPhoneNumbers:Landroid/util/ArraySet;

    if-nez v7, :cond_b

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    iput-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPhoneNumbers:Landroid/util/ArraySet;

    :cond_b
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPhoneNumbers:Landroid/util/ArraySet;

    invoke-virtual {v5}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getPhoneNumbers()Landroid/util/ArraySet;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_3

    :cond_c
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "ValidateNoPeople"

    const-string/jumbo v8, "lookupResult is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_3
    goto/16 :goto_0

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_e
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$000()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "ValidateNoPeople"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Validation finished in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {v2}, Lcom/android/server/notification/ValidateNotificationPeople;->access$900(Lcom/android/server/notification/ValidateNotificationPeople;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    iget v4, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez v5, :cond_10

    move v5, v6

    goto :goto_4

    :cond_10
    move v5, v7

    :goto_4
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v8

    if-nez v4, :cond_11

    goto :goto_5

    :cond_11
    move v6, v7

    :goto_5
    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/android/server/notification/NotificationUsageStats;->registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V

    :cond_12
    return-void
.end method
