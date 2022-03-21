.class public interface abstract Lcom/android/systemui/statusbar/policy/dagger/StatusBarPolicyModule;
.super Ljava/lang/Object;
.source "StatusBarPolicyModule.java"


# direct methods
.method public static provideAccessPointControllerImpl(Landroid/os/UserManager;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory;)Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;-><init>(Landroid/os/UserManager;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->init()V

    return-object v0
.end method

.method public static providesDeviceStateRotationLockDefaults(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 1

    const v0, 0x1070077

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
