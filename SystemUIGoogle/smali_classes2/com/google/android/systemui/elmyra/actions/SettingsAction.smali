.class public Lcom/google/android/systemui/elmyra/actions/SettingsAction;
.super Lcom/google/android/systemui/elmyra/actions/ServiceAction;
.source "SettingsAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;
    }
.end annotation


# instance fields
.field private final mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

.field private final mSettingsPackageName:Ljava/lang/String;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/google/android/systemui/elmyra/actions/LaunchOpa;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->settings_app_package_name:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SettingsAction;->mSettingsPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/actions/SettingsAction;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/actions/SettingsAction;->mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/google/android/systemui/elmyra/actions/LaunchOpa;Lcom/google/android/systemui/elmyra/actions/SettingsAction$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/elmyra/actions/SettingsAction;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/google/android/systemui/elmyra/actions/LaunchOpa;)V

    return-void
.end method


# virtual methods
.method protected checkSupportedCaller()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SettingsAction;->mSettingsPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->checkSupportedCaller(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SettingsAction;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapseShade()V

    invoke-super {p0, p1}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    return-void
.end method

.method protected triggerAction()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SettingsAction;->mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SettingsAction;->mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;->launchOpa()V

    :cond_0
    return-void
.end method
