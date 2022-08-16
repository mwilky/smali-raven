.class public final Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationVoiceReplyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 NotificationVoiceReplyLogger.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger\n+ 4 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,1137:1\n314#2,11:1138\n314#2,9:1149\n323#2,2:1163\n314#2,9:1165\n323#2,2:1179\n314#2,11:1186\n67#3:1158\n67#3:1174\n67#3:1181\n138#4,4:1159\n138#4,4:1175\n138#4,4:1182\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget\n*L\n856#1:1138,11\n874#1:1149,9\n874#1:1163,2\n890#1:1165,9\n890#1:1179,2\n913#1:1186,11\n875#1:1158\n891#1:1174\n906#1:1181\n875#1:1159,4\n891#1:1175,4\n906#1:1182,4\n*E\n"
.end annotation


# instance fields
.field public final actionIntent:Landroid/app/PendingIntent;

.field public final builder:Landroid/app/Notification$Builder;

.field public final centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final expandedViewReplyButton:Landroid/widget/Button;

.field public final freeformInput:Landroid/app/RemoteInput;

.field public final handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

.field public final notifKey:Ljava/lang/String;

.field public final notifShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final notificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field public final postTime:J

.field public final powerManager:Landroid/os/PowerManager;

.field public final remoteInputs:[Landroid/app/RemoteInput;

.field public final shadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Builder;JLjava/util/List;Landroid/app/PendingIntent;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/widget/Button;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/os/PowerManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Landroid/app/Notification$Builder;",
            "J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;",
            ">;",
            "Landroid/app/PendingIntent;",
            "[",
            "Landroid/app/RemoteInput;",
            "Landroid/app/RemoteInput;",
            "Landroid/widget/Button;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            "Lcom/android/systemui/statusbar/phone/CentralSurfaces;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Landroid/os/PowerManager;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-object v2, p2

    iput-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->builder:Landroid/app/Notification$Builder;

    move-wide v2, p3

    iput-wide v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->postTime:J

    move-object v2, p5

    iput-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->handlers:Ljava/util/List;

    move-object v2, p6

    iput-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->actionIntent:Landroid/app/PendingIntent;

    move-object v2, p7

    iput-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->remoteInputs:[Landroid/app/RemoteInput;

    move-object v2, p8

    iput-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->freeformInput:Landroid/app/RemoteInput;

    move-object v2, p9

    iput-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->expandedViewReplyButton:Landroid/widget/Button;

    move-object v2, p10

    iput-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->notificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object v2, p11

    iput-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->shadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->notifShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->powerManager:Landroid/os/PowerManager;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->notifKey:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iput v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->userId:I

    return-void
.end method

.method public static final access$awaitKeyguardNotOccluded(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    instance-of v1, p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;

    iget v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;->result:Ljava/lang/Object;

    iget v2, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_1
    iget-object v2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->notifShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iput-object p0, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;->L$0:Ljava/lang/Object;

    iput v4, v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;->label:I

    new-instance v5, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v1}, Lokio/-Platform;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v7, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$cb$1;

    invoke-direct {v7, v6, v2, v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$cb$1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    invoke-interface {v2, v7}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->registerCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V

    new-instance v6, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$1;

    invoke-direct {v6, v2, v7}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$cb$1;)V

    invoke-virtual {v5, v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_4

    goto/16 :goto_6

    :cond_4
    move-object v8, v0

    move-object v0, p1

    move-object p1, v2

    move-object v2, v1

    move-object v1, v8

    :goto_2
    check-cast p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;

    iget-boolean v5, p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->bouncerShowing:Z

    if-nez v5, :cond_9

    iget-boolean v5, p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->keyguardShowing:Z

    if-nez v5, :cond_5

    goto :goto_5

    :cond_5
    iget-boolean p1, p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->keyguardOccluded:Z

    if-nez p1, :cond_8

    const/4 p1, 0x0

    iput-object p1, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;->L$0:Ljava/lang/Object;

    iput v3, v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;->label:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v2}, Lokio/-Platform;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {p1, v4, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardReset$2$callback$1;

    invoke-direct {v3, v2, p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardReset$2$callback$1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mResetCallbacks:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {v2, v3}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardReset$2$1;

    invoke-direct {v2, p0, v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardReset$2$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardReset$2$callback$1;)V

    invoke-virtual {p1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    goto :goto_3

    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    if-ne p0, v1, :cond_7

    move-object v0, v1

    goto :goto_6

    :cond_7
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_6

    :cond_8
    move-object p1, v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_1

    :cond_9
    :goto_5
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->eventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->SESSION_FAILED_BAD_WINDOW_STATE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logBadWindowState$2;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logBadWindowState$2;

    const-string v2, "NotifVoiceReply"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_6
    return-object v0
.end method

.method public static final access$expandShade(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "NotifVoiceReply"

    if-eqz v1, :cond_1

    const/4 v4, 0x2

    if-eq v1, v2, :cond_0

    if-eq v1, v4, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    new-instance p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    const-string v1, "Unknown state, cancelling"

    invoke-direct {p1, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v0, p1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lokio/-Platform;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    iget-object p1, p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    new-instance v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    const-string v5, "On keyguard, waiting for SHADE_LOCKED state"

    invoke-direct {v4, v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v0, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$2$callback$1;

    invoke-direct {v0, p1, p0, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$2$callback$1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    new-instance p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$2$1;

    invoke-direct {p1, p0, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$2$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$2$callback$1;)V

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->shadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1, p0, v2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->goToLockedShade(Landroid/view/View;Z)V

    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lokio/-Platform;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    iget-object p1, p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    new-instance v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    const-string v5, "Shade collapsed, waiting for expansion"

    invoke-direct {v4, v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v0, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$callback$1;

    invoke-direct {v0, p1, p0, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$callback$1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    new-instance p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$1;

    invoke-direct {p1, p0, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$callback$1;)V

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->animateExpandNotificationsPanel()V

    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static awaitFocusState(Lcom/android/systemui/statusbar/policy/RemoteInputView;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p1, :cond_1

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lokio/-Platform;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;

    invoke-direct {v1, p1, p2, p0, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;-><init>(ZLjava/util/concurrent/atomic/AtomicBoolean;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditTextFocusChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$1;

    invoke-direct {p1, p0, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$1;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;)V

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
