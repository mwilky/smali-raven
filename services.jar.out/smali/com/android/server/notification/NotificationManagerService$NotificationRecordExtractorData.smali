.class public Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationRecordExtractorData"
.end annotation


# instance fields
.field public mAllowBubble:Z

.field public mChannel:Landroid/app/NotificationChannel;

.field public mGroupKey:Ljava/lang/String;

.field public mImportance:I

.field public mIsBubble:Z

.field public mIsConversation:Z

.field public mOverridePeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPosition:I

.field public mRankingScore:F

.field public mShowBadge:Z

.field public mSmartReplies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public mSnoozeCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field

.field public mSuppressVisually:Ljava/lang/Integer;

.field public mSystemSmartActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field public mUserSentiment:Ljava/lang/Integer;

.field public mVisibility:I


# direct methods
.method public constructor <init>(IIZZZLandroid/app/NotificationChannel;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;IFZ)V
    .locals 2
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

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mPosition:I

    move v1, p2

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mVisibility:I

    move v1, p3

    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mShowBadge:Z

    move v1, p4

    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mAllowBubble:Z

    move v1, p5

    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mIsBubble:Z

    move-object v1, p6

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mChannel:Landroid/app/NotificationChannel;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mGroupKey:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mOverridePeople:Ljava/util/ArrayList;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSnoozeCriteria:Ljava/util/ArrayList;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mUserSentiment:Ljava/lang/Integer;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSuppressVisually:Ljava/lang/Integer;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSystemSmartActions:Ljava/util/ArrayList;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSmartReplies:Ljava/util/ArrayList;

    move/from16 v1, p14

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mImportance:I

    move/from16 v1, p15

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mRankingScore:F

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mIsConversation:Z

    return-void
.end method


# virtual methods
.method public hasDiffForLoggingLocked(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mPosition:I

    if-ne v0, p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mGroupKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mOverridePeople:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSnoozeCriteria:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mUserSentiment:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSystemSmartActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSmartReplies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mImportance:I

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mRankingScore:F

    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationRecord;->rankingScoreMatches(F)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mIsConversation:Z

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result p1

    if-eq p0, p1, :cond_0

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

.method public hasDiffForRankingLocked(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mPosition:I

    if-ne v0, p2, :cond_1

    iget p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mVisibility:I

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mShowBadge:Z

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v0

    if-ne p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mAllowBubble:Z

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v0

    if-ne p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mIsBubble:Z

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mGroupKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mOverridePeople:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSnoozeCriteria:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mUserSentiment:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSuppressVisually:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSystemSmartActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSmartReplies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mImportance:I

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p1

    if-eq p0, p1, :cond_0

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
