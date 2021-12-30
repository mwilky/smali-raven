.class public Lcom/android/settings/applications/appinfo/ExtraAppInfoFeatureProviderImpl;
.super Ljava/lang/Object;
.source "ExtraAppInfoFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/applications/appinfo/ExtraAppInfoFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public isEnabled(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupported(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public launchExtraAppInfoSettings(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
