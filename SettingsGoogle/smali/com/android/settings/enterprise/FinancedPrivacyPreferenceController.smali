.class public Lcom/android/settings/enterprise/FinancedPrivacyPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "FinancedPrivacyPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mPreferenceKey:Ljava/lang/String;

.field private final mPrivacyPreferenceControllerHelper:Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    const-string v0, "financed_privacy"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/enterprise/FinancedPrivacyPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;

    iput-object p2, p0, Lcom/android/settings/enterprise/FinancedPrivacyPreferenceController;->mPrivacyPreferenceControllerHelper:Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;

    iput-object p3, p0, Lcom/android/settings/enterprise/FinancedPrivacyPreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;

    invoke-direct {v1, p1}, Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, p2}, Lcom/android/settings/enterprise/FinancedPrivacyPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/enterprise/FinancedPrivacyPreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/enterprise/FinancedPrivacyPreferenceController;->mPrivacyPreferenceControllerHelper:Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;

    invoke-virtual {p0}, Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;->isFinancedDevice()Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/enterprise/FinancedPrivacyPreferenceController;->mPrivacyPreferenceControllerHelper:Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;

    invoke-virtual {p0, p1}, Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
