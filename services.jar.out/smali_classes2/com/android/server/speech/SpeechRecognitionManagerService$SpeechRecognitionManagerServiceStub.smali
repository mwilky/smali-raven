.class final Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;
.super Landroid/speech/IRecognitionServiceManager$Stub;
.source "SpeechRecognitionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/speech/SpeechRecognitionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SpeechRecognitionManagerServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/speech/SpeechRecognitionManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-direct {p0}, Landroid/speech/IRecognitionServiceManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createSession(Landroid/content/ComponentName;Landroid/os/IBinder;ZLandroid/speech/IRecognitionServiceManagerCallback;)V
    .locals 3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-static {v1}, Lcom/android/server/speech/SpeechRecognitionManagerService;->access$000(Lcom/android/server/speech/SpeechRecognitionManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-static {v2, v0}, Lcom/android/server/speech/SpeechRecognitionManagerService;->access$100(Lcom/android/server/speech/SpeechRecognitionManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->createSessionLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ZLandroid/speech/IRecognitionServiceManagerCallback;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setTemporaryComponent(Landroid/content/ComponentName;)V
    .locals 5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/speech/SpeechRecognitionManagerService;->resetTemporaryService(I)V

    invoke-static {}, Lcom/android/server/speech/SpeechRecognitionManagerService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset temporary service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/speech/SpeechRecognitionManagerService$SpeechRecognitionManagerServiceStub;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const v3, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/speech/SpeechRecognitionManagerService;->setTemporaryService(ILjava/lang/String;I)V

    invoke-static {}, Lcom/android/server/speech/SpeechRecognitionManagerService;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpeechRecognition temporarily set to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
