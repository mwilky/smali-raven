.class public Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;
.super Ljava/lang/Object;
.source "AssistantFeedbackController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

.field private volatile mFeedbackEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# direct methods
.method public static synthetic $r8$lambda$O54LHg7J1AdF0hobe4IF2rY8zSs(Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->postToHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/systemui/util/DeviceConfigProxy;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController$1;-><init>(Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string p1, "systemui"

    const-string p2, "enable_nas_feedback"

    const/4 v1, 0x0

    invoke-virtual {p3, p1, p2, v1}, Lcom/android/systemui/util/DeviceConfigProxy;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->mFeedbackEnabled:Z

    new-instance p2, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/android/systemui/util/DeviceConfigProxy;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->mFeedbackEnabled:Z

    return p1
.end method

.method private postToHandler(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getFeedbackResources(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->getFeedbackStatus(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    new-instance p0, Landroid/util/Pair;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, Landroid/util/Pair;

    const p1, 0x10803a7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v0, 0x10405b5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    new-instance p0, Landroid/util/Pair;

    const p1, 0x10803aa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v0, 0x10405b6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_2
    new-instance p0, Landroid/util/Pair;

    const p1, 0x10803a9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v0, 0x10405b7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_3
    new-instance p0, Landroid/util/Pair;

    const p1, 0x10803a6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v0, 0x10405b4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getFeedbackStatus(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->isFeedbackEnabled()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ge p1, v3, :cond_1

    if-lt v1, v3, :cond_1

    return v2

    :cond_1
    if-lt p1, v3, :cond_2

    if-ge v1, v3, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    if-lt p1, v1, :cond_6

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getRankingAdjustment()I

    move-result v4

    if-ne v4, v2, :cond_3

    goto :goto_1

    :cond_3
    if-gt p1, v1, :cond_5

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getRankingAdjustment()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_0
    const/4 p0, 0x4

    return p0

    :cond_6
    :goto_1
    return v3
.end method

.method public getInlineDescriptionResource(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->getFeedbackStatus(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    sget p0, Lcom/android/systemui/R$string;->notification_channel_summary_automatic:I

    return p0

    :cond_0
    sget p0, Lcom/android/systemui/R$string;->notification_channel_summary_automatic_demoted:I

    return p0

    :cond_1
    sget p0, Lcom/android/systemui/R$string;->notification_channel_summary_automatic_promoted:I

    return p0

    :cond_2
    sget p0, Lcom/android/systemui/R$string;->notification_channel_summary_automatic_silenced:I

    return p0

    :cond_3
    sget p0, Lcom/android/systemui/R$string;->notification_channel_summary_automatic_alerted:I

    return p0
.end method

.method public isFeedbackEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->mFeedbackEnabled:Z

    return p0
.end method

.method public showFeedbackIndicator(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->getFeedbackStatus(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
