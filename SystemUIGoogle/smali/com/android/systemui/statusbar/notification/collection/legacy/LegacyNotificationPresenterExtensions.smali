.class public final Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;
.super Ljava/lang/Object;
.source "LegacyNotificationPresenterExtensions.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/render/NotifShadeEventSource;


# instance fields
.field public mEntryListenerAdded:Z

.field public final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field public mNotifRemovedByUserCallback:Ljava/lang/Runnable;

.field public mShadeEmptiedCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-void
.end method


# virtual methods
.method public final setNotifRemovedByUserCallback(Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda13;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mNotifRemovedByUserCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mNotifRemovedByUserCallback:Ljava/lang/Runnable;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mEntryListenerAdded:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mEntryListenerAdded:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "mNotifRemovedByUserCallback already set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setShadeEmptiedCallback(Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mShadeEmptiedCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mShadeEmptiedCallback:Ljava/lang/Runnable;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mEntryListenerAdded:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mEntryListenerAdded:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "mShadeEmptiedCallback already set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
