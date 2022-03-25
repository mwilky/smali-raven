.class public Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;
.super Ljava/lang/Object;
.source "AppOpsCoordinator.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field private final mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

.field private final mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

.field private final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

.field private mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field private final mNotifSectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ForegroundServiceController;Lcom/android/systemui/appops/AppOpsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$1;

    const-string v1, "AppOpsCoordinator"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$2;

    const-string v1, "ForegroundService"

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mNotifSectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;)Lcom/android/systemui/ForegroundServiceController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    return-object p0
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mNotifFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPreGroupFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V

    return-void
.end method

.method public getSectioner()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mNotifSectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    return-object p0
.end method
