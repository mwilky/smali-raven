.class public Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;
.super Ljava/lang/Object;
.source "LegacyNotificationPresenterExtensions.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/render/NotifShadeEventSource;


# instance fields
.field private mEntryListenerAdded:Z

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mNotifRemovedByUserCallback:Ljava/lang/Runnable;

.field private mShadeEmptiedCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mShadeEmptiedCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mNotifRemovedByUserCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method private ensureEntryListenerAdded()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mEntryListenerAdded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mEntryListenerAdded:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    return-void
.end method


# virtual methods
.method public setNotifRemovedByUserCallback(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mNotifRemovedByUserCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mNotifRemovedByUserCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->ensureEntryListenerAdded()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "mNotifRemovedByUserCallback already set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setShadeEmptiedCallback(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mShadeEmptiedCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->mShadeEmptiedCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/collection/legacy/LegacyNotificationPresenterExtensions;->ensureEntryListenerAdded()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "mShadeEmptiedCallback already set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
