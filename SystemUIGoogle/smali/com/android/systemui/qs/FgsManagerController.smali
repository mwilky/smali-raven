.class public final Lcom/android/systemui/qs/FgsManagerController;
.super Landroid/app/IForegroundServiceObserver$Stub;
.source "FgsManagerController.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/FgsManagerController$OnNumberOfPackagesChangedListener;,
        Lcom/android/systemui/qs/FgsManagerController$OnDialogDismissedListener;,
        Lcom/android/systemui/qs/FgsManagerController$AppListAdapter;,
        Lcom/android/systemui/qs/FgsManagerController$UserPackage;,
        Lcom/android/systemui/qs/FgsManagerController$StartTimeAndTokens;,
        Lcom/android/systemui/qs/FgsManagerController$AppItemViewHolder;,
        Lcom/android/systemui/qs/FgsManagerController$RunningApp;,
        Lcom/android/systemui/qs/FgsManagerController$UIControl;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFgsManagerController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FgsManagerController.kt\ncom/android/systemui/qs/FgsManagerController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 ConvenienceExtensions.kt\ncom/android/systemui/util/ConvenienceExtensionsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,623:1\n1547#2:624\n1618#2,3:625\n1768#2,4:635\n1849#2,2:639\n1849#2,2:641\n764#2:643\n855#2,2:644\n764#2:646\n855#2,2:647\n1849#2,2:649\n1849#2,2:651\n357#3,7:628\n45#4,2:653\n45#4,4:656\n47#4,2:661\n45#4,2:663\n45#4,4:666\n47#4,2:671\n211#5:655\n212#5:660\n211#5:665\n212#5:670\n*S KotlinDebug\n*F\n+ 1 FgsManagerController.kt\ncom/android/systemui/qs/FgsManagerController\n*L\n154#1:624\n154#1:625,3\n248#1:635,4\n258#1:639,2\n272#1:641,2\n324#1:643\n324#1:644,2\n328#1:646\n328#1:647,2\n330#1:649,2\n340#1:651,2\n195#1:628,7\n596#1:653,2\n599#1:656,4\n596#1:661,2\n609#1:663,2\n612#1:666,4\n609#1:671,2\n597#1:655\n597#1:660\n610#1:665\n610#1:670\n*E\n"
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final activityManager:Landroid/app/IActivityManager;

.field public final appListAdapter:Lcom/android/systemui/qs/FgsManagerController$AppListAdapter;

.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public changesSinceDialog:Z

.field public final context:Landroid/content/Context;

.field public currentProfileIds:Ljava/util/LinkedHashSet;

.field public final deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

.field public dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public initialized:Z

.field public isAvailable:Z

.field public lastNumberOfVisiblePackages:I

.field public final lock:Ljava/lang/Object;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final onDialogDismissedListeners:Ljava/util/LinkedHashSet;

.field public final onNumberOfPackagesChangedListeners:Ljava/util/LinkedHashSet;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public runningApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/systemui/qs/FgsManagerController$UserPackage;",
            "Lcom/android/systemui/qs/FgsManagerController$RunningApp;",
            ">;"
        }
    .end annotation
.end field

.field public final runningServiceTokens:Ljava/util/LinkedHashMap;

