.class Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationRecordExtractorData"
.end annotation


# instance fields
.field mAllowBubble:Z

.field mChannel:Landroid/app/NotificationChannel;

.field mGroupKey:Ljava/lang/String;

.field mImportance:I

.field mIsBubble:Z

.field mIsConversation:Z

.field mOverridePeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPosition:I

.field mRankingScore:F

.field mShowBadge:Z

.field mSmartReplies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field mSnoozeCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field

.field mSuppressVisually:Ljava/lang/Integer;

.field mSystemSmartActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field mUserSentiment:Ljava/lang/Integer;

.field mVisibility:I


# direct methods
.method constructor <init>(IIZZZLandroid/app/NotificationChannel;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;IFZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZZ",
            "Landroid/app/NotificationChannel;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;IFZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mPosition:I

    move/from16 v2, p2

    iput v2, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mVisibility:I

    move/from16 v3, p3

    iput-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mShowBadge:Z

    move/from16 v4, p4

    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mAllowBubble:Z

    move/from16 v5, p5

    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mIsBubble:Z

    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mChannel:Landroid/app/NotificationChannel;

    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mGroupKey:Ljava/lang/String;

    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mOverridePeople:Ljava/util/ArrayList;

    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSnoozeCriteria:Ljava/util/ArrayList;

    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mUserSentiment:Ljava/lang/Integer;

    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSuppressVisually:Ljava/lang/Integer;

    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSystemSmartActions:Ljava/util/ArrayList;

    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSmartReplies:Ljava/util/ArrayList;

    move/from16 v14, p14

    iput v14, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mImportance:I

    move/from16 v15, p15

    iput v15, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mRankingScore:F

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mIsConversation:Z

    return-void
.end method


# virtual methods
.method hasDiffForLoggingLocked(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 2

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mPosition:I

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mGroupKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mOverridePeople:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSnoozeCriteria:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mUserSentiment:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSystemSmartActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSmartReplies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mImportance:I

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mRankingScore:F

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->rankingScoreMatches(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mIsConversation:Z

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v1

    if-eq v0, v1, :cond_0

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

.method hasDiffForRankingLocked(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 2

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mPosition:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mVisibility:I

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mShowBadge:Z

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mAllowBubble:Z

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mIsBubble:Z

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mGroupKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mOverridePeople:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSnoozeCriteria:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mUserSentiment:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSuppressVisually:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSystemSmartActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSmartReplies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mImportance:I

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v1

    if-eq v0, v1, :cond_0

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
