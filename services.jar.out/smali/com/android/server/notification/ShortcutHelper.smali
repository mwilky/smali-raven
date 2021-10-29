.class public Lcom/android/server/notification/ShortcutHelper;
.super Ljava/lang/Object;
.source "ShortcutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ShortcutHelper$ShortcutListener;
    }
.end annotation


# static fields
.field private static final SHARING_FILTER:Landroid/content/IntentFilter;

.field private static final TAG:Ljava/lang/String; = "ShortcutHelper"


# instance fields
.field private mActiveShortcutBubbles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLauncherAppsCallback:Landroid/content/pm/LauncherApps$Callback;

.field private mLauncherAppsCallbackRegistered:Z

.field private mLauncherAppsService:Landroid/content/pm/LauncherApps;

.field private mShortcutListener:Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

.field private mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/server/notification/ShortcutHelper;->SHARING_FILTER:Landroid/content/IntentFilter;

    :try_start_0
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ShortcutHelper"

    const-string v2, "Bad mime type"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method constructor <init>(Landroid/content/pm/LauncherApps;Lcom/android/server/notification/ShortcutHelper$ShortcutListener;Landroid/content/pm/ShortcutServiceInternal;Landroid/os/UserManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/notification/ShortcutHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/ShortcutHelper$1;-><init>(Lcom/android/server/notification/ShortcutHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallback:Landroid/content/pm/LauncherApps$Callback;

    iput-object p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    iput-object p2, p0, Lcom/android/server/notification/ShortcutHelper;->mShortcutListener:Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

    iput-object p3, p0, Lcom/android/server/notification/ShortcutHelper;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iput-object p4, p0, Lcom/android/server/notification/ShortcutHelper;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/ShortcutHelper;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/ShortcutHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/notification/ShortcutHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/notification/ShortcutHelper;)Landroid/content/pm/LauncherApps$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallback:Landroid/content/pm/LauncherApps$Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/ShortcutHelper;)Landroid/content/pm/LauncherApps;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/ShortcutHelper;)Lcom/android/server/notification/ShortcutHelper$ShortcutListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mShortcutListener:Lcom/android/server/notification/ShortcutHelper$ShortcutListener;

    return-object v0
.end method

.method public static isConversationShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutServiceInternal;I)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method cacheShortcut(Landroid/content/pm/ShortcutInfo;Landroid/os/UserHandle;)V
    .locals 8

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/ShortcutHelper;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v6

    const/16 v7, 0x4000

    const-string v3, "android"

    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/ShortcutServiceInternal;->cacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    :cond_0
    return-void
.end method

.method getValidShortcutInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;
    .locals 8

    iget-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/notification/ShortcutHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p3}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    invoke-virtual {v0, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    const/16 v4, 0xc11

    invoke-virtual {v0, v4}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    iget-object v4, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    invoke-virtual {v4, v0, p3}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    goto :goto_0

    :cond_2
    move-object v5, v1

    :goto_0
    nop

    iget-object v6, p0, Lcom/android/server/notification/ShortcutHelper;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/server/notification/ShortcutHelper;->isConversationShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutServiceInternal;I)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_3

    nop

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_3
    nop

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_4
    :goto_1
    nop

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :cond_5
    :goto_2
    return-object v1
.end method

.method maybeListenForShortcutChangesForBubbles(Lcom/android/server/notification/NotificationRecord;ZLandroid/os/Handler;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    if-nez p2, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    iget-object v3, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallback:Landroid/content/pm/LauncherApps$Callback;

    invoke-virtual {v2, v3, p3}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    :cond_2
    goto/16 :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    goto :goto_1

    :cond_6
    :goto_2
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-boolean v2, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    iget-object v3, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallback:Landroid/content/pm/LauncherApps$Callback;

    invoke-virtual {v2, v3}, Landroid/content/pm/LauncherApps;->unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    :cond_8
    :goto_3
    return-void
.end method

.method setLauncherApps(Landroid/content/pm/LauncherApps;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    return-void
.end method

.method setShortcutServiceInternal(Landroid/content/pm/ShortcutServiceInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/ShortcutHelper;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    return-void
.end method

.method setUserManager(Landroid/os/UserManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/ShortcutHelper;->mUserManager:Landroid/os/UserManager;

    return-void
.end method
