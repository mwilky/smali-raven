.class public final Lcom/android/server/notification/NotificationHistoryFilter;
.super Ljava/lang/Object;
.source "NotificationHistoryFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationHistoryFilter$Builder;
    }
.end annotation


# instance fields
.field private mChannel:Ljava/lang/String;

.field private mNotificationCount:I

.field private mPackage:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NotificationHistoryFilter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationHistoryFilter;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/notification/NotificationHistoryFilter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/server/notification/NotificationHistoryFilter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mChannel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/server/notification/NotificationHistoryFilter;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    return p1
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxNotifications()I
    .locals 1

    iget v0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public isFiltering()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getChannel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

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

.method public matchesCountFilter(Landroid/app/NotificationHistory;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    move-result v0

    iget v1, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matchesPackageAndChannelFilter(Landroid/app/NotificationHistory$HistoricalNotification;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
