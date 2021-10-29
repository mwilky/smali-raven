.class public Lcom/google/android/systemui/elmyra/gates/WakeMode;
.super Lcom/google/android/systemui/elmyra/gates/PowerState;
.source "WakeMode.java"


# instance fields
.field private final mSettingsObserver:Lcom/google/android/systemui/elmyra/UserContentObserver;

.field private mWakeSettingEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$ASpt847HMZiqy--0FC-pyS4vipI(Lcom/google/android/systemui/elmyra/gates/WakeMode;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/WakeMode;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/PowerState;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/google/android/systemui/elmyra/UserContentObserver;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "assist_gesture_wake_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/elmyra/gates/WakeMode$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/elmyra/gates/WakeMode$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/gates/WakeMode;)V

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/systemui/elmyra/UserContentObserver;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/function/Consumer;Z)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/WakeMode;->mSettingsObserver:Lcom/google/android/systemui/elmyra/UserContentObserver;

    return-void
.end method

.method private isWakeSettingEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "assist_gesture_wake_enabled"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/gates/WakeMode;->updateWakeSetting()V

    return-void
.end method

.method private updateWakeSetting()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/gates/WakeMode;->isWakeSettingEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/WakeMode;->mWakeSettingEnabled:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/WakeMode;->mWakeSettingEnabled:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected isBlocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/WakeMode;->mWakeSettingEnabled:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/google/android/systemui/elmyra/gates/PowerState;->isBlocked()Z

    move-result p0

    :goto_0
    return p0
.end method

.method protected onActivate()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/gates/WakeMode;->isWakeSettingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/WakeMode;->mWakeSettingEnabled:Z

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/WakeMode;->mSettingsObserver:Lcom/google/android/systemui/elmyra/UserContentObserver;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/UserContentObserver;->activate()V

    return-void
.end method

.method protected onDeactivate()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/WakeMode;->mSettingsObserver:Lcom/google/android/systemui/elmyra/UserContentObserver;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/UserContentObserver;->deactivate()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [mWakeSettingEnabled -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/WakeMode;->mWakeSettingEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
