.class public final Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "SilenceAlertsDisabled.kt"


# instance fields
.field public final columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

.field public final settingsChangeListener:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled$settingsChangeListener$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusSettings;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;->columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled$settingsChangeListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled$settingsChangeListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;->settingsChangeListener:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled$settingsChangeListener$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;->columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;->settingsChangeListener:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled$settingsChangeListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->registerColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;->columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object v1, v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v0}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result v0

    const-string v2, "columbus_silence_alerts"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;->columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;->settingsChangeListener:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled$settingsChangeListener$1;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
