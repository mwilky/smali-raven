.class Lcom/android/server/voiceinteraction/HotwordDetectionConnection$6;
.super Landroid/os/IRemoteCallback$Stub;
.source "HotwordDetectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$updateServiceIdentity$12$HotwordDetectionConnection(Landroid/service/voice/IHotwordDetectionService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$6;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$sendResult$0(I)I
    .locals 0

    return p0
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    new-instance v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$6$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$6$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setHotwordDetectionServiceProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;)V

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$6;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    new-instance v2, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$6;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget v3, v3, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    invoke-direct {v2, v0, v3}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;-><init>(II)V

    iput-object v2, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$6;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {v1, v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->access$1200(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;I)V

    return-void
.end method
