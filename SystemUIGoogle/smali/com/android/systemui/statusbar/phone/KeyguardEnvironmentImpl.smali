.class public final Lcom/android/systemui/statusbar/phone/KeyguardEnvironmentImpl;
.super Ljava/lang/Object;
.source "KeyguardEnvironmentImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;


# instance fields
.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardEnvironmentImpl;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardEnvironmentImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-void
.end method


# virtual methods
.method public final isDeviceProvisioned()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardEnvironmentImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result p0

    return p0
.end method

.method public final isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardEnvironmentImpl;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isCurrentProfile(I)Z

    move-result p0

    return p0
.end method
