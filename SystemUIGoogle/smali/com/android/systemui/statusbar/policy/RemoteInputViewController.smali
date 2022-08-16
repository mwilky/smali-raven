.class public interface abstract Lcom/android/systemui/statusbar/policy/RemoteInputViewController;
.super Ljava/lang/Object;
.source "RemoteInputViewController.kt"


# virtual methods
.method public abstract addOnSendRemoteInputListener(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1$listener$1;)V
.end method

.method public abstract bind()V
.end method

.method public abstract close()V
.end method

.method public abstract getPendingIntent()Landroid/app/PendingIntent;
.end method

.method public abstract getRemoteInput()Landroid/app/RemoteInput;
.end method

.method public abstract getRemoteInputs()[Landroid/app/RemoteInput;
.end method

.method public abstract getRevealParams()Lcom/android/systemui/statusbar/policy/RemoteInputView$RevealParams;
.end method

.method public abstract isActive()Z
.end method

.method public abstract removeOnSendRemoteInputListener(Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$logUiEventsForActivatedVoiceReplyInputs$2$1$sendEventJob$1$listener$1;)V
.end method

.method public abstract setBouncerChecker(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;)V
.end method

.method public abstract setEditedSuggestionInfo(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;)V
.end method

.method public abstract setPendingIntent(Landroid/app/PendingIntent;)V
.end method

.method public abstract setRemoteInput(Landroid/app/RemoteInput;)V
.end method

.method public abstract setRemoteInputs([Landroid/app/RemoteInput;)V
.end method

.method public abstract setRevealParams(Lcom/android/systemui/statusbar/policy/RemoteInputView$RevealParams;)V
.end method

.method public abstract stealFocusFrom(Lcom/android/systemui/statusbar/policy/RemoteInputViewController;)V
.end method

.method public abstract unbind()V
.end method

.method public abstract updatePendingIntentFromActions([Landroid/app/Notification$Action;)Z
.end method
