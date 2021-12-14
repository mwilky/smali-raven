.class public final Lcom/google/android/systemui/columbus/actions/LaunchApp$settingsListener$1;
.super Ljava/lang/Object;
.source "LaunchApp.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/LaunchApp;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherApps;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/app/IActivityManager;Landroid/os/UserManager;Lcom/google/android/systemui/columbus/ColumbusSettings;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/settings/UserTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$settingsListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlertSilenceEnabledChange(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener$DefaultImpls;->onAlertSilenceEnabledChange(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;Z)V

    return-void
.end method

.method public onColumbusEnabledChange(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener$DefaultImpls;->onColumbusEnabledChange(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;Z)V

    return-void
.end method

.method public onLowSensitivityChange(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener$DefaultImpls;->onLowSensitivityChange(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;Z)V

    return-void
.end method

.method public onSelectedActionChange(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener$DefaultImpls;->onSelectedActionChange(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;Ljava/lang/String;)V

    return-void
.end method

.method public onSelectedAppChange(Ljava/lang/String;)V
    .locals 1

    const-string v0, "selectedApp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$settingsListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$setCurrentApp$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;Landroid/content/ComponentName;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$settingsListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$updateAvailable(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    return-void
.end method

.method public onSelectedAppShortcutChange(Ljava/lang/String;)V
    .locals 1

    const-string v0, "selectedShortcut"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$settingsListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static {v0, p1}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$setCurrentShortcut$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$settingsListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$updateAvailable(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    return-void
.end method

.method public onUseApSensorChange(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener$DefaultImpls;->onUseApSensorChange(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;Z)V

    return-void
.end method
