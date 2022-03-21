.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->focus(Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;Ljava/lang/String;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nNotificationVoiceReplyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2\n+ 2 NotificationVoiceReplyLogger.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger\n+ 3 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,1168:1\n67#2:1169\n67#2:1176\n67#2:1183\n67#2:1190\n67#2:1197\n67#2:1204\n67#2:1211\n120#3,6:1170\n120#3,6:1177\n120#3,6:1184\n120#3,6:1191\n120#3,6:1198\n120#3,6:1205\n120#3,6:1212\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2\n*L\n787#1:1169\n794#1:1176\n800#1:1183\n802#1:1190\n809#1:1197\n833#1:1204\n836#1:1211\n787#1,6:1170\n794#1,6:1177\n800#1,6:1184\n802#1,6:1191\n809#1,6:1198\n833#1,6:1205\n836#1,6:1212\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.statusbar.notification.voicereplies.VoiceReplyTarget$focus$2"
    f = "NotificationVoiceReplyManager.kt"
    l = {
        0x319,
        0x321,
        0x325,
        0x33d,
        0x342,
        0x345
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $authState:Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

.field final synthetic $remoteInputViewActivatedForVoiceReply:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/RemoteInputView;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $userMessageContent:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field private synthetic p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Ljava/lang/String;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/RemoteInputView;",
            ">;>;",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->$userMessageContent:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->$remoteInputViewActivatedForVoiceReply:Lkotlinx/coroutines/flow/MutableSharedFlow;

    iput-object p4, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->$authState:Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->$userMessageContent:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->$remoteInputViewActivatedForVoiceReply:Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object v4, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->$authState:Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Ljava/lang/String;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v6, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->label:I

    const/4 v3, 0x2

    const-string v4, "riv"

    const/4 v5, 0x0

    const-string v6, "NotifVoiceReply"

    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :pswitch_1
    iget-object v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_9

    :pswitch_2
    iget-object v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_8

    :pswitch_3
    iget-object v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v3, p1

    goto/16 :goto_7

    :pswitch_4
    iget-object v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    :try_start_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    :pswitch_5
    iget-object v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    :try_start_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_6
    iget-object v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v2

    iget-object v8, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-virtual {v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getNotifKey()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->$userMessageContent:Ljava/lang/String;

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    move v9, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v10

    :goto_1
    if-nez v9, :cond_2

    move v9, v10

    goto :goto_2

    :cond_2
    move v9, v7

    :goto_2
    invoke-virtual {v2, v8, v9}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logFocus(Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-virtual {v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v2, v5

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v2

    :goto_3
    if-nez v2, :cond_4

    iget-object v0, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBadNotifState()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_4
    iget-object v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->$authState:Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

    invoke-virtual {v2, v7}, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;->setValue(I)V

    iget-object v1, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logSessionEnd()V

    return-object v0

    :cond_4
    :try_start_7
    iget-object v8, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getStatusBarStateController$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v8

    const-string v9, "Waiting for doze to end"

    invoke-virtual {v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v8

    sget-object v11, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v12, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v12, v9}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v8, v6, v11, v12}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_5
    iget-object v8, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getPowerManager$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Landroid/os/PowerManager;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const-string v9, "com.android.systemui:VOICE_REPLY_QUICK_PHRASE"

    invoke-virtual {v8, v11, v12, v3, v9}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    iget-object v8, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getStatusBarStateController$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v8, v9}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->access$getDozeStateChanges(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

    new-instance v9, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2$1;

    invoke-direct {v9, v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    iput v10, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->label:I

    invoke-static {v8, v9, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_6

    return-object v0

    :cond_6
    :goto_5
    iget-object v8, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v8

    const-string v9, "Doze has ended"

    invoke-virtual {v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v8

    sget-object v10, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v11, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v11, v9}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v8, v6, v10, v11}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_7
    iget-object v8, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getStatusBarKeyguardViewManager$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v8

    const-string v9, "Waiting for keyguard occlusion to end"

    invoke-virtual {v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v8

    sget-object v10, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v11, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v11, v9}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v8, v6, v10, v11}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_8
    iget-object v8, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iput-object v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    iput v3, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->label:I

    invoke-virtual {v8, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->awaitKeyguardNotOccluded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_9

    return-object v0

    :cond_9
    :goto_6
    iget-object v3, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v3

    const-string v8, "Keyguard no longer occluded"

    invoke-virtual {v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v3

    sget-object v9, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v10, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v10, v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v3, v6, v9, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_a
    iget-object v3, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iput-object v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->label:I

    invoke-virtual {v3, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->expandShade(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_b

    return-object v0

    :cond_b
    :goto_7
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v0, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBadShadeState()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4

    :cond_c
    iget-object v3, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v3

    const-string v8, "Shade expanded"

    invoke-virtual {v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v3

    sget-object v9, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v10, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v10, v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v3, v6, v9, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_d
    new-instance v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2$authBypassCheck$1;

    iget-object v8, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->$authState:Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

    invoke-direct {v3, v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2$authBypassCheck$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;)V

    iget-object v8, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getNotificationRemoteInputManager$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object v9

    iget-object v8, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getExpandedViewReplyButton$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Landroid/widget/Button;

    move-result-object v10

    iget-object v8, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getRemoteInputs$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)[Landroid/app/RemoteInput;

    move-result-object v11

    iget-object v8, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getFreeformInput$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Landroid/app/RemoteInput;

    move-result-object v12

    iget-object v8, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getActionIntent$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Landroid/app/PendingIntent;

    move-result-object v13

    const/4 v14, 0x0

    iget-object v15, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->$userMessageContent:Ljava/lang/String;

    move-object/from16 v16, v3

    invoke-virtual/range {v9 .. v16}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->activateRemoteInput(Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$AuthBypassPredicate;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v0, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBadRemoteInputState()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4

    :cond_e
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedRemoteInput()Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->$remoteInputViewActivatedForVoiceReply:Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object v8, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-virtual {v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getNotifKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    iput-object v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    const/4 v9, 0x4

    iput v9, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->label:I

    invoke-interface {v3, v8, v1}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_f

    return-object v0

    :cond_f
    :goto_8
    iget-object v3, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v3

    const-string v8, "Waiting for RemoteInputView focus"

    invoke-virtual {v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v3

    sget-object v9, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v10, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v10, v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v8

    if-nez v8, :cond_10

    invoke-virtual {v3, v6, v9, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_10
    iget-object v3, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    const/4 v8, 0x5

    iput v8, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->label:I

    invoke-virtual {v3, v2, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->awaitFocusGained(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_11

    return-object v0

    :cond_11
    :goto_9
    iget-object v3, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v3

    const-string v8, "Waiting for session end (RemoteInputView focus lost)"

    invoke-virtual {v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v3

    sget-object v9, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v10, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v10, v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v8

    if-nez v8, :cond_12

    invoke-virtual {v3, v6, v9, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_12
    iget-object v3, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    const/4 v4, 0x6

    iput v4, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->label:I

    invoke-virtual {v3, v2, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->awaitFocusLost(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-ne v2, v0, :cond_13

    return-object v0

    :cond_13
    :goto_a
    iget-object v0, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->$authState:Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

    invoke-virtual {v0, v7}, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;->setValue(I)V

    iget-object v0, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logSessionEnd()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_b
    iget-object v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->$authState:Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

    invoke-virtual {v2, v7}, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;->setValue(I)V

    iget-object v1, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logSessionEnd()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
