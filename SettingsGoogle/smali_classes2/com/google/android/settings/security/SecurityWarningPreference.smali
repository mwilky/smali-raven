.class public Lcom/google/android/settings/security/SecurityWarningPreference;
.super Lcom/android/settingslib/widget/BannerMessagePreference;
.source "SecurityWarningPreference.java"


# instance fields
.field private mSecurityContentManager:Lcom/google/android/settings/security/SecurityContentManager;


# direct methods
.method public static synthetic $r8$lambda$XAZfkSpiSUCiJbJ9_6kcg_Ss6UY(Lcom/google/android/settings/security/SecurityWarningPreference;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/security/SecurityWarningPreference;->lambda$setSecurityWarning$0(Landroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pHTfKmjJEXbSCQRi3oGqKKhu9Bo(Lcom/google/android/settings/security/SecurityWarningPreference;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/security/SecurityWarningPreference;->lambda$setSecurityWarning$3(Landroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t10sffU6AhTmYie_UBs0Bfv0us0(Lcom/google/android/settings/security/SecurityWarningPreference;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/security/SecurityWarningPreference;->lambda$setSecurityWarning$1(Landroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yiBrDCXuGutEt3Vk03Rr9OTpSW0(Landroid/os/Bundle;Lcom/android/settings/SettingsPreferenceFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/settings/security/SecurityWarningPreference;->lambda$setSecurityWarning$2(Landroid/os/Bundle;Lcom/android/settings/SettingsPreferenceFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/BannerMessagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Lcom/google/android/settings/security/SecurityContentManager;->getInstance(Landroid/content/Context;)Lcom/google/android/settings/security/SecurityContentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/security/SecurityWarningPreference;->mSecurityContentManager:Lcom/google/android/settings/security/SecurityContentManager;

    return-void
.end method

.method private synthetic lambda$setSecurityWarning$0(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarningPreference;->mSecurityContentManager:Lcom/google/android/settings/security/SecurityContentManager;

    invoke-virtual {p0, p1}, Lcom/google/android/settings/security/SecurityContentManager;->handleClick(Landroid/os/Bundle;)Z

    return-void
.end method

.method private synthetic lambda$setSecurityWarning$1(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarningPreference;->mSecurityContentManager:Lcom/google/android/settings/security/SecurityContentManager;

    invoke-virtual {p0, p1}, Lcom/google/android/settings/security/SecurityContentManager;->handleClick(Landroid/os/Bundle;)Z

    return-void
.end method

.method private static synthetic lambda$setSecurityWarning$2(Landroid/os/Bundle;Lcom/android/settings/SettingsPreferenceFragment;Landroid/view/View;)V
    .locals 3

    const p2, 0x7f0410e2

    const/4 v0, 0x0

    const v1, 0x7f0410e1

    const/high16 v2, 0x1040000

    invoke-static {p2, v0, v1, v2, p0}, Lcom/google/android/settings/security/SecurityConfirmationDialogFragment;->newInstance(IIIILandroid/os/Bundle;)Lcom/google/android/settings/security/SecurityConfirmationDialogFragment;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "SecurityConfirmationDialogFragment"

    invoke-virtual {p0, p1, p2}, Lcom/google/android/settings/security/SecurityConfirmationDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setSecurityWarning$3(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityWarningPreference;->mSecurityContentManager:Lcom/google/android/settings/security/SecurityContentManager;

    invoke-virtual {p0, p1}, Lcom/google/android/settings/security/SecurityContentManager;->handleClick(Landroid/os/Bundle;)Z

    return-void
.end method


# virtual methods
.method public setSecurityWarning(Lcom/google/android/settings/security/SecurityWarning;Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/settings/security/SecurityWarning;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/google/android/settings/security/SecurityWarning;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/BannerMessagePreference;->setSubtitle(Ljava/lang/String;)Lcom/android/settingslib/widget/BannerMessagePreference;

    invoke-virtual {p1}, Lcom/google/android/settings/security/SecurityWarning;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/google/android/settings/security/SecurityWarning;->getPrimaryButtonClickBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/settings/security/SecurityWarningPreference$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/settings/security/SecurityWarningPreference$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/settings/security/SecurityWarningPreference;Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/android/settingslib/widget/BannerMessagePreference;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/BannerMessagePreference;

    invoke-virtual {p1}, Lcom/google/android/settings/security/SecurityWarning;->getPrimaryButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/BannerMessagePreference;->setPositiveButtonText(Ljava/lang/String;)Lcom/android/settingslib/widget/BannerMessagePreference;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/settings/security/SecurityWarning;->getSecondaryButtonClickBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/settings/security/SecurityWarningPreference$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/settings/security/SecurityWarningPreference$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/settings/security/SecurityWarningPreference;Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/android/settingslib/widget/BannerMessagePreference;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/BannerMessagePreference;

    invoke-virtual {p1}, Lcom/google/android/settings/security/SecurityWarning;->getSecondaryButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/BannerMessagePreference;->setNegativeButtonText(Ljava/lang/String;)Lcom/android/settingslib/widget/BannerMessagePreference;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/settings/security/SecurityWarning;->getDismissButtonClickBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/settings/security/SecurityWarning;->showConfirmationDialogOnDismiss()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/android/settings/security/SecurityWarningPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p2}, Lcom/google/android/settings/security/SecurityWarningPreference$$ExternalSyntheticLambda0;-><init>(Landroid/os/Bundle;Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-virtual {p0, v1}, Lcom/android/settingslib/widget/BannerMessagePreference;->setDismissButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/BannerMessagePreference;

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/google/android/settings/security/SecurityWarningPreference$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v0}, Lcom/google/android/settings/security/SecurityWarningPreference$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/settings/security/SecurityWarningPreference;Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Lcom/android/settingslib/widget/BannerMessagePreference;->setDismissButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/BannerMessagePreference;

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/settings/security/SecurityWarning;->getSecurityLevel()Lcom/google/android/settings/security/SecurityLevel;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/settings/security/SecurityLevel;->getWarningCardIconResId()I

    move-result v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/google/android/settings/security/SecurityLevel;->getAttentionLevel()Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/BannerMessagePreference;->setAttentionLevel(Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;)Lcom/android/settingslib/widget/BannerMessagePreference;

    :cond_4
    return-void
.end method
