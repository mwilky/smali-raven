.class public final synthetic Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda2;->f$0:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl$$ExternalSyntheticLambda2;->f$0:Landroid/content/ComponentName;

    check-cast p1, Lcom/android/server/speech/RemoteSpeechRecognitionService;

    invoke-static {p0, p1}, Lcom/android/server/speech/SpeechRecognitionManagerServiceImpl;->$r8$lambda$R2ZvchizfzVJTIMHYIvnLeo95ys(Landroid/content/ComponentName;Lcom/android/server/speech/RemoteSpeechRecognitionService;)Z

    move-result p0

    return p0
.end method
