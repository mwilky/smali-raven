.class public interface abstract Lcom/android/wm/shell/bubbles/Bubbles;
.super Ljava/lang/Object;
.source "Bubbles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;,
        Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;,
        Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;,
        Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;
    }
.end annotation


# virtual methods
.method public abstract collapseStack()V
.end method

.method public abstract dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract expandStackAndSelectBubble(Lcom/android/wm/shell/bubbles/Bubble;)V
.end method

.method public abstract expandStackAndSelectBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
.end method

.method public abstract getBubbleWithShortcutId(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;
.end method

.method public abstract handleDismissalInterception(Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/ArrayList;Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda1;Ljava/util/concurrent/Executor;)Z
.end method

.method public abstract isBubbleExpanded(Ljava/lang/String;)Z
.end method

.method public abstract isBubbleNotificationSuppressedFromShade(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract onConfigChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCurrentProfilesChanged(Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onEntryAdded(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
.end method

.method public abstract onEntryRemoved(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
.end method

.method public abstract onEntryUpdated(Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V
.end method

.method public abstract onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
.end method

.method public abstract onRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/NotificationListenerService$RankingMap;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/wm/shell/bubbles/BubbleEntry;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract onStatusBarStateChanged(Z)V
.end method

.method public abstract onStatusBarVisibilityChanged(Z)V
.end method

.method public abstract onUserChanged(I)V
.end method

.method public abstract onUserRemoved(I)V
.end method

.method public abstract onZenStateChanged()V
.end method

.method public abstract removeSuppressedSummaryIfNecessary(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/android/systemui/wmshell/BubblesManager$8$$ExternalSyntheticLambda0;)V
.end method

.method public abstract setExpandListener(Lcom/android/systemui/SystemUIAppComponentFactory$$ExternalSyntheticLambda0;)V
.end method

.method public abstract setSysuiProxy(Lcom/android/systemui/wmshell/BubblesManager$5;)V
.end method

.method public abstract updateForThemeChanges()V
.end method
