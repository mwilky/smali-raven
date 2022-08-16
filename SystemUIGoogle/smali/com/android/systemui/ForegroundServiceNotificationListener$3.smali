.class public final Lcom/android/systemui/ForegroundServiceNotificationListener$3;
.super Ljava/lang/Object;
.source "ForegroundServiceNotificationListener.java"

# interfaces
.implements Lcom/android/systemui/ForegroundServiceController$UserStateUpdateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ForegroundServiceNotificationListener;

.field public final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ForegroundServiceNotificationListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$3;->this$0:Lcom/android/systemui/ForegroundServiceNotificationListener;

    iput-object p2, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$3;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final updateUserState(Lcom/android/systemui/ForegroundServicesUserState;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$3;->this$0:Lcom/android/systemui/ForegroundServiceNotificationListener;

    iget-object v0, v0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    iget-object v1, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$3;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/ForegroundServiceController;->isDisclosureNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/systemui/ForegroundServicesUserState;->mRunning:[Ljava/lang/String;

    iput-wide v0, p1, Lcom/android/systemui/ForegroundServicesUserState;->mServiceStartTime:J

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$3;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$3;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p0

    iget-object v1, p1, Lcom/android/systemui/ForegroundServicesUserState;->mImportantNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    or-int/lit8 v1, v4, 0x0

    iget-object p1, p1, Lcom/android/systemui/ForegroundServicesUserState;->mStandardLayoutNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    or-int p0, v3, v1

    return p0
.end method
