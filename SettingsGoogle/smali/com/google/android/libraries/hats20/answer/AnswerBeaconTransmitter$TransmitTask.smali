.class Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter$TransmitTask;
.super Ljava/lang/Object;
.source "AnswerBeaconTransmitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransmitTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;

.field private final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter$TransmitTask;->this$0:Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter$TransmitTask;->uri:Landroid/net/Uri;

    return-void
.end method

.method private transmit()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter$TransmitTask;->this$0:Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;

    invoke-static {v0}, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;->access$100(Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;)Lcom/google/android/libraries/hats20/storage/HatsDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->restoreCookiesFromPersistence()V

    iget-object v0, p0, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter$TransmitTask;->uri:Landroid/net/Uri;

    const-string/jumbo v1, "t"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter$TransmitTask;->this$0:Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;

    invoke-static {v2}, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;->access$000(Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter$TransmitTask;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v4, "POST"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Length"

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "charset"

    const-string/jumbo v5, "utf-8"

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Connection"

    const-string v5, "close"

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "User-Agent"

    sget-object v5, Lcom/google/android/libraries/hats20/network/GcsRequest;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0xc8

    const-string v4, "HatsLibTransmitter"

    if-ne v2, v3, :cond_1

    :try_start_1
    const-string v2, "Successfully transmitted answer beacon of type: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter$TransmitTask;->this$0:Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;

    invoke-static {v0}, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;->access$100(Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;)Lcom/google/android/libraries/hats20/storage/HatsDataStore;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter$TransmitTask;->this$0:Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;

    invoke-static {p0}, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;->access$000(Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->storeSetCookieHeaders(Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x4a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Failed to transmit answer beacon of type: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; response code was: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p0
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "HatsLibTransmitter"

    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter$TransmitTask;->this$0:Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;

    invoke-static {v1}, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;->access$000(Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "Skipping transmission of beacon since answerUrl was \"/\", this should only happen during debugging."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter$TransmitTask;->transmit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Transmission of answer beacon failed."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
