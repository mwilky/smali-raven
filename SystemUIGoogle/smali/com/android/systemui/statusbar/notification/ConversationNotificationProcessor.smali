.class public final Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;
.super Ljava/lang/Object;
.source "ConversationNotifications.kt"


# instance fields
.field private final conversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

.field private final launcherApps:Landroid/content/pm/LauncherApps;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherApps;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V
    .locals 1

    const-string v0, "launcherApps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationNotificationManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;->launcherApps:Landroid/content/pm/LauncherApps;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;->conversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    return-void
.end method


# virtual methods
.method public final processNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Builder;)V
    .locals 3

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recoveredBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Notification$MessagingStyle;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Notification$MessagingStyle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/Notification$MessagingStyle;->setConversationType(I)Landroid/app/Notification$MessagingStyle;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getConversationShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;->launcherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v2, v1}, Landroid/content/pm/LauncherApps;->getShortcutIcon(Landroid/content/pm/ShortcutInfo;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$MessagingStyle;->setShortcutIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v1}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;->conversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->getUnreadCount(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$Builder;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$MessagingStyle;->setUnreadMessageCount(I)Landroid/app/Notification$MessagingStyle;

    return-void
.end method
