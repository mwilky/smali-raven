.class public final Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;
.super Ljava/lang/Object;
.source "LockscreenTargetFilter.kt"

# interfaces
.implements Lcom/android/systemui/smartspace/SmartspaceTargetFilter;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockscreenTargetFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockscreenTargetFilter.kt\ncom/android/systemui/smartspace/filters/LockscreenTargetFilter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,152:1\n1849#2,2:153\n1849#2,2:155\n1849#2,2:157\n*S KotlinDebug\n*F\n+ 1 LockscreenTargetFilter.kt\ncom/android/systemui/smartspace/filters/LockscreenTargetFilter\n*L\n51#1:153,2\n59#1:155,2\n150#1:157,2\n*E\n"
.end annotation


# instance fields
.field public final contentResolver:Landroid/content/ContentResolver;

.field public final execution:Lcom/android/systemui/util/concurrency/Execution;

.field public listeners:Ljava/util/LinkedHashSet;

.field public managedUserHandle:Landroid/os/UserHandle;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final settingsObserver:Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter$settingsObserver$1;

.field public showSensitiveContentForCurrentUser:Z

.field public showSensitiveContentForManagedUser:Z

.field public final uiExecutor:Ljava/util/concurrent/Executor;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final userTrackerCallback:Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter$userTrackerCallback$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/concurrency/Execution;Landroid/os/Handler;Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p2, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p3, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->execution:Lcom/android/systemui/util/concurrency/Execution;

    iput-object p5, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->contentResolver:Landroid/content/ContentResolver;

    iput-object p6, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->uiExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->listeners:Ljava/util/LinkedHashSet;

    new-instance p1, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter$settingsObserver$1;

    invoke-direct {p1, p0, p4}, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter$settingsObserver$1;-><init>(Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->settingsObserver:Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter$settingsObserver$1;

    new-instance p1, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter$userTrackerCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter$userTrackerCallback$1;-><init>(Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;)V

    iput-object p1, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->userTrackerCallback:Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter$userTrackerCallback$1;

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$filterListener$1;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v1, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->userTrackerCallback:Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter$userTrackerCallback$1;

    iget-object v2, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->uiExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v1, v2}, Lcom/android/systemui/settings/UserTracker;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-interface {v1, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->settingsObserver:Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter$settingsObserver$1;

    const/4 v3, -0x1

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->updateUserContentSettings()V

    return-void
.end method

.method public final filterSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v1}, Lcom/android/systemui/settings/UserTracker;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->isSensitive()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->showSensitiveContentForCurrentUser:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->managedUserHandle:Landroid/os/UserHandle;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v0}, Lcom/android/systemui/settings/UserTracker;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->isSensitive()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->showSensitiveContentForManagedUser:Z

    if-eqz p0, :cond_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final updateUserContentSettings()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v1, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v1}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result v1

    const-string v2, "lock_screen_allow_private_notifications"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->showSensitiveContentForCurrentUser:Z

    iput-boolean v0, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->showSensitiveContentForCurrentUser:Z

    if-eq v4, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/smartspace/SmartspaceTargetFilter$Listener;

    invoke-interface {v4}, Lcom/android/systemui/smartspace/SmartspaceTargetFilter$Listener;->onCriteriaChanged()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v0}, Lcom/android/systemui/settings/UserTracker;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v5

    :goto_2
    iput-object v0, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->managedUserHandle:Landroid/os/UserHandle;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_3
    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v3, v1

    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->showSensitiveContentForManagedUser:Z

    iput-boolean v3, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->showSensitiveContentForManagedUser:Z

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/smartspace/SmartspaceTargetFilter$Listener;

    invoke-interface {v1}, Lcom/android/systemui/smartspace/SmartspaceTargetFilter$Listener;->onCriteriaChanged()V

    goto :goto_4

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/smartspace/SmartspaceTargetFilter$Listener;

    invoke-interface {v0}, Lcom/android/systemui/smartspace/SmartspaceTargetFilter$Listener;->onCriteriaChanged()V

    goto :goto_5

    :cond_7
    return-void
.end method
