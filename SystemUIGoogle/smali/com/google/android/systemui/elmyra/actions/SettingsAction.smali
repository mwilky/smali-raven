.class public final Lcom/google/android/systemui/elmyra/actions/SettingsAction;
.super Lcom/google/android/systemui/elmyra/actions/ServiceAction;
.source "SettingsAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;
    }
.end annotation


# instance fields
.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

.field public final mSettingsPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/google/android/systemui/elmyra/actions/LaunchOpa;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f130685

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SettingsAction;->mSettingsPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/actions/SettingsAction;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/actions/SettingsAction;->mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    return-void
.end method


# virtual methods
.method public final checkSupportedCaller()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SettingsAction;->mSettingsPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/Action;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SettingsAction;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->collapseShade()V

    invoke-super {p0, p1}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    return-void
.end method

.method public final triggerAction()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SettingsAction;->mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SettingsAction;->mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->launchOpa(J)V

    :cond_0
    return-void
.end method
