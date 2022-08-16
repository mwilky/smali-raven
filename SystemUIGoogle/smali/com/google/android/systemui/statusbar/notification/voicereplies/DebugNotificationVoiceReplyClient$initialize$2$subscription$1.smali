.class public final Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$initialize$2$subscription$1;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$initialize$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $notifAvailable:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final showCta:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$initialize$2$subscription$1;->$notifAvailable:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$initialize$2$subscription$1;->userId:I

    sget-object p1, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;->HOTWORD:Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    new-instance p2, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$initialize$2$subscription$1;->showCta:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-void
.end method


# virtual methods
.method public final getShowCta()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$initialize$2$subscription$1;->showCta:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-object p0
.end method

.method public final getUserId()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$initialize$2$subscription$1;->userId:I

    return p0
.end method

.method public final onNotifAvailableForQuickPhraseReplyChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onNotifAvailableForReplyChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$initialize$2$subscription$1;->$notifAvailable:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method
