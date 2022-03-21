.class public Lcom/google/android/settings/gamemode/GameModeSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "GameModeSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/settings/gamemode/GameModeSettings$1;

    const v1, 0x7f150075

    invoke-direct {v0, v1}, Lcom/google/android/settings/gamemode/GameModeSettings$1;-><init>(I)V

    sput-object v0, Lcom/google/android/settings/gamemode/GameModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "GameModeSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x744

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f150075

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-class v0, Lcom/google/android/settings/gamemode/GameModeController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/google/android/settings/gamemode/GameModeController;

    invoke-virtual {v0, p1}, Lcom/google/android/settings/gamemode/GameModeController;->init(Ljava/lang/String;)V

    const-class v0, Lcom/google/android/settings/gamemode/GameModeHeaderController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/google/android/settings/gamemode/GameModeHeaderController;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/settings/gamemode/GameModeHeaderController;->init(Lcom/google/android/settings/gamemode/GameModeSettings;Ljava/lang/String;)V

    return-void
.end method
