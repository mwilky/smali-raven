.class public final Lcom/android/systemui/ForegroundServiceNotificationListener$1;
.super Ljava/lang/Object;
.source "ForegroundServiceNotificationListener.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ForegroundServiceNotificationListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ForegroundServiceNotificationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$1;->this$0:Lcom/android/systemui/ForegroundServiceNotificationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$1;->this$0:Lcom/android/systemui/ForegroundServiceNotificationListener;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object p2, p0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    new-instance v1, Lcom/android/systemui/ForegroundServiceNotificationListener$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/ForegroundServiceNotificationListener$3;-><init>(Lcom/android/systemui/ForegroundServiceNotificationListener;Landroid/service/notification/StatusBarNotification;)V

    const/4 p0, 0x0

    invoke-virtual {p2, v0, v1, p0}, Lcom/android/systemui/ForegroundServiceController;->updateUserState(ILcom/android/systemui/ForegroundServiceController$UserStateUpdateCallback;Z)V

    return-void
.end method

.method public final onPendingEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$1;->this$0:Lcom/android/systemui/ForegroundServiceNotificationListener;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/ForegroundServiceNotificationListener;->updateNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    return-void
.end method

.method public final onPreEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$1;->this$0:Lcom/android/systemui/ForegroundServiceNotificationListener;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/ForegroundServiceNotificationListener;->updateNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    return-void
.end method
