.class public final synthetic Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>([ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService$$ExternalSyntheticLambda3;->f$0:[I

    iput-object p2, p0, Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService$$ExternalSyntheticLambda3;->f$2:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService$$ExternalSyntheticLambda3;->f$0:[I

    iget-object v1, p0, Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService$$ExternalSyntheticLambda3;->f$2:Landroid/os/RemoteCallback;

    check-cast p1, Landroid/service/ambientcontext/IAmbientContextDetectionService;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;->$r8$lambda$tA6TQDbRDXuSfaoZFjvN4QallFU([ILjava/lang/String;Landroid/os/RemoteCallback;Landroid/service/ambientcontext/IAmbientContextDetectionService;)V

    return-void
.end method
