.class public final Lcom/google/android/systemui/columbus/ColumbusServiceWrapper$settingsChangeListener$1;
.super Ljava/lang/Object;
.source "ColumbusServiceWrapper.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;-><init>(Lcom/google/android/systemui/columbus/ColumbusSettings;Ldagger/Lazy;Ldagger/Lazy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;

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

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;->access$startService(Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;)V

    :cond_0
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
