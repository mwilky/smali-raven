.class public Lcom/google/android/settings/search/SearchFeatureProviderGoogleImpl;
.super Lcom/android/settings/search/SearchFeatureProviderImpl;
.source "SearchFeatureProviderGoogleImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/SearchFeatureProviderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method protected isSignatureAllowlisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/settings/external/SignatureVerifier;->isPackageAllowlisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
