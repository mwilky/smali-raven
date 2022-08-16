.class public final Lcom/android/systemui/statusbar/notification/NotificationListController;
.super Ljava/lang/Object;
.source "NotificationListController.java"


# instance fields
.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final mDeviceProvisionedListener:Lcom/android/systemui/statusbar/notification/NotificationListController$2;

.field public final mEntryListener:Lcom/android/systemui/statusbar/notification/NotificationListController$1;

.field public final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field public final mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationListController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationListController$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationListController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationListController;->mEntryListener:Lcom/android/systemui/statusbar/notification/NotificationListController$1;

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationListController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationListController$2;-><init>(Lcom/android/systemui/statusbar/notification/NotificationListController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationListController;->mDeviceProvisionedListener:Lcom/android/systemui/statusbar/notification/NotificationListController$2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationListController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationListController;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationListController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-void
.end method
