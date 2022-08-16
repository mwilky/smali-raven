.class public Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;
.super Ljava/lang/Object;
.source "AdaptiveSleepCameraStatePreferenceController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public static synthetic $r8$lambda$1PA2hg2pa7-GOLYmF7JVugwvpPM(Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->lambda$new$0(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZHs8JFH931KY7ntN6jCHRzSk-M0(Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->lambda$initializePreference$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    new-instance v1, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    iput-object p1, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private initializePreference()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingslib/widget/BannerMessagePreference;

    iget-object v1, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/BannerMessagePreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    const v1, 0x7f040320

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    const v1, 0x7f0401cd

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    const v1, 0x7f040222

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/BannerMessagePreference;->setPositiveButtonText(I)Lcom/android/settingslib/widget/BannerMessagePreference;

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    new-instance v1, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/BannerMessagePreference;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/BannerMessagePreference;

    :cond_0
    return-void
.end method

.method private synthetic lambda$initializePreference$1(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IIZ)V

    return-void
.end method

.method private synthetic lambda$new$0(IZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->updateVisibility()V

    return-void
.end method


# virtual methods
.method public addToScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->initializePreference()V

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->updateVisibility()V

    return-void
.end method

.method isCameraLocked()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result p0

    return p0
.end method

.method public updateVisibility()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->initializePreference()V

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    invoke-virtual {p0}, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->isCameraLocked()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
