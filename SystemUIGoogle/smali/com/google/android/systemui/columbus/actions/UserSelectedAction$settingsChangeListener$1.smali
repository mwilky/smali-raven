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
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/actions/UserSelectedAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAlertSilenceEnabledChange(Z)V
    .locals 0

    return-void
.end method

.method public final onColumbusEnabledChange(Z)V
    .locals 0

    return-void
.end method

.method public final onLowSensitivityChange(Z)V
    .locals 0

    return-void
.end method

.method public final onSelectedActionChange(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;

    iget-object v1, v0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->userSelectedActions:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->takeScreenshot:Lcom/google/android/systemui/columbus/actions/TakeScreenshot;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/columbus/actions/UserAction;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->currentAction:Lcom/google/android/systemui/columbus/actions/UserAction;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->currentAction:Lcom/google/android/systemui/columbus/actions/UserAction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/systemui/columbus/actions/Action;->onGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;

    iput-object p1, v0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->currentAction:Lcom/google/android/systemui/columbus/actions/UserAction;

    const-string v0, "User Action selected: "

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Columbus/SelectedAction"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UserSelectedAction;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;->updateAvailable()V

    :cond_0
    return-void
.end method

.method public final onSelectedAppChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onSelectedAppShortcutChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onUseApSensorChange()V
    .locals 0

    return-void
.end method
