.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationVoiceReplyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 NotificationVoiceReplyLogger.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger\n+ 4 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,1168:1\n197#2,8:1169\n197#2,6:1177\n203#2,2:1190\n197#2,6:1192\n203#2,2:1205\n197#2,8:1214\n67#3:1183\n67#3:1198\n67#3:1207\n120#4,6:1184\n120#4,6:1199\n120#4,6:1208\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget\n*L\n856#1,8:1169\n874#1,6:1177\n874#1,2:1190\n890#1,6:1192\n890#1,2:1205\n913#1,8:1214\n875#1:1183\n891#1:1198\n906#1:1207\n875#1,6:1184\n891#1,6:1199\n906#1,6:1208\n*E\n"
.end annotation


# instance fields
.field private final actionIntent:Landroid/app/PendingIntent;

.field private final builder:Landroid/app/Notification$Builder;

.field private final entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private final expandedViewReplyButton:Landroid/widget/Button;

.field private final freeformInput:Landroid/app/RemoteInput;

.field private final handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

.field private final notifKey:Ljava/lang/String;

.field private final notifShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field private final notificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final postTime:J

.field private final powerManager:Landroid/os/PowerManager;

.field private final remoteInputs:[Landroid/app/RemoteInput;

.field private final shadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field private final statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final userId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Builder;JLjava/util/List;Landroid/app/PendingIntent;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/widget/Button;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/os/PowerManager;)V
    .locals 16
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
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Landroid/os/PowerManager;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    move-object/from16 v15, p17

    const-string v0, "entry"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handlers"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionIntent"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteInputs"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "freeformInput"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expandedViewReplyButton"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationRemoteInputManager"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shadeTransitionController"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBar"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBarStateController"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifShadeWindowController"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBarKeyguardViewManager"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "powerManager"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->builder:Landroid/app/Notification$Builder;

    move-wide/from16 v1, p3

    iput-wide v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->postTime:J

    iput-object v3, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->handlers:Ljava/util/List;

    iput-object v4, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->actionIntent:Landroid/app/PendingIntent;

    iput-object v5, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->remoteInputs:[Landroid/app/RemoteInput;

    iput-object v6, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->freeformInput:Landroid/app/RemoteInput;

    iput-object v7, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->expandedViewReplyButton:Landroid/widget/Button;

    iput-object v8, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->notificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object v9, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->shadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iput-object v10, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v11, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v12, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    iput-object v13, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->notifShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iput-object v14, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object v15, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->powerManager:Landroid/os/PowerManager;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "entry.key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->notifKey:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iput v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->userId:I

    return-void
.end method

.method public static final synthetic access$getActionIntent$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->actionIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public static final synthetic access$getExpandedViewReplyButton$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->expandedViewReplyButton:Landroid/widget/Button;

    return-object p0
.end method

.method public static final synthetic access$getFreeformInput$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Landroid/app/RemoteInput;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->freeformInput:Landroid/app/RemoteInput;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    return-object p0
.end method

.method public static final synthetic access$getNotificationRemoteInputManager$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->notificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    return-object p0
.end method

.method public static final synthetic access$getPowerManager$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Landroid/os/PowerManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->powerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method public static final synthetic access$getRemoteInputs$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)[Landroid/app/RemoteInput;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->remoteInputs:[Landroid/app/RemoteInput;

    return-object p0
.end method

.method public static final synthetic access$getShadeTransitionController$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->shadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    return-object p0
.end method

.method public static final synthetic access$getStatusBar$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method public static final synthetic access$getStatusBarKeyguardViewManager$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method public static final synthetic access$getStatusBarStateController$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    return-object p0
.end method


# virtual methods
.method final synthetic awaitFocusGained(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->awaitFocusState(Lcom/android/systemui/statusbar/policy/RemoteInputView;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method final synthetic awaitFocusLost(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->awaitFocusState(Lcom/android/systemui/statusbar/policy/RemoteInputView;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method final synthetic awaitFocusState(Lcom/android/systemui/statusbar/policy/RemoteInputView;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->editTextHasFocus()Z

    move-result p0

    if-ne p0, p2, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-static {}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->access$AtomicLatch()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;

    invoke-direct {v1, p2, v0, p1, p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;-><init>(ZLjava/util/concurrent/atomic/AtomicBoolean;Lcom/android/systemui/statusbar/policy/RemoteInputView;Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->addOnEditTextFocusChangedListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$1;

    invoke-direct {p2, p1, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$1;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;)V

    invoke-interface {p0, p2}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method final synthetic awaitKeyguardNotOccluded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;

    iget v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_4
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->notifShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iput-object p0, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;->label:I

    invoke-static {p1, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->awaitStateChange(Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;

    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->getBouncerShowing()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->getKeyguardShowing()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;->getKeyguardOccluded()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardNotOccluded$1;->label:I

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->awaitKeyguardReset(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    return-object v1

    :cond_7
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_8
    :goto_3
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->logBadWindowState(Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method final synthetic awaitKeyguardReset(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-static {}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->access$AtomicLatch()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardReset$2$callback$1;

    invoke-direct {v2, v1, p0, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardReset$2$callback$1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-static {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getStatusBarKeyguardViewManager$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getBouncer()Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->addKeyguardResetCallback(Lcom/android/systemui/statusbar/phone/KeyguardBouncer$KeyguardResetCallback;)V

    new-instance v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardReset$2$1;

    invoke-direct {v1, p0, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardReset$2$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitKeyguardReset$2$callback$1;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method final synthetic expandShade(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "NotifVoiceReply"

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    const/4 v4, 0x2

    if-eq v0, v3, :cond_1

    if-eq v0, v4, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->logger:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    const-string v3, "Unknown state, cancelling"

    invoke-direct {v0, v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    goto/16 :goto_0

    :cond_0
    move v1, v3

    goto/16 :goto_0

    :cond_1
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v5

    invoke-direct {v0, v5, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-static {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v3

    sget-object v5, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v6, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    const-string v7, "On keyguard, waiting for SHADE_LOCKED state"

    invoke-direct {v6, v7}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3, v2, v5, v6}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_2
    invoke-static {}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->access$AtomicLatch()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    new-instance v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$2$callback$1;

    invoke-direct {v3, v2, p0, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$2$callback$1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlinx/coroutines/CancellableContinuation;)V

    new-instance v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$2$1;

    invoke-direct {v2, p0, v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$2$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$2$callback$1;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    invoke-static {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getStatusBarStateController$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    invoke-static {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getShadeTransitionController$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    const/4 v3, 0x0

    invoke-static {v2, p0, v1, v4, v3}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->goToLockedShade$default(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Landroid/view/View;ZILjava/lang/Object;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_3

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    return-object p0

    :cond_4
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-static {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getLogger$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;->getLogBuffer()Lcom/android/systemui/log/LogBuffer;

    move-result-object v1

    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    new-instance v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;

    const-string v5, "Shade collapsed, waiting for expansion"

    invoke-direct {v4, v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$logStatic$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_5
    invoke-static {}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->access$AtomicLatch()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$callback$1;

    invoke-direct {v2, v1, p0, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$callback$1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lkotlinx/coroutines/CancellableContinuation;)V

    new-instance v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$1;

    invoke-direct {v1, p0, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$expandShade$3$callback$1;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    invoke-static {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getStatusBarStateController$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    invoke-static {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->access$getStatusBar$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanel()V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_6

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_6
    return-object p0

    :cond_7
    :goto_0
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final focus(Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;Ljava/lang/String;Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/RemoteInputView;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v6, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$focus$2;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;Ljava/lang/String;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6, p4}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final getBuilder()Landroid/app/Notification$Builder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->builder:Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public final getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method public final getHandlers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->handlers:Ljava/util/List;

    return-object p0
.end method

.method public final getNotifKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->notifKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getPostTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->postTime:J

    return-wide v0
.end method

.method public final getUserId()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->userId:I

    return p0
.end method
