.class public Lcom/android/settings/datetime/DateTimeSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;
.implements Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    const v1, 0x7f15005a

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/datetime/DateTimeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "firstRun"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    invoke-direct {v2, v0, p0, v1}, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;Z)V

    new-instance v3, Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-direct {v3, v0, p0}, Lcom/android/settings/datetime/AutoTimePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V

    new-instance v4, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;

    invoke-direct {v4, v0, p0}, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/settings/datetime/TimeFormatPreferenceController;

    invoke-direct {v4, v0, p0, v1}, Lcom/android/settings/datetime/TimeFormatPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;Z)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/datetime/TimeZonePreferenceController;

    invoke-direct {v1, v0, v2}, Lcom/android/settings/datetime/TimeZonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/AutoTimeZonePreferenceController;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/datetime/TimePreferenceController;

    invoke-direct {v1, v0, p0, v3}, Lcom/android/settings/datetime/TimePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;Lcom/android/settings/datetime/AutoTimePreferenceController;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/datetime/DatePreferenceController;

    invoke-direct {v1, v0, p0, v3}, Lcom/android/settings/datetime/DatePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;Lcom/android/settings/datetime/AutoTimePreferenceController;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x260

    return p0

    :cond_1
    const/16 p0, 0x25f

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DateTimeSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x26

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f15005a

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/datetime/TimeChangeListenerMixin;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/datetime/TimeChangeListenerMixin;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const-class p1, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->setFragment(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-class p1, Lcom/android/settings/datetime/TimePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/TimePreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/datetime/TimePreferenceController;->buildTimePicker(Landroid/app/Activity;)Landroid/app/TimePickerDialog;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const-class p1, Lcom/android/settings/datetime/DatePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/DatePreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/datetime/DatePreferenceController;->buildDatePicker(Landroid/app/Activity;)Landroid/app/DatePickerDialog;

    move-result-object p0

    return-object p0
.end method

.method public showDatePicker()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method public showTimePicker()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method
