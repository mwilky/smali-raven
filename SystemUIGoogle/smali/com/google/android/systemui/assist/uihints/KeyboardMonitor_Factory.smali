.class public final Lcom/google/android/systemui/assist/uihints/KeyboardMonitor_Factory;
.super Ljava/lang/Object;
.source "KeyboardMonitor_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final commandQueueOptionalProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor_Factory;->commandQueueOptionalProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor_Factory;->commandQueueOptionalProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;

    invoke-direct {v1, v0, p0}, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;-><init>(Landroid/content/Context;Ljava/util/Optional;)V

    return-object v1

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor_Factory;->commandQueueOptionalProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;

    new-instance v1, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;

    invoke-direct {v1, v0, p0}, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;-><init>(Ljava/util/List;Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
