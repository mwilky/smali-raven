.class Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;
.super Landroid/service/autofill/IInlineSuggestionUiCallback$Stub;
.source "RemoteInlineSuggestionUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InlineSuggestionUiCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;


# direct methods
.method private constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-direct {p0}, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    return-void
.end method

.method static synthetic lambda$onClick$0(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->access$1200(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    return-void
.end method

.method static synthetic lambda$onError$3(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->access$900(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    return-void
.end method

.method static synthetic lambda$onLongClick$1(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->access$1100(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onContent$2$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl(Landroid/service/autofill/IInlineSuggestionUi;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->access$1000(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;Landroid/service/autofill/IInlineSuggestionUi;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    return-void
.end method

.method public synthetic lambda$onStartIntentSender$5$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl(Landroid/content/IntentSender;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-static {v0, p1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->access$700(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;Landroid/content/IntentSender;)V

    return-void
.end method

.method public synthetic lambda$onTransferTouchFocusToImeWindow$4$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl(Landroid/os/IBinder;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-static {v0, p1, p2}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->access$800(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;Landroid/os/IBinder;I)V

    return-void
.end method

.method public onClick()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->access$100(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    new-instance v2, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onContent(Landroid/service/autofill/IInlineSuggestionUi;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->access$100(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;Landroid/service/autofill/IInlineSuggestionUi;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->access$100(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    new-instance v2, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLongClick()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->access$100(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    new-instance v2, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStartIntentSender(Landroid/content/IntentSender;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->access$100(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;Landroid/content/IntentSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTransferTouchFocusToImeWindow(Landroid/os/IBinder;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;->this$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->access$100(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;Landroid/os/IBinder;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
