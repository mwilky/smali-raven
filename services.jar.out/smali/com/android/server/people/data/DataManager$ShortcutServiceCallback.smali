.class Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Landroid/content/pm/LauncherApps$ShortcutChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShortcutServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method private constructor <init>(Lcom/android/server/people/data/DataManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;-><init>(Lcom/android/server/people/data/DataManager;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onShortcutsAddedOrUpdated$0$DataManager$ShortcutServiceCallback(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    iget-object v3, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v3}, Lcom/android/server/people/data/DataManager;->access$1900(Lcom/android/server/people/data/DataManager;)Landroid/content/pm/ShortcutServiceInternal;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/server/notification/ShortcutHelper;->isConversationShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutServiceInternal;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/people/data/ConversationInfo;->isShortcutCachedForNotification()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/16 v6, 0x1d

    invoke-static {v4, v5, v6}, Lcom/android/server/people/data/DataManager;->access$2000(Lcom/android/server/people/data/DataManager;II)V

    :cond_2
    iget-object v3, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {v3, v2}, Lcom/android/server/people/data/DataManager;->addOrUpdateConversationInfo(Landroid/content/pm/ShortcutInfo;)V

    :cond_3
    goto :goto_0

    :cond_4
    return-void
.end method

.method public synthetic lambda$onShortcutsRemoved$1$DataManager$ShortcutServiceCallback(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .locals 6

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v1}, Lcom/android/server/people/data/DataManager;->access$900(Lcom/android/server/people/data/DataManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/people/data/PackageData;->deleteDataForConversation(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v3}, Lcom/android/server/people/data/DataManager;->access$1800(Lcom/android/server/people/data/DataManager;)Lcom/android/server/notification/NotificationManagerInternal;

    move-result-object v3

    invoke-interface {v3, p1, v0, v2}, Lcom/android/server/notification/NotificationManagerInternal;->onConversationRemoved(Ljava/lang/String;ILjava/util/Set;)V

    :cond_2
    return-void
.end method

.method public onShortcutsAddedOrUpdated(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v0}, Lcom/android/server/people/data/DataManager;->access$1000(Lcom/android/server/people/data/DataManager;)Lcom/android/server/people/data/DataManager$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/people/data/DataManager$Injector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onShortcutsRemoved(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v0}, Lcom/android/server/people/data/DataManager;->access$1000(Lcom/android/server/people/data/DataManager;)Lcom/android/server/people/data/DataManager$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/people/data/DataManager$Injector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
