.class public Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;
.super Ljava/lang/Object;
.source "AdaptiveSleepBatterySaverPreferenceController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPowerManager:Landroid/os/PowerManager;

.field mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;


# direct methods
.method public static synthetic $r8$lambda$TufPkVL2-r9s7LUZxkQ2ITk0qLE(Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->lambda$initializePreference$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private initializePreference()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingslib/widget/BannerMessagePreference;

    iget-object v1, p0, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/BannerMessagePreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    const v1, 0x7f040236

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    const v1, 0x7f040841

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/BannerMessagePreference;->setPositiveButtonText(I)Lcom/android/settingslib/widget/BannerMessagePreference;

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    new-instance v1, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/BannerMessagePreference;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/BannerMessagePreference;

    :cond_0
    return-void
.end method

.method private synthetic lambda$initializePreference$0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->setPowerSaveModeEnabled(Z)Z

    return-void
.end method


# virtual methods
.method public addToScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->initializePreference()V

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->updateVisibility()V

    return-void
.end method

.method isPowerSaveMode()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    return p0
.end method

.method public updateVisibility()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->initializePreference()V

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    invoke-virtual {p0}, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->isPowerSaveMode()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
