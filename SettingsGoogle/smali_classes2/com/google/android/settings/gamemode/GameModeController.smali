.class public Lcom/google/android/settings/gamemode/GameModeController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "GameModeController.java"

# interfaces
.implements Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;


# static fields
.field static final GAME_MODE_BATTERY_PREFERENCE_KEY:Ljava/lang/String; = "game_mode_battery"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final GAME_MODE_PERFORMANCE_PREFERENCE_KEY:Ljava/lang/String; = "game_mode_performance"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final GAME_MODE_STANDARD_PREFERENCE_KEY:Ljava/lang/String; = "game_mode_standard"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "GameModeController"


# instance fields
.field mBatteryRadioButtonPref:Lcom/android/settingslib/widget/RadioButtonPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mGameManager:Landroid/app/GameManager;

.field private mPackageName:Ljava/lang/String;

.field mPerformanceRadioButtonPref:Lcom/android/settingslib/widget/RadioButtonPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mStandardRadioButtonPref:Lcom/android/settingslib/widget/RadioButtonPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-class p2, Landroid/app/GameManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/GameManager;

    iput-object p1, p0, Lcom/google/android/settings/gamemode/GameModeController;->mGameManager:Landroid/app/GameManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "game_mode_standard"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/RadioButtonPreference;

    iput-object v0, p0, Lcom/google/android/settings/gamemode/GameModeController;->mStandardRadioButtonPref:Lcom/android/settingslib/widget/RadioButtonPreference;

    const-string v0, "game_mode_performance"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/RadioButtonPreference;

    iput-object v0, p0, Lcom/google/android/settings/gamemode/GameModeController;->mPerformanceRadioButtonPref:Lcom/android/settingslib/widget/RadioButtonPreference;

    const-string v0, "game_mode_battery"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/google/android/settings/gamemode/GameModeController;->mBatteryRadioButtonPref:Lcom/android/settingslib/widget/RadioButtonPreference;

    iget-object p1, p0, Lcom/google/android/settings/gamemode/GameModeController;->mGameManager:Landroid/app/GameManager;

    iget-object v0, p0, Lcom/google/android/settings/gamemode/GameModeController;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/GameManager;->getAvailableGameModes(Ljava/lang/String;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/settings/gamemode/GameModeController;->mGameManager:Landroid/app/GameManager;

    iget-object v1, p0, Lcom/google/android/settings/gamemode/GameModeController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/GameManager;->getGameMode(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/settings/gamemode/GameModeController;->mStandardRadioButtonPref:Lcom/android/settingslib/widget/RadioButtonPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/google/android/settings/gamemode/GameModeController;->mPerformanceRadioButtonPref:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/google/android/settings/gamemode/GameModeController;->mBatteryRadioButtonPref:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    array-length v1, p1

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_5

    aget v6, p1, v3

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/google/android/settings/gamemode/GameModeController;->mPerformanceRadioButtonPref:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/google/android/settings/gamemode/GameModeController;->mPerformanceRadioButtonPref:Lcom/android/settingslib/widget/RadioButtonPreference;

    if-ne v0, v7, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    invoke-virtual {v6, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    :cond_1
    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/google/android/settings/gamemode/GameModeController;->mBatteryRadioButtonPref:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/google/android/settings/gamemode/GameModeController;->mBatteryRadioButtonPref:Lcom/android/settingslib/widget/RadioButtonPreference;

    if-ne v0, v7, :cond_2

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {v6, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    :cond_3
    if-nez v6, :cond_4

    move v4, v5

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-nez v4, :cond_7

    iget-object p1, p0, Lcom/google/android/settings/gamemode/GameModeController;->mStandardRadioButtonPref:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/google/android/settings/gamemode/GameModeController;->mStandardRadioButtonPref:Lcom/android/settingslib/widget/RadioButtonPreference;

    if-ne v0, v5, :cond_6

    move v2, v5

    :cond_6
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_7
    if-nez v0, :cond_8

    iget-object p1, p0, Lcom/google/android/settings/gamemode/GameModeController;->mStandardRadioButtonPref:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p1, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_8
    iget-object p1, p0, Lcom/google/android/settings/gamemode/GameModeController;->mStandardRadioButtonPref:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/settings/gamemode/GameModeController;->mPerformanceRadioButtonPref:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/settings/gamemode/GameModeController;->mBatteryRadioButtonPref:Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/gamemode/GameModeController;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onRadioButtonClicked(Lcom/android/settingslib/widget/RadioButtonPreference;)V
    .locals 6

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "game_mode_standard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/settings/gamemode/GameModeController;->mGameManager:Landroid/app/GameManager;

    iget-object v0, p0, Lcom/google/android/settings/gamemode/GameModeController;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/app/GameManager;->setGameMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v4, "game_mode_performance"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/settings/gamemode/GameModeController;->mGameManager:Landroid/app/GameManager;

    iget-object v0, p0, Lcom/google/android/settings/gamemode/GameModeController;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/app/GameManager;->setGameMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "game_mode_battery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/settings/gamemode/GameModeController;->mGameManager:Landroid/app/GameManager;

    iget-object v0, p0, Lcom/google/android/settings/gamemode/GameModeController;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/app/GameManager;->setGameMode(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/settings/gamemode/GameModeController;->mGameManager:Landroid/app/GameManager;

    iget-object v0, p0, Lcom/google/android/settings/gamemode/GameModeController;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/GameManager;->getGameMode(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/settings/gamemode/GameModeController;->mStandardRadioButtonPref:Lcom/android/settingslib/widget/RadioButtonPreference;

    const/4 v4, 0x0

    if-ne p1, v3, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    invoke-virtual {v0, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/settings/gamemode/GameModeController;->mPerformanceRadioButtonPref:Lcom/android/settingslib/widget/RadioButtonPreference;

    if-ne p1, v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/google/android/settings/gamemode/GameModeController;->mBatteryRadioButtonPref:Lcom/android/settingslib/widget/RadioButtonPreference;

    if-ne p1, v1, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
