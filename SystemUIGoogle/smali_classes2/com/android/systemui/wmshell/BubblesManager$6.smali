.class Lcom/android/systemui/wmshell/BubblesManager$6;
.super Ljava/lang/Object;
.source "BubblesManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wmshell/BubblesManager;->setupNEM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wmshell/BubblesManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/wmshell/BubblesManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$6;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/NotificationVisibility;ZI)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$6;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wmshell/BubblesManager;->onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onNotificationRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$6;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wmshell/BubblesManager;->onRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public onPendingEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$6;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wmshell/BubblesManager;->onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onPreEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$6;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wmshell/BubblesManager;->onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
