.class public interface abstract Lcom/android/wm/shell/bubbles/Bubbles;
.super Ljava/lang/Object;
.source "Bubbles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;,
        Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;,
        Lcom/android/wm/shell/bubbles/Bubbles$SuppressionChangedListener;,
        Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;
    }
.end annotation


# virtual methods
.method public abstract collapseStack()V
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract expandStackAndSelectBubble(Lcom/android/wm/shell/bubbles/Bubble;)V
.end method

.method public abstract expandStackAndSelectBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
.end method

.method public abstract getBubbleWithShortcutId(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;
.end method

.method public abstract handleDismissalInterception(Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/List;Ljava/util/function/IntConsumer;Ljava/util/concurrent/Executor;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/bubbles/BubbleEntry;",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/BubbleEntry;",
            ">;",
            "Ljava/util/function/IntConsumer;",
            "Ljava/util/concurrent/Executor;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract isBubbleExpanded(Ljava/lang/String;)Z
.end method

.method public abstract isBubbleNotificationSuppressedFromShade(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isStackExpanded()Z
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

.method public abstract onTaskbarChanged(Landroid/os/Bundle;)V
.end method

.method public abstract onUserChanged(I)V
.end method

.method public abstract onZenStateChanged()V
.end method

.method public abstract removeSuppressedSummaryIfNecessary(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setBubbleScrim(Landroid/view/View;Ljava/util/function/BiConsumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/Looper;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setExpandListener(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V
.end method

.method public abstract setSysuiProxy(Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;)V
.end method

.method public abstract updateForThemeChanges()V
.end method
