.class public final synthetic Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Landroid/speech/IRecognitionListener;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/speech/IRecognitionListener;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda5;->f$0:Landroid/speech/IRecognitionListener;

    iput-boolean p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda5;->f$1:Z

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda5;->f$0:Landroid/speech/IRecognitionListener;

    iget-boolean p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda5;->f$1:Z

    check-cast p1, Landroid/speech/IRecognitionService;

    invoke-static {v0, p0, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->$r8$lambda$IPjx8Iq-V2jlODygJkXmGYMIlLA(Landroid/speech/IRecognitionListener;ZLandroid/speech/IRecognitionService;)V

    return-void
.end method
