.class public final Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController_Factory;
.super Ljava/lang/Object;
.source "ExpandableNotificationRowDragController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final headsUpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController_Factory;->headsUpManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController_Factory;->headsUpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController_Factory;->get()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;

    move-result-object p0

    return-object p0
.end method
