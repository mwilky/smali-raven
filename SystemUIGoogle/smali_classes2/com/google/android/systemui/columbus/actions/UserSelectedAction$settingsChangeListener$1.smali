.class public final Lcom/google/android/systemui/columbus/actions/UserSelectedAction$settingsChangeListener$1;
.super Ljava/lang/Object;
.source "UserSelectedAction.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/UserSelectedAction;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusSettings;Ljava/util/Map;Lcom/google/android/systemui/columbus/actions/TakeScreenshot;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/google/android/systemui/columbus/PowerManagerWrapper;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/actions/UserSelectedAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;

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
    .locals 3

    const-string v0, "selectedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;

    invoke-static {v0, p1}, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->access$getActionFromSetting(Lcom/google/android/systemui/columbus/actions/UserSelectedAction;Ljava/lang/String;)Lcom/google/android/systemui/columbus/actions/UserAction;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->access$getCurrentAction$p(Lcom/google/android/systemui/columbus/actions/UserSelectedAction;)Lcom/google/android/systemui/columbus/actions/UserAction;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->access$getCurrentAction$p(Lcom/google/android/systemui/columbus/actions/UserSelectedAction;)Lcom/google/android/systemui/columbus/actions/UserAction;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/systemui/columbus/actions/Action;->onGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;

    invoke-static {v0, p1}, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->access$setCurrentAction$p(Lcom/google/android/systemui/columbus/actions/UserSelectedAction;Lcom/google/android/systemui/columbus/actions/UserAction;)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->access$getCurrentAction$p(Lcom/google/android/systemui/columbus/actions/UserSelectedAction;)Lcom/google/android/systemui/columbus/actions/UserAction;

    move-result-object p1

    const-string v0, "User Action selected: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Columbus/SelectedAction"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->access$updateAvailable(Lcom/google/android/systemui/columbus/actions/UserSelectedAction;)V

    :cond_0
    return-void
.end method

.method public onSelectedAppChange(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener$DefaultImpls;->onSelectedAppChange(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;Ljava/lang/String;)V

    return-void
.end method

.method public onSelectedAppShortcutChange(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener$DefaultImpls;->onSelectedAppShortcutChange(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;Ljava/lang/String;)V

    return-void
.end method

.method public onUseApSensorChange(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener$DefaultImpls;->onUseApSensorChange(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;Z)V

    return-void
.end method
