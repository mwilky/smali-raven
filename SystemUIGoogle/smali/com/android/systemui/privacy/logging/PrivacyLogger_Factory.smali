.class public final Lcom/android/systemui/privacy/logging/PrivacyLogger_Factory;
.super Ljava/lang/Object;
.source "PrivacyLogger_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final bufferProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger_Factory;->bufferProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger_Factory;->bufferProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinatorLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    return-object v0

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger_Factory;->bufferProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const-class v0, Landroid/os/PowerExemptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerExemptionManager;

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger_Factory;->bufferProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    new-instance v0, Lcom/android/systemui/privacy/logging/PrivacyLogger;

    invoke-direct {v0, p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    return-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger_Factory;->bufferProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/NetworkController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkController;->getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
