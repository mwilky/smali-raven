.class public final Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder_Factory;
.super Ljava/lang/Object;
.source "HeadsUpViewBinder_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;",
        ">;"
    }
.end annotation


# instance fields
.field private final bindStageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationMessagingUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/util/NotificationMessagingUtil;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/util/NotificationMessagingUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder_Factory;->notificationMessagingUtilProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder_Factory;->bindStageProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/util/NotificationMessagingUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/internal/util/NotificationMessagingUtil;Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;)Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;-><init>(Lcom/android/internal/util/NotificationMessagingUtil;Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder_Factory;->notificationMessagingUtilProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/NotificationMessagingUtil;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder_Factory;->bindStageProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder_Factory;->newInstance(Lcom/android/internal/util/NotificationMessagingUtil;Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;)Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder_Factory;->get()Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    move-result-object p0

    return-object p0
.end method
