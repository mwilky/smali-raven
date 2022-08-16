.class public final Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;
.super Lcom/google/android/systemui/columbus/sensors/config/Adjustment;
.source "LowSensitivitySettingAdjustment.kt"


# instance fields
.field public final sensorConfiguration:Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;

.field public useLowSensitivity:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusSettings;Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/config/Adjustment;-><init>()V

    iput-object p3, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->sensorConfiguration:Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;

    new-instance p1, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment$settingsChangeListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment$settingsChangeListener$1;-><init>(Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;)V

    invoke-virtual {p2, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->registerColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;)V

    iget-object p1, p2, Lcom/google/android/systemui/columbus/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    iget-object p2, p2, Lcom/google/android/systemui/columbus/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {p2}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p2

    const/4 p3, 0x0

    const-string v0, "columbus_low_sensitivity"

    invoke-static {p1, v0, p3, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    :cond_0
    iput-boolean p3, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->useLowSensitivity:Z

    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/config/Adjustment;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public final adjustSensitivity(F)F
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->useLowSensitivity:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->sensorConfiguration:Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;

    iget p1, p0, Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;->lowSensitivityValue:F

    :cond_0
    return p1
.end method
