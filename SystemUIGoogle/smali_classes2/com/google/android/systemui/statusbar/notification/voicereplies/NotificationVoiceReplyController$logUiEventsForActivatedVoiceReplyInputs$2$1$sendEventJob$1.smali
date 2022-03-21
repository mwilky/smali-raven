.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationVoiceReplyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1\n+ 2 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,1168:1\n1017#2,2:1169\n1015#2:1171\n1020#2:1180\n197#3,8:1172\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1\n*L\n407#1,2:1169\n407#1:1171\n407#1:1180\n407#1,8:1172\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.statusbar.notification.voicereplies.NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1"
    f = "NotificationVoiceReplyManager.kt"
    l = {
        0x494
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $completion:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $key:Ljava/lang/String;

.field final synthetic $riv:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field final synthetic $this_logUiEventsForActivatedVoiceReplyInputs:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field private synthetic p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Ljava/lang/String;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/RemoteInputView;",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;",
            "Ljava/lang/String;",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->$riv:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->$this_logUiEventsForActivatedVoiceReplyInputs:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    iput-object p5, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->$completion:Lkotlinx/coroutines/CompletableDeferred;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v7, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->$riv:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->$this_logUiEventsForActivatedVoiceReplyInputs:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    iget-object v3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->$key:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    iget-object v5, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->$completion:Lkotlinx/coroutines/CompletableDeferred;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Ljava/lang/String;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v7, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1$listener$1;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1$listener$1;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->$this_logUiEventsForActivatedVoiceReplyInputs:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;

    iget-object v3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->$key:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;

    iget-object v5, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->$completion:Lkotlinx/coroutines/CompletableDeferred;

    invoke-direct {p1, v1, v3, v4, v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1$listener$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$Connection;Ljava/lang/String;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController;Lkotlinx/coroutines/CompletableDeferred;)V

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->$riv:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->addOnSendRemoteInputListener(Lcom/android/systemui/statusbar/policy/RemoteInputView$OnSendRemoteInputListener;)V

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->$riv:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    :try_start_1
    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1;->label:I

    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_2

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    if-ne v2, v0, :cond_3

    return-object v0

    :cond_3
    move-object p0, p1

    move-object v0, v1

    :goto_0
    :try_start_2
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception p0

    move-object v0, v1

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->removeOnSendRemoteInputListener(Lcom/android/systemui/statusbar/policy/RemoteInputView$OnSendRemoteInputListener;)V

    throw p1
.end method
