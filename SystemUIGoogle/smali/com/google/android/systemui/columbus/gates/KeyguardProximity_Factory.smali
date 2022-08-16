.class public final Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;
.super Ljava/lang/Object;
.source "KeyguardProximity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final contextProvider:Ljavax/inject/Provider;

.field public final keyguardGateProvider:Ljavax/inject/Provider;

.field public final proximityProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p4, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;->keyguardGateProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;->proximityProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;->keyguardGateProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;->proximityProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/gates/Proximity;

    new-instance v2, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/gates/Proximity;)V

    return-object v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;->keyguardGateProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardProximity_Factory;->proximityProvider:Ljavax/inject/Provider;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    :goto_1
    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
