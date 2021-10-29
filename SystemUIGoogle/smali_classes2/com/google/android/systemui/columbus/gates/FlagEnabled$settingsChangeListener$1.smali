.class public final Lcom/google/android/systemui/columbus/gates/FlagEnabled$settingsChangeListener$1;
.super Ljava/lang/Object;
.source "FlagEnabled.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/FlagEnabled;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusSettings;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/gates/FlagEnabled;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/gates/FlagEnabled;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/FlagEnabled$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/FlagEnabled;

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
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/FlagEnabled$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/FlagEnabled;

    invoke-static {v0, p1}, Lcom/google/android/systemui/columbus/gates/FlagEnabled;->access$setColumbusEnabled$p(Lcom/google/android/systemui/columbus/gates/FlagEnabled;Z)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/FlagEnabled$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/FlagEnabled;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/FlagEnabled;->access$updateBlocking(Lcom/google/android/systemui/columbus/gates/FlagEnabled;)V

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
