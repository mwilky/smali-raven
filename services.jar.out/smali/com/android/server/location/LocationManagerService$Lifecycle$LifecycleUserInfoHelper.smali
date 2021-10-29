.class Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;
.super Lcom/android/server/location/injector/SystemUserInfoHelper;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService$Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LifecycleUserInfoHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/injector/SystemUserInfoHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method onCurrentUserChanged(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->dispatchOnCurrentUserChanged(II)V

    return-void
.end method

.method onUserStarted(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->dispatchOnUserStarted(I)V

    return-void
.end method

.method onUserStopped(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->dispatchOnUserStopped(I)V

    return-void
.end method
