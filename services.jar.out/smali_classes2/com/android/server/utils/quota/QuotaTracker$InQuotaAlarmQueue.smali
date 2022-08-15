.class public Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;
.super Lcom/android/server/utils/AlarmQueue;
.source "QuotaTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/quota/QuotaTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InQuotaAlarmQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/utils/AlarmQueue<",
        "Lcom/android/server/utils/quota/Uptc;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/utils/quota/QuotaTracker;


# direct methods
.method public static synthetic $r8$lambda$EZuQsMskZDyDZLa_87vI1MsrZ6I(ILjava/lang/String;Lcom/android/server/utils/quota/Uptc;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;->lambda$removeAlarms$0(ILjava/lang/String;Lcom/android/server/utils/quota/Uptc;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KBQY6XP18mejmWyup2IX-Ahzr94(Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;Lcom/android/server/utils/quota/Uptc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;->lambda$processExpiredAlarms$1(Lcom/android/server/utils/quota/Uptc;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/quota/QuotaTracker;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 8

    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-static {}, Lcom/android/server/utils/quota/QuotaTracker;->-$$Nest$sfgetALARM_TAG_QUOTA_CHECK()Ljava/lang/String;

    move-result-object v3

    const-string v4, "In quota"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/utils/quota/QuotaTracker;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;-><init>(Lcom/android/server/utils/quota/QuotaTracker;Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method private synthetic lambda$processExpiredAlarms$1(Lcom/android/server/utils/quota/Uptc;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    iget v0, p1, Lcom/android/server/utils/quota/Uptc;->userId:I

    iget-object v1, p1, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/utils/quota/Uptc;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/utils/quota/QuotaTracker;->maybeUpdateQuotaStatus(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$removeAlarms$0(ILjava/lang/String;Lcom/android/server/utils/quota/Uptc;)Z
    .locals 1

    iget v0, p2, Lcom/android/server/utils/quota/Uptc;->userId:I

    if-ne p0, v0, :cond_0

    iget-object p0, p2, Lcom/android/server/utils/quota/Uptc;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public isForUser(Lcom/android/server/utils/quota/Uptc;I)Z
    .locals 0

    iget p0, p1, Lcom/android/server/utils/quota/Uptc;->userId:I

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic isForUser(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lcom/android/server/utils/quota/Uptc;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;->isForUser(Lcom/android/server/utils/quota/Uptc;I)Z

    move-result p0

    return p0
.end method

.method public processExpiredAlarms(Landroid/util/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/utils/quota/Uptc;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/quota/Uptc;

    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-virtual {v2}, Lcom/android/server/utils/quota/QuotaTracker;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;Lcom/android/server/utils/quota/Uptc;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAlarms(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/utils/AlarmQueue;->removeAlarmsIf(Ljava/util/function/Predicate;)V

    return-void
.end method