.field public showFooterDot:Z

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final userTrackerCallback:Lcom/android/systemui/qs/FgsManagerController$userTrackerCallback$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/qs/FgsManagerController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/time/SystemClock;Landroid/app/IActivityManager;Landroid/content/pm/PackageManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/animation/DialogLaunchAnimator;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/IForegroundServiceObserver$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/FgsManagerController;->mainExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/qs/FgsManagerController;->backgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/qs/FgsManagerController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p5, p0, Lcom/android/systemui/qs/FgsManagerController;->activityManager:Landroid/app/IActivityManager;

    iput-object p6, p0, Lcom/android/systemui/qs/FgsManagerController;->packageManager:Landroid/content/pm/PackageManager;

    iput-object p7, p0, Lcom/android/systemui/qs/FgsManagerController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p8, p0, Lcom/android/systemui/qs/FgsManagerController;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    iput-object p9, p0, Lcom/android/systemui/qs/FgsManagerController;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    iput-object p10, p0, Lcom/android/systemui/qs/FgsManagerController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p11, p0, Lcom/android/systemui/qs/FgsManagerController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController;->lock:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController;->currentProfileIds:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController;->runningServiceTokens:Ljava/util/LinkedHashMap;

    new-instance p1, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter;-><init>(Lcom/android/systemui/qs/FgsManagerController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController;->appListAdapter:Lcom/android/systemui/qs/FgsManagerController$AppListAdapter;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController;->runningApps:Landroid/util/ArrayMap;

    new-instance p1, Lcom/android/systemui/qs/FgsManagerController$userTrackerCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/FgsManagerController$userTrackerCallback$1;-><init>(Lcom/android/systemui/qs/FgsManagerController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController;->userTrackerCallback:Lcom/android/systemui/qs/FgsManagerController$userTrackerCallback$1;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController;->onNumberOfPackagesChangedListeners:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController;->onDialogDismissedListeners:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    new-instance p2, Landroid/util/IndentingPrintWriter;

    invoke-direct {p2, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object p1, p0, Lcom/android/systemui/qs/FgsManagerController;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string v0, "current user profiles = "

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerController;->currentProfileIds:Ljava/util/LinkedHashSet;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "changesSinceDialog="

    iget-boolean v1, p0, Lcom/android/systemui/qs/FgsManagerController;->changesSinceDialog:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Running service tokens: ["

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerController;->runningServiceTokens:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/FgsManagerController$UserPackage;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/FgsManagerController$StartTimeAndTokens;

    const-string/jumbo v3, "{"

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2, p2}, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v1, p2}, Lcom/android/systemui/qs/FgsManagerController$StartTimeAndTokens;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v1, "}"

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Loaded package UI info: ["

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerController;->runningApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/FgsManagerController$UserPackage;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/FgsManagerController$RunningApp;

    const-string/jumbo v3, "{"

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2, p2}, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->dump(Landroid/util/IndentingPrintWriter;)V

    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-virtual {v1, p2, v2}, Lcom/android/systemui/qs/FgsManagerController$RunningApp;->dump(Landroid/util/IndentingPrintWriter;Lcom/android/systemui/util/time/SystemClock;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v1, "}"

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p0, "]"

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final getNumRunningPackages()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerController;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/FgsManagerController;->getNumVisiblePackagesLocked()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getNumVisiblePackagesLocked()I
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerController;->runningServiceTokens:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/FgsManagerController$UserPackage;

    iget-boolean v4, v3, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->uiControlInitialized:Z

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->updateUiControl()V

    :cond_2
    iget-object v4, v3, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->uiControl:Lcom/android/systemui/qs/FgsManagerController$UIControl;

    sget-object v5, Lcom/android/systemui/qs/FgsManagerController$UIControl;->HIDE_ENTRY:Lcom/android/systemui/qs/FgsManagerController$UIControl;

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/FgsManagerController;->currentProfileIds:Ljava/util/LinkedHashSet;

    iget v3, v3, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "Count overflow has happened."

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    move v2, v1

    :goto_2
    return v2
.end method

.method public final onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerController;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/systemui/qs/FgsManagerController$UserPackage;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/systemui/qs/FgsManagerController$UserPackage;-><init>(Lcom/android/systemui/qs/FgsManagerController;ILjava/lang/String;)V

    if-eqz p4, :cond_1

    iget-object p2, p0, Lcom/android/systemui/qs/FgsManagerController;->runningServiceTokens:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_0

    new-instance p3, Lcom/android/systemui/qs/FgsManagerController$StartTimeAndTokens;

    iget-object p4, p0, Lcom/android/systemui/qs/FgsManagerController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-direct {p3, p4}, Lcom/android/systemui/qs/FgsManagerController$StartTimeAndTokens;-><init>(Lcom/android/systemui/util/time/SystemClock;)V

    invoke-interface {p2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast p3, Lcom/android/systemui/qs/FgsManagerController$StartTimeAndTokens;

    iget-object p2, p3, Lcom/android/systemui/qs/FgsManagerController$StartTimeAndTokens;->tokens:Ljava/util/LinkedHashSet;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/qs/FgsManagerController;->runningServiceTokens:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/FgsManagerController$StartTimeAndTokens;

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p2, Lcom/android/systemui/qs/FgsManagerController$StartTimeAndTokens;->tokens:Ljava/util/LinkedHashSet;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p2, Lcom/android/systemui/qs/FgsManagerController$StartTimeAndTokens;->tokens:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-ne p1, p3, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move p3, p4

    :goto_1
    if-eqz p3, :cond_4

    iget-object p1, p0, Lcom/android/systemui/qs/FgsManagerController;->runningServiceTokens:Ljava/util/LinkedHashMap;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/FgsManagerController;->updateNumberOfVisibleRunningPackagesLocked()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/FgsManagerController;->updateAppItemsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final showDialog(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerController;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerController;->dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerController;->runningServiceTokens:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/FgsManagerController$UserPackage;

    invoke-virtual {v2}, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->updateUiControl()V

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerController;->context:Landroid/content/Context;

    invoke-direct {v7, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f130307

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    const v1, 0x7f130306

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v3, p0, Lcom/android/systemui/qs/FgsManagerController;->appListAdapter:Lcom/android/systemui/qs/FgsManagerController$AppListAdapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070241

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    iput-object v7, p0, Lcom/android/systemui/qs/FgsManagerController;->dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v1, Lcom/android/systemui/qs/FgsManagerController$showDialog$1$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/FgsManagerController$showDialog$1$2;-><init>(Lcom/android/systemui/qs/FgsManagerController;)V

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerController;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/qs/FgsManagerController$showDialog$1$3;

    invoke-direct {v2, p1, v7, p0}, Lcom/android/systemui/qs/FgsManagerController$showDialog$1$3;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/SystemUIDialog;Lcom/android/systemui/qs/FgsManagerController;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/qs/FgsManagerController;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/qs/FgsManagerController$showDialog$1$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/FgsManagerController$showDialog$1$4;-><init>(Lcom/android/systemui/qs/FgsManagerController;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final updateAppItemsLocked()V
    .locals 16

    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/systemui/qs/FgsManagerController;->dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-nez v0, :cond_0

    iget-object v0, v9, Lcom/android/systemui/qs/FgsManagerController;->runningApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void

    :cond_0
    iget-object v0, v9, Lcom/android/systemui/qs/FgsManagerController;->runningServiceTokens:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/qs/FgsManagerController$UserPackage;

    iget-object v4, v9, Lcom/android/systemui/qs/FgsManagerController;->currentProfileIds:Ljava/util/LinkedHashSet;

    iget v5, v3, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, v3, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->uiControlInitialized:Z

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->updateUiControl()V

    :cond_2
    iget-object v4, v3, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->uiControl:Lcom/android/systemui/qs/FgsManagerController$UIControl;

    sget-object v5, Lcom/android/systemui/qs/FgsManagerController$UIControl;->HIDE_ENTRY:Lcom/android/systemui/qs/FgsManagerController$UIControl;

    if-eq v4, v5, :cond_5

    iget-object v4, v9, Lcom/android/systemui/qs/FgsManagerController;->runningApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/FgsManagerController$RunningApp;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v3, v3, Lcom/android/systemui/qs/FgsManagerController$RunningApp;->stopped:Z

    if-ne v3, v11, :cond_4

    move v3, v11

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v10

    :goto_2
    if-nez v3, :cond_5

    move v10, v11

    :cond_5
    if-eqz v10, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iget-object v0, v9, Lcom/android/systemui/qs/FgsManagerController;->runningApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/qs/FgsManagerController$UserPackage;

    iget-object v4, v9, Lcom/android/systemui/qs/FgsManagerController;->runningServiceTokens:Ljava/util/LinkedHashMap;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v11

    if-eqz v3, :cond_7

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;

    iget-object v1, v9, Lcom/android/systemui/qs/FgsManagerController;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v2, v0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->packageName:Ljava/lang/String;

    iget v3, v0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->userId:I

    invoke-virtual {v1, v2, v10, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, v9, Lcom/android/systemui/qs/FgsManagerController;->runningApps:Landroid/util/ArrayMap;

    new-instance v14, Lcom/android/systemui/qs/FgsManagerController$RunningApp;

    iget v4, v0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->userId:I

    iget-object v5, v0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->packageName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/systemui/qs/FgsManagerController;->runningServiceTokens:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/android/systemui/qs/FgsManagerController$StartTimeAndTokens;

    iget-wide v6, v3, Lcom/android/systemui/qs/FgsManagerController$StartTimeAndTokens;->startTime:J

    iget-boolean v3, v0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->uiControlInitialized:Z

    if-nez v3, :cond_9

    invoke-virtual {v0}, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->updateUiControl()V

    :cond_9
    iget-object v8, v0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->uiControl:Lcom/android/systemui/qs/FgsManagerController$UIControl;

    iget-object v3, v9, Lcom/android/systemui/qs/FgsManagerController;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v15

    iget-object v3, v9, Lcom/android/systemui/qs/FgsManagerController;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v10, v0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->userId:I

    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v3, v1, v10}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v3, v14

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/qs/FgsManagerController$RunningApp;-><init>(ILjava/lang/String;JLcom/android/systemui/qs/FgsManagerController$UIControl;)V

    iput-object v15, v14, Lcom/android/systemui/qs/FgsManagerController$RunningApp;->appLabel:Ljava/lang/CharSequence;

    iput-object v1, v14, Lcom/android/systemui/qs/FgsManagerController$RunningApp;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->packageName:Ljava/lang/String;

    iget v3, v0, Lcom/android/systemui/qs/FgsManagerController$UserPackage;->userId:I

    iget-object v1, v9, Lcom/android/systemui/qs/FgsManagerController;->runningApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/systemui/qs/FgsManagerController$RunningApp;

    iget-wide v7, v0, Lcom/android/systemui/qs/FgsManagerController$RunningApp;->timeStarted:J

    iget-object v0, v9, Lcom/android/systemui/qs/FgsManagerController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 v4, 0x1

    iget-object v10, v9, Lcom/android/systemui/qs/FgsManagerController;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v14, Lcom/android/systemui/qs/FgsManagerController$logEvent$1;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/FgsManagerController$logEvent$1;-><init>(Lcom/android/systemui/qs/FgsManagerController;Ljava/lang/String;IIJJ)V

    invoke-interface {v10, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v10, 0x0

    goto :goto_4

    :cond_a
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/FgsManagerController$UserPackage;

    iget-object v2, v9, Lcom/android/systemui/qs/FgsManagerController;->runningApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/android/systemui/qs/FgsManagerController$RunningApp;

    iget v4, v2, Lcom/android/systemui/qs/FgsManagerController$RunningApp;->userId:I

    iget-object v5, v2, Lcom/android/systemui/qs/FgsManagerController$RunningApp;->packageName:Ljava/lang/String;

    iget-wide v6, v2, Lcom/android/systemui/qs/FgsManagerController$RunningApp;->timeStarted:J

    iget-object v8, v2, Lcom/android/systemui/qs/FgsManagerController$RunningApp;->uiControl:Lcom/android/systemui/qs/FgsManagerController$UIControl;

    new-instance v10, Lcom/android/systemui/qs/FgsManagerController$RunningApp;

    move-object v3, v10

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/qs/FgsManagerController$RunningApp;-><init>(ILjava/lang/String;JLcom/android/systemui/qs/FgsManagerController$UIControl;)V

    iput-boolean v11, v10, Lcom/android/systemui/qs/FgsManagerController$RunningApp;->stopped:Z

    iget-object v3, v2, Lcom/android/systemui/qs/FgsManagerController$RunningApp;->appLabel:Ljava/lang/CharSequence;

    iput-object v3, v10, Lcom/android/systemui/qs/FgsManagerController$RunningApp;->appLabel:Ljava/lang/CharSequence;

    iget-object v2, v2, Lcom/android/systemui/qs/FgsManagerController$RunningApp;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v10, Lcom/android/systemui/qs/FgsManagerController$RunningApp;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v2, v9, Lcom/android/systemui/qs/FgsManagerController;->runningApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_b
    iget-object v0, v9, Lcom/android/systemui/qs/FgsManagerController;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/qs/FgsManagerController$updateAppItemsLocked$3;

    invoke-direct {v1, v9}, Lcom/android/systemui/qs/FgsManagerController$updateAppItemsLocked$3;-><init>(Lcom/android/systemui/qs/FgsManagerController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateNumberOfVisibleRunningPackagesLocked()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/qs/FgsManagerController;->getNumVisiblePackagesLocked()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/FgsManagerController;->lastNumberOfVisiblePackages:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/systemui/qs/FgsManagerController;->lastNumberOfVisiblePackages:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/FgsManagerController;->changesSinceDialog:Z

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerController;->onNumberOfPackagesChangedListeners:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/FgsManagerController$OnNumberOfPackagesChangedListener;

    iget-object v3, p0, Lcom/android/systemui/qs/FgsManagerController;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/systemui/qs/FgsManagerController$updateNumberOfVisibleRunningPackagesLocked$1$1;

    invoke-direct {v4, v2, v0}, Lcom/android/systemui/qs/FgsManagerController$updateNumberOfVisibleRunningPackagesLocked$1$1;-><init>(Lcom/android/systemui/qs/FgsManagerController$OnNumberOfPackagesChangedListener;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
