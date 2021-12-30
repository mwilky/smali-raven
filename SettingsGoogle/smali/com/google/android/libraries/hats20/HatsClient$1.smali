.class final Lcom/google/android/libraries/hats20/HatsClient$1;
.super Ljava/lang/Object;
.source "HatsClient.java"

# interfaces
.implements Lcom/google/android/libraries/hats20/network/GcsRequest$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/hats20/HatsClient;->downloadSurvey(Lcom/google/android/libraries/hats20/HatsDownloadRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadRequest:Lcom/google/android/libraries/hats20/HatsDownloadRequest;

.field final synthetic val$hatsDataStore:Lcom/google/android/libraries/hats20/storage/HatsDataStore;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/hats20/HatsDownloadRequest;Lcom/google/android/libraries/hats20/storage/HatsDataStore;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/hats20/HatsClient$1;->val$downloadRequest:Lcom/google/android/libraries/hats20/HatsDownloadRequest;

    iput-object p2, p0, Lcom/google/android/libraries/hats20/HatsClient$1;->val$hatsDataStore:Lcom/google/android/libraries/hats20/storage/HatsDataStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/libraries/hats20/HatsClient$1;->val$downloadRequest:Lcom/google/android/libraries/hats20/HatsDownloadRequest;

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->getSiteId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "Site ID %s failed to download with error: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "HatsLibClient"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/libraries/hats20/HatsClient$1;->val$hatsDataStore:Lcom/google/android/libraries/hats20/storage/HatsDataStore;

    iget-object p0, p0, Lcom/google/android/libraries/hats20/HatsClient$1;->val$downloadRequest:Lcom/google/android/libraries/hats20/HatsDownloadRequest;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->getSiteId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->saveFailedDownload(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/google/android/libraries/hats20/network/GcsResponse;)V
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/libraries/hats20/HatsClient$1;->val$downloadRequest:Lcom/google/android/libraries/hats20/HatsDownloadRequest;

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->getSiteId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/google/android/libraries/hats20/network/GcsResponse;->getResponseCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Site ID %s downloaded with response code: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HatsLibClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/google/android/libraries/hats20/HatsClient$1;->val$hatsDataStore:Lcom/google/android/libraries/hats20/storage/HatsDataStore;

    invoke-virtual {p1}, Lcom/google/android/libraries/hats20/network/GcsResponse;->getResponseCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/libraries/hats20/network/GcsResponse;->expirationDateUnix()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/libraries/hats20/network/GcsResponse;->getSurveyJson()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/libraries/hats20/HatsClient$1;->val$downloadRequest:Lcom/google/android/libraries/hats20/HatsDownloadRequest;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->getSiteId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->saveSuccessfulDownload(IJLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/hats20/HatsClient$1;->val$downloadRequest:Lcom/google/android/libraries/hats20/HatsDownloadRequest;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/HatsClient$1;->val$downloadRequest:Lcom/google/android/libraries/hats20/HatsDownloadRequest;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/HatsDownloadRequest;->getSiteId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/libraries/hats20/network/GcsResponse;->getResponseCode()I

    move-result p1

    invoke-static {v0, p0, p1}, Lcom/google/android/libraries/hats20/HatsClient;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
