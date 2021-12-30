.class public Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl;
.super Ljava/lang/Object;
.source "AccessibilitySearchFeatureProviderGoogleImpl.java"

# interfaces
.implements Lcom/android/settings/accessibility/AccessibilitySearchFeatureProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSearchIndexableRawData(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;

    invoke-direct {p0, p1}, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1}, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;->buildSupportedServiceSearchIndex(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/AccessibilitySearchFeatureProviderGoogleImpl$SearchIndexableRawHelper;->buildSupportedActivitySearchIndex(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method
