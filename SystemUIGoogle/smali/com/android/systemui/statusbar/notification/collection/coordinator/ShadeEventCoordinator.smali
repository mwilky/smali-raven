.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;
.super Ljava/lang/Object;
.source "ShadeEventCoordinator.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;
.implements Lcom/android/systemui/statusbar/notification/collection/render/NotifShadeEventSource;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShadeEventCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShadeEventCoordinator.kt\ncom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1#2:80\n*E\n"
.end annotation


# instance fields
.field private mEntryRemoved:Z

.field private mEntryRemovedByUser:Z

.field private final mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;

.field private final mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator$mNotifCollectionListener$1;

.field private mNotifRemovedByUserCallback:Ljava/lang/Runnable;

.field private mShadeEmptiedCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;)V
    .locals 1

    const-string v0, "mLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator$mNotifCollectionListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator$mNotifCollectionListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator$mNotifCollectionListener$1;

    return-void
.end method

.method public static final synthetic access$onBeforeRenderList(Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->onBeforeRenderList(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setMEntryRemoved$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mEntryRemoved:Z

    return-void
.end method

.method public static final synthetic access$setMEntryRemovedByUser$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mEntryRemovedByUser:Z

    return-void
.end method

.method private final onBeforeRenderList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mEntryRemoved:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;->logShadeEmptied()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mShadeEmptiedCallback:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mEntryRemoved:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mEntryRemovedByUser:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;->logNotifRemovedByUser()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mNotifRemovedByUserCallback:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mEntryRemoved:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mEntryRemovedByUser:Z

    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    const-string v0, "pipeline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mNotifCollectionListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator$mNotifCollectionListener$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator$attach$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnBeforeRenderListListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;)V

    return-void
.end method

.method public setNotifRemovedByUserCallback(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mNotifRemovedByUserCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mNotifRemovedByUserCallback:Ljava/lang/Runnable;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "mNotifRemovedByUserCallback already set"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setShadeEmptiedCallback(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mShadeEmptiedCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;->mShadeEmptiedCallback:Ljava/lang/Runnable;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "mShadeEmptiedCallback already set"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method