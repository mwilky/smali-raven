.class public interface abstract Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;
.super Ljava/lang/Object;
.source "ColumbusSettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/ColumbusSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ColumbusSettingsChangeListener"
.end annotation


# virtual methods
.method public abstract onAlertSilenceEnabledChange(Z)V
.end method

.method public abstract onColumbusEnabledChange(Z)V
.end method

.method public abstract onLowSensitivityChange(Z)V
.end method

.method public abstract onSelectedActionChange(Ljava/lang/String;)V
.end method

.method public abstract onSelectedAppChange(Ljava/lang/String;)V
.end method

.method public abstract onSelectedAppShortcutChange(Ljava/lang/String;)V
.end method

.method public abstract onUseApSensorChange()V
.end method
