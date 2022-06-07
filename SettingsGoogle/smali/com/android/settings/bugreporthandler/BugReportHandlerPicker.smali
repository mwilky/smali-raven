.class public Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "BugReportHandlerPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bugreporthandler/BugReportHandlerPicker$BugreportHandlerAppInfo;
    }
.end annotation


# instance fields
.field private mBugReportHandlerUtil:Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

.field private mFooter:Lcom/android/settingslib/widget/FooterPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    return-void
.end method

.method private getBugReportHandlerUtil()Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mBugReportHandlerUtil:Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->createDefaultBugReportHandlerUtil()Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->setBugReportHandlerUtil(Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mBugReportHandlerUtil:Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    return-object p0
.end method

.method private getDescription(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.shell"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p0, 0x7f0413bd

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x2

    if-ge p1, v1, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f0417a5

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p0, 0x7f040f08

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getHandlerApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getHandlerUser(Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BugReportHandlerPicker"

    const-string v0, "Failed to get handlerUser"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static getKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected addStaticPreferences(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    const v1, 0x7f020231

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object v0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    iget-object v0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    const v2, 0x7f040534

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public bindPreferenceExtra(Lcom/android/settingslib/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->bindPreferenceExtra(Lcom/android/settingslib/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setAppendixVisibility(I)V

    return-void
.end method

.method createDefaultAppInfo(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;)Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 7

    new-instance v6, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker$BugreportHandlerAppInfo;

    iget-object v0, p4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p3}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->getDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker$BugreportHandlerAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;Ljava/lang/String;)V

    return-object v6
.end method

.method createDefaultBugReportHandlerUtil()Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;
    .locals 0

    new-instance p0, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    invoke-direct {p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;-><init>()V

    return-object p0
.end method

.method protected getCandidates()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->getBugReportHandlerUtil()Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;->getValidBugReportHandlerInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/PackageItemInfo;

    invoke-virtual {p0, v0, v4, v5, v3}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->createDefaultAppInfo(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;)Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->getBugReportHandlerUtil()Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;->getCurrentBugReportHandlerAppAndUser(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object p0

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x710

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f15003f

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onAttach(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onSelectionPerformed(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onSelectionPerformed(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.settings.BUGREPORT_HANDLER_SETTINGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->getBugReportHandlerUtil()Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;->showInvalidChoiceToast(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCandidates()V

    :cond_2
    :goto_1
    return-void
.end method

.method setBugReportHandlerUtil(Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mBugReportHandlerUtil:Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->getBugReportHandlerUtil()Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->getHandlerApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->getHandlerUser(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;->setCurrentBugReportHandlerAppAndUser(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
