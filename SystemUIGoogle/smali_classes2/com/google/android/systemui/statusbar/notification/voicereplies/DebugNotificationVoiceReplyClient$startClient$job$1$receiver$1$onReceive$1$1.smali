.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1$1;

    invoke-direct {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1$1;-><init>()V

    sput-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1$1;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient$startClient$job$1$receiver$1$onReceive$1$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    const-string p0, "NotifVoiceReplyDebug"

    const-string v0, "voice reply session failed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
