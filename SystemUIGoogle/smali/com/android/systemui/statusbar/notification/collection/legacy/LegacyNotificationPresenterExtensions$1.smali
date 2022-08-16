.class public final Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions$1;
.super Ljava/lang/Object;
.source "LegacyNotificationPresenterExtensions.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 1

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mNotifPipelineFlags:Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;->checkLegacyPipelineEnabled()Z

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->mReadOnlyNotifications:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mShadeEmptiedCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mNotifRemovedByUserCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
