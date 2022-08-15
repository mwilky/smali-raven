.class public Lcom/android/server/companion/CompanionApplicationController;
.super Ljava/lang/Object;
.source "CompanionApplicationController.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;,
        Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;,
        Lcom/android/server/companion/CompanionApplicationController$Callback;
    }
.end annotation


# instance fields
.field public final mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBoundCompanionApplications"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap<",
            "Ljava/util/List<",
            "Lcom/android/server/companion/CompanionDeviceServiceConnector;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mCallback:Lcom/android/server/companion/CompanionApplicationController$Callback;

.field public final mCompanionServicesRegister:Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;

.field public final mContext:Landroid/content/Context;

.field public final mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5Q6vCBSeImiLSwPvsTljfuvuzqs(Lcom/android/server/companion/CompanionApplicationController;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController;->lambda$scheduleRebinding$1(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V10cftkgzzp8L3lGUq_mQ1-BeT4(Lcom/android/server/companion/CompanionApplicationController;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController;->onPrimaryServiceBindingDied(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_c9TJtQrmIKPrcaxW_l6Na4JVB0(Lcom/android/server/companion/CompanionApplicationController;IZLandroid/content/ComponentName;)Lcom/android/server/companion/CompanionDeviceServiceConnector;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/companion/CompanionApplicationController;->lambda$bindCompanionApplication$0(IZLandroid/content/ComponentName;)Lcom/android/server/companion/CompanionDeviceServiceConnector;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/companion/CompanionApplicationController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/companion/CompanionApplicationController$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionApplicationController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/companion/CompanionApplicationController;->mCallback:Lcom/android/server/companion/CompanionApplicationController$Callback;

    new-instance p1, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;-><init>(Lcom/android/server/companion/CompanionApplicationController;Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister-IA;)V

    iput-object p1, p0, Lcom/android/server/companion/CompanionApplicationController;->mCompanionServicesRegister:Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;

    new-instance p1, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-direct {p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;-><init>(Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap-IA;)V

    iput-object p1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    new-instance p1, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-direct {p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;-><init>(Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap-IA;)V

    iput-object p1, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    return-void
.end method

.method private synthetic lambda$bindCompanionApplication$0(IZLandroid/content/ComponentName;)Lcom/android/server/companion/CompanionDeviceServiceConnector;
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p3, p2}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->newInstance(Landroid/content/Context;ILandroid/content/ComponentName;Z)Lcom/android/server/companion/CompanionDeviceServiceConnector;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$scheduleRebinding$1(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController;->onRebindingCompanionApplicationTimeout(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindCompanionApplication(ILjava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mCompanionServicesRegister:Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;->forPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "CompanionDevice_ApplicationController"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not bind companion applications u"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": eligible CompanionDeviceService not found.\nA CompanionDeviceService should declare an intent-filter for \"android.companion.CompanionDeviceService\" action and require \"android.permission.BIND_COMPANION_DEVICE_SERVICE\" permission."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->containsValueForPackage(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    new-instance v2, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionApplicationController;IZ)V

    invoke-static {v0, v2}, Lcom/android/internal/util/CollectionUtils;->map(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p3

    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->setValueForPackage(ILjava/lang/String;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/CompanionDeviceServiceConnector;

    new-instance p2, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/CompanionApplicationController;)V

    invoke-virtual {p1, p2}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->setListener(Lcom/android/server/companion/CompanionDeviceServiceConnector$Listener;)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/CompanionDeviceServiceConnector;

    invoke-virtual {p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "Companion Device Application Controller: \n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v0

    :try_start_0
    const-string v1, "  Bound Companion Applications: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "<empty>\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    :cond_0
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-static {v1, p1}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->-$$Nest$mdump(Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;Ljava/io/PrintWriter;)V

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "  Companion Applications Scheduled For Rebinding: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "<empty>\n"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1

    :cond_1
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-static {p0, p1}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->-$$Nest$mdump(Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;Ljava/io/PrintWriter;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getPrimaryServiceConnector(ILjava/lang/String;)Lcom/android/server/companion/CompanionDeviceServiceConnector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->getValueForPackage(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public isCompanionApplicationBound(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->containsValueForPackage(ILjava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notifyCompanionApplicationDeviceAppeared(Landroid/companion/AssociationInfo;)V
    .locals 2

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/companion/CompanionApplicationController;->getPrimaryServiceConnector(ILjava/lang/String;)Lcom/android/server/companion/CompanionDeviceServiceConnector;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->postOnDeviceAppeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public notifyCompanionApplicationDeviceDisappeared(Landroid/companion/AssociationInfo;)V
    .locals 2

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/companion/CompanionApplicationController;->getPrimaryServiceConnector(ILjava/lang/String;)Lcom/android/server/companion/CompanionDeviceServiceConnector;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->postOnDeviceDisappeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public onPackagesChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mCompanionServicesRegister:Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;->invalidate(I)V

    return-void
.end method

.method public final onPrimaryServiceBindingDied(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->removePackage(ILjava/lang/String;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mCallback:Lcom/android/server/companion/CompanionApplicationController$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$Callback;->onCompanionApplicationBindingDied(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController;->scheduleRebinding(ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onRebindingCompanionApplicationTimeout(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->removePackage(ILjava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mCallback:Lcom/android/server/companion/CompanionApplicationController$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$Callback;->onRebindCompanionApplicationTimeout(ILjava/lang/String;)V

    return-void
.end method

.method public final scheduleRebinding(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->setValueForPackage(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/CompanionApplicationController;ILjava/lang/String;)V

    const-wide/16 p0, 0x2710

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public unbindCompanionApplication(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->removePackage(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/CompanionDeviceServiceConnector;

    invoke-virtual {p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->postUnbind()V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
