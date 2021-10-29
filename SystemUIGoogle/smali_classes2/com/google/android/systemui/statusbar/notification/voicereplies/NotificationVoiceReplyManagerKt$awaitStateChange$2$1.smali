.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->awaitStateChange(Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $cb:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$cb$1;

.field final synthetic $this_awaitStateChange:Lcom/android/systemui/statusbar/NotificationShadeWindowController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$cb$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$1;->$this_awaitStateChange:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$1;->$cb:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$cb$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$1;->$this_awaitStateChange:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$1;->$cb:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$awaitStateChange$2$cb$1;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->unregisterCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V

    return-void
.end method
