.class public final Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;
.super Lcom/google/android/systemui/columbus/sensors/config/Adjustment;
.source "LowSensitivitySettingAdjustment.kt"


# instance fields
.field private final sensorConfiguration:Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;

.field private final settingsChangeListener:Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment$settingsChangeListener$1;

.field private useLowSensitivity:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusSettings;Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columbusSettings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sensorConfiguration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/sensors/config/Adjustment;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->sensorConfiguration:Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;

    new-instance p1, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment$settingsChangeListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment$settingsChangeListener$1;-><init>(Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->settingsChangeListener:Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment$settingsChangeListener$1;

    invoke-virtual {p2, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->registerColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;)V

    invoke-virtual {p2}, Lcom/google/android/systemui/columbus/ColumbusSettings;->useLowSensitivity()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->useLowSensitivity:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/config/Adjustment;->onSensitivityChanged()V

    return-void
.end method

.method public static final synthetic access$getUseLowSensitivity$p(Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->useLowSensitivity:Z

    return p0
.end method

.method public static final synthetic access$setUseLowSensitivity$p(Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->useLowSensitivity:Z

    return-void
.end method


# virtual methods
.method public adjustSensitivity(F)F
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->useLowSensitivity:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->sensorConfiguration:Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;

    iget p1, p0, Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;->lowSensitivityValue:F

    :cond_0
    return p1
.end method
