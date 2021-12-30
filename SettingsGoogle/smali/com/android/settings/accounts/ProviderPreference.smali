.class public Lcom/android/settings/accounts/ProviderPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "ProviderPreference.java"


# instance fields
.field private mAccountType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;->setIconSize(I)V

    iput-object p2, p0, Lcom/android/settings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setPersistent(Z)V

    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->useAdminDisabledSummary(Z)V

    return-void
.end method


# virtual methods
.method public checkAccountManagementAndSetDisabled(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfAccountManagementDisabled(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    return-object p0
.end method
