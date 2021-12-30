.class public Lcom/android/settings/widget/MainSwitchBarController;
.super Lcom/android/settings/widget/SwitchWidgetController;
.source "MainSwitchBarController.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# instance fields
.field private final mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/SettingsMainSwitchBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/SwitchWidgetController;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/MainSwitchBarController;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MainSwitchBarController;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/MainSwitchBar;->isChecked()Z

    move-result p0

    return p0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/SwitchWidgetController;->mListener:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;->onSwitchToggled(Z)Z

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MainSwitchBarController;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MainSwitchBarController;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MainSwitchBarController;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MainSwitchBarController;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setupView()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MainSwitchBarController;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/MainSwitchBar;->show()V

    return-void
.end method

.method public startListening()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/MainSwitchBarController;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public stopListening()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/MainSwitchBarController;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/MainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public teardownView()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MainSwitchBarController;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/MainSwitchBar;->hide()V

    return-void
.end method
