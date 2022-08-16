.class public final Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$initialize$2$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationVoiceReplyManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$initialize$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic $notifAvailable:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $subscription:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;

.field public final synthetic $token:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/CoroutineScope;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$initialize$2$receiver$1;->$notifAvailable:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$initialize$2$receiver$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$initialize$2$receiver$1;->$subscription:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;

    iput-object p4, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$initialize$2$receiver$1;->$token:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$initialize$2$receiver$1;->$notifAvailable:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_0

    const-string p1, "NotifVoiceReplyDebug"

    const-string p2, "no notification available for voice reply"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$initialize$2$receiver$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$initialize$2$receiver$1$onReceive$1;

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$initialize$2$receiver$1;->$subscription:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$initialize$2$receiver$1;->$token:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p0, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$initialize$2$receiver$1$onReceive$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method
