.class public final Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment$settingsChangeListener$1;
.super Ljava/lang/Object;
.source "LowSensitivitySettingAdjustment.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusSettings;Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;

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
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->access$getUseLowSensitivity$p(Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;

    invoke-static {v0, p1}, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->access$setUseLowSensitivity$p(Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;Z)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/config/Adjustment;->onSensitivityChanged()V

    :cond_0
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
