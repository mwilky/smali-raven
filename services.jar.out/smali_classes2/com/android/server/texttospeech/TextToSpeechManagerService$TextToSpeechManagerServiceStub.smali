.class final Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;
.super Landroid/speech/tts/ITextToSpeechManager$Stub;
.source "TextToSpeechManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/texttospeech/TextToSpeechManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextToSpeechManagerServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/texttospeech/TextToSpeechManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/texttospeech/TextToSpeechManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;->this$0:Lcom/android/server/texttospeech/TextToSpeechManagerService;

    invoke-direct {p0}, Landroid/speech/tts/ITextToSpeechManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/texttospeech/TextToSpeechManagerService;Lcom/android/server/texttospeech/TextToSpeechManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;-><init>(Lcom/android/server/texttospeech/TextToSpeechManagerService;)V

    return-void
.end method

.method static synthetic lambda$createSession$0(Landroid/speech/tts/ITextToSpeechSessionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Service is not available for user"

    invoke-interface {p0, v0}, Landroid/speech/tts/ITextToSpeechSessionCallback;->onError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createSession(Ljava/lang/String;Landroid/speech/tts/ITextToSpeechSessionCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;->this$0:Lcom/android/server/texttospeech/TextToSpeechManagerService;

    invoke-static {v0}, Lcom/android/server/texttospeech/TextToSpeechManagerService;->access$100(Lcom/android/server/texttospeech/TextToSpeechManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub;->this$0:Lcom/android/server/texttospeech/TextToSpeechManagerService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/texttospeech/TextToSpeechManagerService;->access$200(Lcom/android/server/texttospeech/TextToSpeechManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;->createSessionLocked(Ljava/lang/String;Landroid/speech/tts/ITextToSpeechSessionCallback;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/android/server/texttospeech/TextToSpeechManagerService$TextToSpeechManagerServiceStub$$ExternalSyntheticLambda0;-><init>(Landroid/speech/tts/ITextToSpeechSessionCallback;)V

    invoke-static {v2}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;->runSessionCallbackMethod(Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$ThrowingRunnable;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
