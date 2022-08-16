.class public interface abstract Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;
.super Ljava/lang/Object;
.source "NotificationRemoteInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract handleRemoteViewClick(Landroid/app/PendingIntent;ZLcom/android/systemui/statusbar/NotificationRemoteInputManager$1$$ExternalSyntheticLambda0;)Z
.end method

.method public abstract onLockedRemoteInput(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
.end method

.method public abstract onLockedWorkRemoteInput(ILandroid/view/View;)V
.end method

.method public abstract onMakeExpandedVisibleForRemoteInput(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;ZLcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;)V
.end method

.method public abstract shouldHandleRemoteInput()Z
.end method
