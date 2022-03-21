.class public Lcom/android/systemui/statusbar/phone/DozeParameters;
.super Ljava/lang/Object;
.source "DozeParameters.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/statusbar/DozeParameters;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/DozeParameters$Callback;
    }
.end annotation


# static fields
.field public static final FORCE_BLANKING:Z

.field public static final FORCE_NO_BLANKING:Z


# instance fields
.field private final mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

.field private final mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mControlScreenOffAnimation:Z

.field private mDozeAlwaysOn:Z

.field private final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field private mKeyguardShowing:Z

.field final mKeyguardVisibilityCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mResources:Landroid/content/res/Resources;

.field private final mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.force_no_blanking"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_NO_BLANKING:Z

    const-string v0, "debug.force_blanking"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_BLANKING:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/res/Resources;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Landroid/os/PowerManager;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeParameters$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeParameters$1;-><init>(Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mKeyguardVisibilityCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    const-string p1, "DozeParameters"

    invoke-virtual {p7, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mPowerManager:Landroid/os/PowerManager;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p4, p1}, Landroid/os/PowerManager;->setDozeAfterScreenOff(Z)V

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-virtual {p10, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const-string p1, "doze_always_on"

    const-string p2, "accessibility_display_inversion_enabled"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p0, p1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    invoke-interface {p11, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    invoke-interface {p12, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/DozeParameters;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mKeyguardShowing:Z

    return p1
.end method

.method private getBoolean(Ljava/lang/String;I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x0

    const p2, 0xea60

    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    return p0
.end method

.method private getPostureSpecificBool([IZI)Z
    .locals 0

    array-length p0, p1

    if-ge p3, p0, :cond_1

    aget p0, p1, p3

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move p2, p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported doze posture "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DozeParameters"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return p2
.end method

.method private singleTapUsesProx()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$bool;->doze_single_tap_uses_prox:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public brightnessNames()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$array;->doze_brightness_sensor_name_posture_mapping:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public canControlUnlockedScreenOff()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {v0}, Lcom/android/systemui/flags/FeatureFlags;->useNewLockscreenAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public doubleTapReportsTouchCoordinates()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$bool;->doze_double_tap_reports_touch_coordinates:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "getAlwaysOn(): "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "getDisplayStateSupported(): "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayStateSupported()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "getPulseDuration(): "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseDuration()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "getPulseInDuration(): "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseInDuration()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "getPulseInVisibleDuration(): "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseVisibleDuration()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "getPulseOutDuration(): "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOutDuration()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "getPulseOnSigMotion(): "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnSigMotion()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "getVibrateOnSigMotion(): "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getVibrateOnSigMotion()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "getVibrateOnPickup(): "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getVibrateOnPickup()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "getProxCheckBeforePulse(): "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getProxCheckBeforePulse()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "getPickupVibrationThreshold(): "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPickupVibrationThreshold()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "getSelectivelyRegisterSensorsUsingProx(): "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getSelectivelyRegisterSensorsUsingProx()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getAlwaysOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mDozeAlwaysOn:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isAodPowerSave()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDisplayNeedsBlanking()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_BLANKING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_NO_BLANKING:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const v0, 0x11100b2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getDisplayStateSupported()Z
    .locals 2

    sget v0, Lcom/android/systemui/R$bool;->doze_display_state_supported:I

    const-string v1, "doze.display.supported"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getDozeSuspendDisplayStateSupported()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$bool;->doze_suspend_display_state_supported:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public getPickupVibrationThreshold()I
    .locals 2

    sget v0, Lcom/android/systemui/R$integer;->doze_pickup_vibration_threshold:I

    const-string v1, "doze.pickup.vibration.threshold"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getProxCheckBeforePulse()Z
    .locals 2

    sget v0, Lcom/android/systemui/R$bool;->doze_proximity_check_before_pulse:I

    const-string v1, "doze.pulse.proxcheck"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getPulseDuration()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseInDuration()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseVisibleDuration()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOutDuration()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getPulseInDuration()I
    .locals 2

    sget v0, Lcom/android/systemui/R$integer;->doze_pulse_duration_in:I

    const-string v1, "doze.pulse.duration.in"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPulseOnSigMotion()Z
    .locals 2

    sget v0, Lcom/android/systemui/R$bool;->doze_pulse_on_significant_motion:I

    const-string v1, "doze.pulse.sigmotion"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getPulseOutDuration()I
    .locals 2

    sget v0, Lcom/android/systemui/R$integer;->doze_pulse_duration_out:I

    const-string v1, "doze.pulse.duration.out"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPulseVisibleDuration()I
    .locals 2

    sget v0, Lcom/android/systemui/R$integer;->doze_pulse_duration_visible:I

    const-string v1, "doze.pulse.duration.visible"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPulseVisibleDurationExtended()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseVisibleDuration()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getScreenBrightnessDoze()F
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const v0, 0x10e00bd

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public getSelectivelyRegisterSensorsUsingProx()Z
    .locals 2

    sget v0, Lcom/android/systemui/R$bool;->doze_selectively_register_prox:I

    const-string v1, "doze.prox.selectively_register"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getVibrateOnPickup()Z
    .locals 1

    const-string p0, "doze.vibrate.pickup"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getVibrateOnSigMotion()Z
    .locals 1

    const-string p0, "doze.vibrate.sigmotion"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getWallpaperAodDuration()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x9c4

    return-wide v0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-wide v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->wallpaperVisibilityDuration:J

    return-wide v0
.end method

.method public getWallpaperFadeOutDuration()J
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-wide v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->wallpaperFadeOutDuration:J

    return-wide v0
.end method

.method public isQuickPickupEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->quickPickupSensorEnabled(I)Z

    move-result p0

    return p0
.end method

.method public longPressUsesProx()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$bool;->doze_long_press_uses_prox:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->updateControlScreenOff()V

    return-void
.end method

.method public onStatePostChange()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->updateControlScreenOff()V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    const/4 v0, -0x2

    invoke-virtual {p2, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mDozeAlwaysOn:Z

    const-string p2, "doze_always_on"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->updateControlScreenOff()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mCallbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/DozeParameters$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters$Callback;->onAlwaysOnChange()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setControlScreenOffAnimation(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mPowerManager:Landroid/os/PowerManager;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->setDozeAfterScreenOff(Z)V

    return-void
.end method

.method public shouldControlScreenOff()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    return p0
.end method

.method public shouldControlUnlockedScreenOff()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->canControlUnlockedScreenOff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->shouldPlayUnlockedScreenOffAnimation()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public singleTapUsesProx(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$array;->doze_single_tap_uses_prox_posture_mapping:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->singleTapUsesProx()Z

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPostureSpecificBool([IZI)Z

    move-result p0

    return p0
.end method

.method public updateControlScreenOff()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlUnlockedScreenOff()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->setControlScreenOffAnimation(Z)V

    :cond_2
    return-void
.end method
