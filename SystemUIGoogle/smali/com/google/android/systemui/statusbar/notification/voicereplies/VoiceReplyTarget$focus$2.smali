.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
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
    value = "SMAP\nNotificationVoiceReplyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2\n+ 2 NotificationVoiceReplyLogger.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger\n+ 3 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,1137:1\n67#2:1138\n67#2:1143\n67#2:1148\n67#2:1153\n67#2:1158\n67#2:1163\n67#2:1168\n138#3,4:1139\n138#3,4:1144\n138#3,4:1149\n138#3,4:1154\n138#3,4:1159\n138#3,4:1164\n138#3,4:1169\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2\n*L\n787#1:1138\n794#1:1143\n800#1:1148\n802#1:1153\n809#1:1158\n833#1:1163\n836#1:1168\n787#1:1139,4\n794#1:1144,4\n800#1:1149,4\n802#1:1154,4\n809#1:1159,4\n833#1:1164,4\n836#1:1169,4\n*E\n"
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
.field public final synthetic $authState:Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

.field public final synthetic $remoteInputViewActivatedForVoiceReply:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/RemoteInputViewController;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic $userMessageContent:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Ljava/lang/String;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/RemoteInputViewController;",
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

    iput-object p1, v6, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->label:I

    const/4 v4, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v10, "NotifVoiceReply"

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_d

    :pswitch_1
    iget-object v3, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_b

    :pswitch_2
    iget-object v3, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_9

    :pswitch_3
    iget-object v3, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v5, p1

    goto/16 :goto_8

    :pswitch_4
    iget-object v3, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    :try_start_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_7

    :pswitch_5
    iget-object v3, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    :try_start_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    :try_start_6
    iget-object v11, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v12, v11, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    iget-object v11, v11, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->notifKey:Ljava/lang/String;

    iget-object v13, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->$userMessageContent:Ljava/lang/String;

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_0

    goto :goto_0

    :cond_0
    move v13, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v13, v9

    :goto_1
    if-nez v13, :cond_2

    move v13, v9

    goto :goto_2

    :cond_2
    move v13, v8

    :goto_2
    iget-object v14, v12, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->eventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz v13, :cond_3

    sget-object v15, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->STATE_IN_SESSION_HAS_START_TEXT:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    goto :goto_3

    :cond_3
    sget-object v15, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->STATE_IN_SESSION_NO_START_TEXT:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    :goto_3
    invoke-interface {v14, v15}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object v12, v12, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v14, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logFocus$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logFocus$2;

    invoke-virtual {v12, v10, v0, v14}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v14

    iput-object v11, v14, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-boolean v13, v14, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v12, v14}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    iget-object v11, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v11, v11, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v11, :cond_4

    move-object v11, v7

    goto :goto_4

    :cond_4
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v11

    :goto_4
    if-nez v11, :cond_5

    iget-object v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v2, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    iget-object v3, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->eventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->SESSION_FAILED_BAD_NOTIF_STATE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    invoke-interface {v3, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object v2, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    new-instance v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    const-string v4, "Entry\'s \"showing layout\" is null"

    invoke-direct {v3, v4}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v0, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->$authState:Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

    iput v8, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;->value:I

    iget-object v1, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v1, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-virtual {v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logSessionEnd()V

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_5
    :try_start_7
    iget-object v12, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v12, v12, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v12}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v12, v12, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    const-string v13, "Waiting for doze to end"

    iget-object v12, v12, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    new-instance v14, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v14, v13}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10, v0, v14}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    iget-object v12, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v12, v12, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->powerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    const-string v15, "com.android.systemui:VOICE_REPLY_QUICK_PHRASE"

    invoke-virtual {v12, v13, v14, v5, v15}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    iget-object v12, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v12, v12, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v13, 0x7

    invoke-static {v8, v13}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(II)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v13

    const/4 v14, -0x1

    invoke-static {v14, v7, v4}, Lkotlin/TuplesKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/channels/AbstractChannel;

    move-result-object v14

    new-instance v15, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$getDozeStateChanges$1$1;

    invoke-direct {v15, v12, v14, v7}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$getDozeStateChanges$1$1;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v7, v15, v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    new-instance v12, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$getDozeStateChanges$1$2;

    invoke-direct {v12, v14, v13, v7}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$getDozeStateChanges$1$2;-><init>(Lkotlinx/coroutines/channels/Channel;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v7, v12, v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    new-instance v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2$1;

    invoke-direct {v3, v7}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object v11, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    iput v9, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->label:I

    invoke-static {v13, v3, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_6

    return-object v2

    :cond_6
    move-object v3, v11

    :goto_5
    iget-object v11, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v11, v11, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    const-string v12, "Doze has ended"

    iget-object v11, v11, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    new-instance v13, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v13, v12}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10, v0, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    goto :goto_6

    :cond_7
    move-object v3, v11

    :goto_6
    iget-object v11, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v12, v11, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-boolean v12, v12, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-eqz v12, :cond_9

    iget-object v11, v11, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    const-string v12, "Waiting for keyguard occlusion to end"

    iget-object v11, v11, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    new-instance v13, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v13, v12}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10, v0, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    iget-object v11, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iput-object v3, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    iput v5, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->label:I

    invoke-static {v11, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$awaitKeyguardNotOccluded(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_8

    return-object v2

    :cond_8
    :goto_7
    iget-object v5, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v5, v5, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    const-string v11, "Keyguard no longer occluded"

    iget-object v5, v5, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    new-instance v12, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v12, v11}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v0, v12}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    :cond_9
    iget-object v5, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iput-object v3, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    iput v6, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->label:I

    invoke-static {v5, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$expandShade(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_a

    return-object v2

    :cond_a
    :goto_8
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v2, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    iget-object v3, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->eventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->SESSION_FAILED_BAD_SHADE_STATE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    invoke-interface {v3, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object v2, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    new-instance v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    const-string v4, "Could not expand shade, aborting"

    invoke-direct {v3, v4}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v0, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->$authState:Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

    iput v8, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;->value:I

    iget-object v1, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v1, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-virtual {v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logSessionEnd()V

    return-object v0

    :cond_b
    :try_start_8
    iget-object v5, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v5, v5, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    const-string v6, "Shade expanded"

    iget-object v5, v5, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    new-instance v11, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v11, v6}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v0, v11}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    new-instance v5, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2$authBypassCheck$1;

    iget-object v6, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->$authState:Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

    invoke-direct {v5, v6}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2$authBypassCheck$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;)V

    iget-object v6, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v11, v6, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->notificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v12, v6, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->expandedViewReplyButton:Landroid/widget/Button;

    iget-object v13, v6, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->remoteInputs:[Landroid/app/RemoteInput;

    iget-object v14, v6, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->freeformInput:Landroid/app/RemoteInput;

    iget-object v15, v6, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->actionIntent:Landroid/app/PendingIntent;

    const/16 v16, 0x0

    iget-object v6, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->$userMessageContent:Ljava/lang/String;

    move-object/from16 v17, v6

    move-object/from16 v18, v5

    invoke-virtual/range {v11 .. v18}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->activateRemoteInput(Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$AuthBypassPredicate;)Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v0, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v0, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Could not activate remote input for voice reply"

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->eventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->SESSION_FAILED_BAD_REMOTE_INPUT_STATE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    invoke-interface {v0, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->$authState:Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

    iput v8, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;->value:I

    iget-object v1, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v1, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-virtual {v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logSessionEnd()V

    return-object v0

    :cond_c
    :try_start_9
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedRemoteInput:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object v5, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->$remoteInputViewActivatedForVoiceReply:Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object v6, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v6, v6, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->notifKey:Ljava/lang/String;

    iget-object v11, v3, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mViewController:Lcom/android/systemui/statusbar/policy/RemoteInputViewController;

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v6, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    const/4 v6, 0x4

    iput v6, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->label:I

    invoke-interface {v5, v12, v1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_d

    return-object v2

    :cond_d
    :goto_9
    iget-object v5, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v5, v5, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    const-string v6, "Waiting for RemoteInputView focus"

    iget-object v5, v5, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    new-instance v11, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v11, v6}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v0, v11}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    iget-object v5, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iput-object v3, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    const/4 v6, 0x5

    iput v6, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->label:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v9, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->awaitFocusState(Lcom/android/systemui/statusbar/policy/RemoteInputView;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_e

    goto :goto_a

    :cond_e
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_a
    if-ne v5, v2, :cond_f

    return-object v2

    :cond_f
    :goto_b
    iget-object v5, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v5, v5, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    const-string v6, "Waiting for session end (RemoteInputView focus lost)"

    iget-object v5, v5, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    new-instance v9, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    invoke-direct {v9, v6}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v0, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    iget-object v0, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iput-object v7, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->L$0:Ljava/lang/Object;

    iput v4, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->label:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v8, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->awaitFocusState(Lcom/android/systemui/statusbar/policy/RemoteInputView;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_10

    goto :goto_c

    :cond_10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_c
    if-ne v0, v2, :cond_11

    return-object v2

    :cond_11
    :goto_d
    iget-object v0, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->$authState:Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

    iput v8, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;->value:I

    iget-object v0, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v0, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-virtual {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logSessionEnd()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_e
    iget-object v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->$authState:Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;

    iput v8, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;->value:I

    iget-object v1, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    iget-object v1, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

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
