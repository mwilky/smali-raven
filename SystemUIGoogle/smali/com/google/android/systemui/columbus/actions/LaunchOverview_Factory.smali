.class public final Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;
.super Ljava/lang/Object;
.source "LaunchOverview_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final contextProvider:Ljavax/inject/Provider;

.field public final recentsProvider:Ljavax/inject/Provider;

.field public final uiEventLoggerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p4, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;->recentsProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;->recentsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/Recents;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/logging/UiEventLogger;

    new-instance v2, Lcom/google/android/systemui/columbus/actions/LaunchOverview;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/systemui/columbus/actions/LaunchOverview;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/Recents;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;->recentsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Landroid/os/Handler;

    sget-boolean p0, Lcom/android/wm/shell/back/BackAnimationController;->IS_ENABLED:Z

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/wm/shell/back/BackAnimationController;

    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/back/BackAnimationController;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Landroid/view/SurfaceControl$Transaction;Landroid/app/IActivityTaskManager;Landroid/content/Context;Landroid/content/ContentResolver;)V

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
