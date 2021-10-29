.class public final Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationVoiceReplyManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $notifAvailable:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $subscription:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;

.field final synthetic $token:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1;->$notifAvailable:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1;->$subscription:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;

    iput-object p4, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1;->$token:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1;->$notifAvailable:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_0

    const-string p1, "NotifVoiceReplyDebug"

    const-string p2, "no notification available for voice reply"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1;->this$0:Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;->access$getP$$p(Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1;

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1;->$subscription:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1;->$token:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 p2, 0x0

    invoke-direct {v3, p1, p0, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1;-><init>(Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplySubscription;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
