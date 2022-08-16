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
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;

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
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->useLowSensitivity:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->useLowSensitivity:Z

    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/config/Adjustment;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSelectedActionChange(Ljava/lang/String;)V
    .locals 0

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
