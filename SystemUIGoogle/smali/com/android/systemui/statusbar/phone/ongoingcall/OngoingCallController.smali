.class public final Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;
.super Ljava/lang/Object;
.source "OngoingCallController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOngoingCallController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OngoingCallController.kt\ncom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,308:1\n1819#2,2:309\n1819#2,2:311\n*E\n*S KotlinDebug\n*F\n+ 1 OngoingCallController.kt\ncom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController\n*L\n210#1,2:309\n272#1,2:311\n*E\n"
.end annotation


# instance fields
.field private final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

.field private chipView:Landroid/view/View;

.field private final featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

.field private final iActivityManager:Landroid/app/IActivityManager;

.field private isCallAppVisible:Z

.field private final logger:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mainExecutor:Ljava/util/concurrent/Executor;

.field private final notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field private final notifListener:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$notifListener$1;

.field private final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field private uidObserver:Landroid/app/IUidObserver$Stub;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;)V
    .locals 1

    const-string v0, "notifCollection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "systemClock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityStarter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainExecutor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iActivityManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mainExecutor:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->iActivityManager:Landroid/app/IActivityManager;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->logger:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->isCallAppVisible:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    new-instance p1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$notifListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$notifListener$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->notifListener:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$notifListener$1;

    return-void
.end method

.method public static final synthetic access$getActivityStarter$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method public static final synthetic access$getCallNotificationInfo$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->logger:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;

    return-object p0
.end method

.method public static final synthetic access$getMListeners$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getMainExecutor$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mainExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static final synthetic access$isCallAppVisible$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->isCallAppVisible:Z

    return p0
.end method

.method public static final synthetic access$isProcessVisibleToUser(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->isProcessVisibleToUser(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$removeChip(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->removeChip()V

    return-void
.end method

.method public static final synthetic access$setCallAppVisible$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->isCallAppVisible:Z

    return-void
.end method

.method public static final synthetic access$setCallNotificationInfo$p(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

    return-void
.end method

.method public static final synthetic access$updateChip(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->updateChip()V

    return-void
.end method

.method private final getTimeView(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;
    .locals 0

    sget p0, Lcom/android/systemui/R$id;->ongoing_call_chip_time:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;

    return-object p0
.end method

.method private final isProcessVisibleToUser(I)Z
    .locals 0

    const/4 p0, 0x2

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final removeChip()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->tearDownChipView()Lkotlin/Unit;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;->onOngoingCallStateChanged(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->uidObserver:Landroid/app/IUidObserver$Stub;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->iActivityManager:Landroid/app/IActivityManager;

    invoke-interface {p0, v0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    :cond_1
    return-void
.end method

.method private final setUpUidObserver(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->iActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;->getUid()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->getUidProcessState(ILjava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->isProcessVisibleToUser(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->isCallAppVisible:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->uidObserver:Landroid/app/IUidObserver$Stub;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->iActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$setUpUidObserver$1;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$setUpUidObserver$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->uidObserver:Landroid/app/IUidObserver$Stub;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->iActivityManager:Landroid/app/IActivityManager;

    const/4 p1, 0x1

    const/4 v1, -0x1

    invoke-interface {p0, v0, p1, v1, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    return-void
.end method

.method private final updateChip()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->chipView:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->getTimeView(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;

    move-result-object v3

    :goto_0
    if-nez v1, :cond_2

    move-object v4, v2

    goto :goto_1

    :cond_2
    sget v4, Lcom/android/systemui/R$id;->ongoing_call_chip_background:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    :goto_1
    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;->hasValidStartTime()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->setShouldHideText(Z)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;->getCallStartTime()J

    move-result-wide v6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->setBase(J)V

    invoke-virtual {v3}, Landroid/widget/Chronometer;->start()V

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;->setShouldHideText(Z)V

    invoke-virtual {v3}, Landroid/widget/Chronometer;->stop()V

    :goto_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    new-instance v3, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChip$1$1;

    invoke-direct {v3, p0, v2, v4}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$updateChip$1$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Landroid/content/Intent;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->setUpUidObserver(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;

    invoke-interface {v0, v5}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;->onOngoingCallStateChanged(Z)V

    goto :goto_4

    :cond_5
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallControllerKt;->access$getDEBUG$p()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "OngoingCallController"

    const-string v0, "Ongoing call chip view could not be found; Not displaying chip in status bar"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->addCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V

    return-void
.end method

.method public final hasOngoingCall()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->callNotificationInfo:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$CallNotificationInfo;->isOngoing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->isCallAppVisible:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final init()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FeatureFlags;->isOngoingCallStatusBarChipEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->notifListener:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$notifListener$1;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    :cond_0
    return-void
.end method

.method public final notifyChipVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->logger:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;->logChipVisibilityChanged(Z)V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->removeCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V

    return-void
.end method

.method public final setChipView(Landroid/view/View;)V
    .locals 1

    const-string v0, "chipView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->tearDownChipView()Lkotlin/Unit;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->chipView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->hasOngoingCall()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->updateChip()V

    :cond_0
    return-void
.end method

.method public final tearDownChipView()Lkotlin/Unit;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->chipView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->getTimeView(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Chronometer;->stop()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object v1
.end method
