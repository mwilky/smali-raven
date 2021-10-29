.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NotificationVoiceReplyManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget;->awaitFocusState(Lcom/android/systemui/statusbar/policy/RemoteInputView;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.field final synthetic $listener:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;

.field final synthetic $this_awaitFocusState:Lcom/android/systemui/statusbar/policy/RemoteInputView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$1;->$this_awaitFocusState:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$1;->$listener:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$1;->$this_awaitFocusState:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$1;->$listener:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyTarget$awaitFocusState$2$listener$1;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->removeOnEditTextFocusChangedListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method
