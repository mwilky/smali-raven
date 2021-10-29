.class public final Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "SilenceAlertsDisabled.kt"


# instance fields
.field private final columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

.field private final settingsChangeListener:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled$settingsChangeListener$1;

.field private silenceAlertsEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusSettings;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columbusSettings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;Landroid/os/Handler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;->columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled$settingsChangeListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled$settingsChangeListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;->settingsChangeListener:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled$settingsChangeListener$1;

    return-void
.end method

.method public static final synthetic access$updateSilenceAlertsEnabled(Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;->updateSilenceAlertsEnabled(Z)V

    return-void
.end method

.method private final updateBlocking()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;->silenceAlertsEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method

.method private final updateSilenceAlertsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;->silenceAlertsEnabled:Z

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;->updateBlocking()V

    return-void
.end method


# virtual methods
.method protected onActivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;->columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;->settingsChangeListener:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled$settingsChangeListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->registerColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;->columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->silenceAlertsEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;->updateSilenceAlertsEnabled(Z)V

    return-void
.end method

.method protected onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;->columbusSettings:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;->settingsChangeListener:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled$settingsChangeListener$1;

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->unregisterColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;)V

    return-void
.end method
