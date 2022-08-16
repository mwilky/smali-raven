.class public final Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled$settingsChangeListener$1;
.super Ljava/lang/Object;
.source "SilenceAlertsDisabled.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAlertSilenceEnabledChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled$settingsChangeListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

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
