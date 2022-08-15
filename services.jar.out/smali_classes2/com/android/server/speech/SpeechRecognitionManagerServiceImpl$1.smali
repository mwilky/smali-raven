.class public Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;
.super Landroid/speech/IRecognitionService$Stub;
.source "SpeechRecognitionManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->lambda$createSessionLocked$1(Landroid/speech/IRecognitionServiceManagerCallback;Lcom/android/server/speech/RemoteSpeechRecognitionService;ILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;Landroid/speech/IRecognitionService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

.field public final synthetic val$clientToken:Landroid/os/IBinder;

.field public final synthetic val$creatorCallingUid:I

.field public final synthetic val$deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final synthetic val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;


# direct methods
.method public constructor <init>(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;Lcom/android/server/speech/RemoteSpeechRecognitionService;ILandroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    iput p3, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$creatorCallingUid:I

    iput-object p4, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$clientToken:Landroid/os/IBinder;

    iput-object p5, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$deathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-direct {p0}, Landroid/speech/IRecognitionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Landroid/speech/IRecognitionListener;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->cancel(Landroid/speech/IRecognitionListener;Z)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    iget p2, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$creatorCallingUid:I

    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->-$$Nest$mhandleClientDeath(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;ILcom/android/server/speech/RemoteSpeechRecognitionService;Z)V

    iget-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$clientToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$deathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method

.method public checkRecognitionSupport(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->checkRecognitionSupport(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;)V

    return-void
.end method

.method public startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p3}, Landroid/content/AttributionSource;->enforceCallingUid()V

    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->access$000(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;)Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->this$0:Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->access$100(Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;)Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/permission/PermissionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    invoke-virtual {v0, p3}, Landroid/permission/PermissionManager;->registerAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p3

    :cond_0
    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V

    return-void
.end method

.method public stopListening(Landroid/speech/IRecognitionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    invoke-virtual {p0, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->stopListening(Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method public triggerModelDownload(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$1;->val$service:Lcom/android/server/speech/RemoteSpeechRecognitionService;

    invoke-virtual {p0, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->triggerModelDownload(Landroid/content/Intent;)V

    return-void
.end method
