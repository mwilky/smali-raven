.class public Lcom/android/systemui/tuner/DemoModeFragment;
.super Landroidx/preference/PreferenceFragment;
.source "DemoModeFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/DemoModeFragment$Tracker;
    }
.end annotation


# static fields
.field private static final STATUS_ICONS:[Ljava/lang/String;


# instance fields
.field private mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field private mDemoModeTracker:Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

.field private mEnabledSwitch:Landroidx/preference/SwitchPreference;

.field private mOnSwitch:Landroidx/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "volume"

    const-string v1, "bluetooth"

    const-string v2, "location"

    const-string v3, "alarm"

    const-string v4, "zen"

    const-string v5, "sync"

    const-string v6, "tty"

    const-string v7, "eri"

    const-string v8, "mute"

    const-string v9, "speakerphone"

    const-string v10, "managed_profile"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/tuner/DemoModeFragment;->STATUS_ICONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/demomode/DemoModeController;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/tuner/DemoModeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->updateDemoModeEnabled()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/tuner/DemoModeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->updateDemoModeOn()V

    return-void
.end method

.method private startDemoMode()V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.demo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    invoke-virtual {v1}, Lcom/android/systemui/demomode/DemoModeController;->requestStartDemoMode()V

    const-string v1, "command"

    const-string v2, "clock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE_OR_CODENAME:Ljava/lang/String;

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "%02d00"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    rem-int/lit8 v3, v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "1010"

    :goto_0
    const-string v4, "hhmm"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "network"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "wifi"

    const-string v4, "show"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "mobile"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "sims"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "nosim"

    const-string v4, "false"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "level"

    const-string v5, "4"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "datatype"

    const-string v6, "lte"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v5, "fully"

    const-string v6, "true"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v5, "battery"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "100"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "plugged"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "status"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/android/systemui/tuner/DemoModeFragment;->STATUS_ICONS:[Ljava/lang/String;

    array-length v5, v3

    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v6, v3, v2

    const-string v7, "hide"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "notifications"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "visible"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private stopDemoMode()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    invoke-virtual {p0}, Lcom/android/systemui/demomode/DemoModeController;->requestFinishDemoMode()V

    return-void
.end method

.method private updateDemoModeEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeTracker:Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

    invoke-virtual {v1}, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isDemoModeAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    iget-object p0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeTracker:Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

    invoke-virtual {p0}, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isDemoModeAvailable()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private updateDemoModeOn()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    iget-object p0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeTracker:Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

    invoke-virtual {p0}, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isInDemoMode()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroidx/preference/SwitchPreference;

    invoke-direct {p2, p1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroidx/preference/SwitchPreference;

    sget v0, Lcom/android/systemui/R$string;->enable_demo_mode:I

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p2, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    new-instance p2, Landroidx/preference/SwitchPreference;

    invoke-direct {p2, p1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    sget v0, Lcom/android/systemui/R$string;->show_demo_mode:I

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p2, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p2, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    new-instance p2, Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/tuner/DemoModeFragment$Tracker;-><init>(Lcom/android/systemui/tuner/DemoModeFragment;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeTracker:Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

    invoke-virtual {p2}, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->startTracking()V

    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->updateDemoModeEnabled()V

    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->updateDemoModeOn()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeTracker:Lcom/android/systemui/tuner/DemoModeFragment$Tracker;

    invoke-virtual {v0}, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->stopTracking()V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0xe5

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->stopDemoMode()V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0xeb

    invoke-static {p1, v0, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    iget-object p0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    invoke-virtual {p0, p2}, Lcom/android/systemui/demomode/DemoModeController;->requestSetDemoModeAllowed(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0xec

    invoke-static {p1, v0, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->startDemoMode()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->stopDemoMode()V

    :goto_1
    return v1

    :cond_4
    return v2
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0xe5

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    return-void
.end method
