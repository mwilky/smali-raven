.class public Lcom/android/settings/notification/zen/ZenModeSettings;
.super Lcom/android/settings/notification/zen/ZenModeSettingsBase;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Landroid/app/Application;Landroidx/fragment/app/Fragment;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/notification/zen/ZenModeSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Landroid/app/Application;Landroidx/fragment/app/Fragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/notification/zen/ZenModeSettings$1;

    const v1, 0x7f150135

    invoke-direct {v0, v1}, Lcom/android/settings/notification/zen/ZenModeSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Landroid/app/Application;Landroidx/fragment/app/Fragment;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Landroidx/fragment/app/FragmentManager;",
            "Landroid/app/Application;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeButtonPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/zen/ZenModeButtonPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/zen/ZenModePeoplePreferenceController;

    const-string/jumbo v2, "zen_mode_behavior_people"

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/notification/zen/ZenModePeoplePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;

    invoke-direct {v1, p0, p3, p4, p1}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/android/settings/notification/zen/ZenModeSoundVibrationPreferenceController;

    const-string/jumbo p4, "zen_sound_vibration_settings"

    invoke-direct {p3, p0, p1, p4}, Lcom/android/settings/notification/zen/ZenModeSoundVibrationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/android/settings/notification/zen/ZenModeAutomationPreferenceController;

    invoke-direct {p3, p0}, Lcom/android/settings/notification/zen/ZenModeAutomationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/android/settings/notification/zen/ZenModeDurationPreferenceController;

    invoke-direct {p3, p0, p1}, Lcom/android/settings/notification/zen/ZenModeDurationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsPreferenceController;

    invoke-direct {p3, p0, p1}, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/android/settings/notification/zen/ZenModeSettingsFooterPreferenceController;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/settings/notification/zen/ZenModeSettingsFooterPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v1, v2, v0, p0}, Lcom/android/settings/notification/zen/ZenModeSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Landroid/app/Application;Landroidx/fragment/app/Fragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    const p0, 0x7f040a58

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4c

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f150135

    return p0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onResume()V

    return-void
.end method
