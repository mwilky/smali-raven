.class public final synthetic Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda3;->f$0:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda3;->f$0:Landroid/content/ComponentName;

    check-cast p1, Lcom/android/server/speech/RemoteSpeechRecognitionService;

    invoke-static {v0, p1}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->lambda$createService$2(Landroid/content/ComponentName;Lcom/android/server/speech/RemoteSpeechRecognitionService;)Z

    move-result p1

    return p1
.end method
