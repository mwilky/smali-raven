.class final Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1$1;
.super Ljava/lang/Object;
.source "ConversationNotifications.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1;->onExpansionChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field final synthetic $isExpanded:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;


# direct methods
.method constructor <init>(ZLcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1$1;->$isExpanded:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1$1;->$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onEntryInflated$1$1;->$isExpanded:Z

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;->access$onEntryInflated$updateCount(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    return-void
.end method
