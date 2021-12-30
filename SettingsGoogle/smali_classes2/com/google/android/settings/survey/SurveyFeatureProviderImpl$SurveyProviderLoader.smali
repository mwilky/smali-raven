.class public Lcom/google/android/settings/survey/SurveyFeatureProviderImpl$SurveyProviderLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "SurveyFeatureProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/settings/survey/SurveyFeatureProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurveyProviderLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Lcom/google/android/libraries/hats20/HatsDownloadRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROXY_AUTHORITY:Landroid/net/Uri;


# instance fields
.field private mData:Ljava/lang/String;

.field private mSurveyId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$vwyajZz0jJtutSmLzBUrnRp9zdg(Lcom/google/android/settings/survey/SurveyFeatureProviderImpl$SurveyProviderLoader;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl$SurveyProviderLoader;->lambda$getAdsId$0()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.settings.intelligence.provider.adsclientid"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl$SurveyProviderLoader;->PROXY_AUTHORITY:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    const-string p1, "survey_id"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl$SurveyProviderLoader;->mSurveyId:Ljava/lang/String;

    const-string p1, "data"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl$SurveyProviderLoader;->mData:Ljava/lang/String;

    return-void
.end method

.method private getAdsId()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl$SurveyProviderLoader$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl$SurveyProviderLoader$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/survey/SurveyFeatureProviderImpl$SurveyProviderLoader;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const-wide/16 v2, 0x64

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string v1, "value"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "SurveyFeatureProvider"

    const-string v2, "Failed to query ads id provider"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private synthetic lambda$getAdsId$0()Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl$SurveyProviderLoader;->PROXY_AUTHORITY:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    :try_start_0
    const-string v0, "getAdsClientId"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
.end method


# virtual methods
.method getPayload()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "settingsgoogle:survey_payloads_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/settings/experiments/GServicesProxy;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/settings/support/PsdValuesLoader;->makePsdBundle(Landroid/content/Context;I)Lcom/google/android/settings/support/PsdBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/settings/support/PsdBundle;->getValues()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl$SurveyProviderLoader;->mData:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/16 v1, 0x3e8

    if-le p0, v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public loadInBackground()Lcom/google/android/libraries/hats20/HatsDownloadRequest;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl$SurveyProviderLoader;->getAdsId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl$SurveyProviderLoader;->mSurveyId:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->builder(Landroid/content/Context;)Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl$SurveyProviderLoader;->mSurveyId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->forSiteId(Ljava/lang/String;)Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->withAdvertisingId(Ljava/lang/String;)Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl$SurveyProviderLoader;->getPayload()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->withSiteContext(Ljava/lang/String;)Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/HatsDownloadRequest$Builder;->build()Lcom/google/android/libraries/hats20/HatsDownloadRequest;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl$SurveyProviderLoader;->loadInBackground()Lcom/google/android/libraries/hats20/HatsDownloadRequest;

    move-result-object p0

    return-object p0
.end method

.method protected onDiscardResult(Lcom/google/android/libraries/hats20/HatsDownloadRequest;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/libraries/hats20/HatsDownloadRequest;

    invoke-virtual {p0, p1}, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl$SurveyProviderLoader;->onDiscardResult(Lcom/google/android/libraries/hats20/HatsDownloadRequest;)V

    return-void
.end method
