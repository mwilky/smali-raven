.class public final synthetic Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;

.field public final synthetic f$1:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

.field public final synthetic f$2:Landroid/content/AttributionSource;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Landroid/content/AttributionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda4;->f$0:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    iput-object p3, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda4;->f$2:Landroid/content/AttributionSource;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda4;->f$0:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda4;->f$2:Landroid/content/AttributionSource;

    check-cast p1, Landroid/speech/IRecognitionService;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->$r8$lambda$0nzhPX_uA-_UFkVFgFUMgPMK3uA(Landroid/content/Intent;Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Landroid/content/AttributionSource;Landroid/speech/IRecognitionService;)V

    return-void
.end method
