.class public final Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$cb$1;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->awaitStateChange(Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationVoiceReplyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$cb$1\n+ 2 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt\n*L\n1#1,1168:1\n1079#2,3:1169\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$cb$1\n*L\n962#1,3:1169\n*E\n"
.end annotation


# instance fields
.field final synthetic $k:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $latch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic $this_awaitStateChange:Lcom/android/systemui/statusbar/NotificationShadeWindowController;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$cb$1;->$latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$cb$1;->$this_awaitStateChange:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$cb$1;->$k:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(ZZZZ)V
    .locals 3

    iget-object p4, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$cb$1;->$latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$cb$1;->$this_awaitStateChange:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$cb$1;->$k:Lkotlinx/coroutines/CancellableContinuation;

    const/4 v2, 0x0

    invoke-virtual {p4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->unregisterCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V

    new-instance p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/StatusBarWindowState;-><init>(ZZZ)V

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
