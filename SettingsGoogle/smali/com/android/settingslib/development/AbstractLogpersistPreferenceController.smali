.class public abstract Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "AbstractLogpersistPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/ConfirmationDialogController;


# static fields
.field static final ACTUAL_LOGPERSIST_PROPERTY:Ljava/lang/String; = "logd.logpersistd"

.field static final ACTUAL_LOGPERSIST_PROPERTY_BUFFER:Ljava/lang/String; = "logd.logpersistd.buffer"

.field static final SELECT_LOGPERSIST_PROPERTY_SERVICE:Ljava/lang/String; = "logcatd"


# instance fields
.field private mLogpersist:Landroidx/preference/ListPreference;

.field private mLogpersistCleared:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$monLogdSizeSettingUpdate(Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->onLogdSizeSettingUpdate(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController$1;-><init>(Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;)V

    iput-object p1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private onLogdSizeSettingUpdate(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_2

    const-string v0, "logd.logpersistd.enable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "32768"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->writeLogpersistOption(Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroidx/preference/ListPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "select_logpersist"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroidx/preference/ListPreference;

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "select_logpersist"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    const-string/jumbo p0, "ro.debuggable"

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.settingslib.development.AbstractLogdSizePreferenceController.LOGD_SIZE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroidx/preference/ListPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, v1}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->writeLogpersistOption(Ljava/lang/Object;Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method protected setLogpersistOff(Z)V
    .locals 5

    const-string v0, "persist.logd.logpersistd.buffer"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "logd.logpersistd.buffer"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "persist.logd.logpersistd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "stop"

    :goto_0
    const-string v2, "logd.logpersistd"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->updateLogpersistValues()V

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    :goto_1
    const/4 p1, 0x3

    if-ge p0, p1, :cond_3

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public updateLogpersistValues()V
    .locals 10

    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroidx/preference/ListPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "logd.logpersistd"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    const-string v2, "logd.logpersistd.buffer"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "all"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move-object v2, v3

    :cond_3
    const-string v4, "logcatd"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_7

    const-string v1, "kernel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v1, 0x3

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "radio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "security"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x4

    const-string v6, "main"

    const-string v7, "events"

    const-string/jumbo v8, "system"

    const-string v9, "crash"

    filled-new-array {v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v6

    move v7, v4

    :goto_0
    if-ge v7, v3, :cond_8

    aget-object v8, v6, v7

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    move v1, v5

    goto :goto_2

    :cond_7
    move v1, v4

    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroidx/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/android/settingslib/R$array;->select_logpersist_values:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroidx/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/android/settingslib/R$array;->select_logpersist_summaries:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_9

    iput-boolean v4, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersistCleared:Z

    goto :goto_3

    :cond_9
    iget-boolean v1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersistCleared:Z

    if-nez v1, :cond_a

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    iput-boolean v5, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersistCleared:Z

    :cond_a
    :goto_3
    return-void
.end method

.method public writeLogpersistOption(Ljava/lang/Object;Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroidx/preference/ListPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "persist.log.tag"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v2, "Settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    move p2, v1

    :cond_1
    const-string v0, "logd.logpersistd"

    const-string v2, "logcatd"

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const-string p2, "logd.logpersistd.buffer"

    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->setLogpersistOff(Z)V

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "persist.logd.logpersistd.buffer"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "persist.logd.logpersistd"

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    :goto_0
    const/4 p1, 0x3

    if-ge v3, p1, :cond_5

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const-wide/16 p1, 0x64

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->updateLogpersistValues()V

    return-void

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    iput-boolean v3, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersistCleared:Z

    goto :goto_3

    :cond_7
    iget-boolean p1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersistCleared:Z

    if-nez p1, :cond_8

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroidx/preference/ListPreference;

    invoke-interface {p0, p1}, Lcom/android/settingslib/core/ConfirmationDialogController;->showConfirmationDialog(Landroidx/preference/Preference;)V

    return-void

    :cond_8
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->setLogpersistOff(Z)V

    return-void
.end method
