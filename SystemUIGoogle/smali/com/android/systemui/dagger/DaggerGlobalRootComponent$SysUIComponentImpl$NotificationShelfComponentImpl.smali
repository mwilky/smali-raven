.class final Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;
.super Ljava/lang/Object;
.source "DaggerGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationShelfComponentImpl"
.end annotation


# instance fields
.field private activatableNotificationViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;",
            ">;"
        }
    .end annotation
.end field

.field private expandableOutlineViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;",
            ">;"
        }
    .end annotation
.end field

.field private expandableViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableViewController;",
            ">;"
        }
    .end annotation
.end field

.field private factoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationTapHelper$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private notificationShelfControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShelfController;",
            ">;"
        }
    .end annotation
.end field

.field private notificationShelfProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShelf;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p2}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;->initialize(Lcom/android/systemui/statusbar/NotificationShelf;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/dagger/DaggerGlobalRootComponent$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;Lcom/android/systemui/statusbar/NotificationShelf;)V

    return-void
.end method

.method private initialize(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 7

    invoke-static {p1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;->notificationShelfProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$9100(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$3100(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper_Factory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationTapHelper_Factory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;->factoryProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;->notificationShelfProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableViewController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ExpandableViewController_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;->expandableViewControllerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;->notificationShelfProvider:Ljavax/inject/Provider;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController_Factory;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;->expandableOutlineViewControllerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;->notificationShelfProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;->factoryProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object p1, p1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-static {p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->access$4800(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$9100(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$9200(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;->activatableNotificationViewControllerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;->notificationShelfProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$9600(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-static {v2}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->access$10100(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/systemui/statusbar/NotificationShelfController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationShelfController_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;->notificationShelfControllerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public getNotificationShelfController()Lcom/android/systemui/statusbar/NotificationShelfController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$NotificationShelfComponentImpl;->notificationShelfControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationShelfController;

    return-object p0
.end method
