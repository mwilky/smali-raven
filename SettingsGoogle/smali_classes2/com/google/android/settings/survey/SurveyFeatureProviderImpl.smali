.class public Lcom/google/android/settings/survey/SurveyFeatureProviderImpl;
.super Ljava/lang/Object;
.source "SurveyFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/overlay/SurveyFeatureProvider;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/survey/SurveyFeatureProviderImpl$SurveyProviderLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/settings/overlay/SurveyFeatureProvider;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/google/android/libraries/hats20/HatsDownloadRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/libraries/hats20/HatsClient;->installCookieHandlerIfNeeded()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createAndRegisterReceiver(Landroid/app/Activity;)Landroid/content/BroadcastReceiver;
    .locals 2

    if-eqz p1, :cond_0

    new-instance p0, Lcom/google/android/settings/survey/SurveyBroadcastReceiver;

    invoke-direct {p0}, Lcom/google/android/settings/survey/SurveyBroadcastReceiver;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/settings/survey/SurveyBroadcastReceiver;->setActivity(Landroid/app/Activity;)V

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.libraries.hats20.SURVEY_DOWNLOADED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot register receiver if activity is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public downloadSurvey(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "survey_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    const/16 p2, 0x14

    invoke-virtual {p1, p2, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    return-void
.end method

.method public getSurveyExpirationDate(Landroid/content/Context;Ljava/lang/String;)J
    .locals 0

    invoke-static {p2, p1}, Lcom/google/android/libraries/hats20/HatsClient;->getSurveyExpirationDate(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getSurveyId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "settingsgoogle:%s_site_id"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/settings/experiments/GServicesProxy;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/google/android/libraries/hats20/HatsDownloadRequest;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl$SurveyProviderLoader;

    iget-object p0, p0, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl$SurveyProviderLoader;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/google/android/libraries/hats20/HatsDownloadRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/google/android/libraries/hats20/HatsDownloadRequest;",
            ">;",
            "Lcom/google/android/libraries/hats20/HatsDownloadRequest;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/android/libraries/hats20/HatsClient;->downloadSurvey(Lcom/google/android/libraries/hats20/HatsDownloadRequest;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/libraries/hats20/HatsDownloadRequest;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl;->onLoadFinished(Landroid/content/Loader;Lcom/google/android/libraries/hats20/HatsDownloadRequest;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/google/android/libraries/hats20/HatsDownloadRequest;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public showSurveyIfAvailable(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/libraries/hats20/HatsShowRequest;->builder(Landroid/app/Activity;)Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;->forSiteId(Ljava/lang/String;)Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/HatsShowRequest$Builder;->build()Lcom/google/android/libraries/hats20/HatsShowRequest;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/libraries/hats20/HatsClient;->showSurveyIfAvailable(Lcom/google/android/libraries/hats20/HatsShowRequest;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
