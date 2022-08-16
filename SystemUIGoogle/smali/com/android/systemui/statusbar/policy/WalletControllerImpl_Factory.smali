.class public final Lcom/android/systemui/statusbar/policy/WalletControllerImpl_Factory;
.super Ljava/lang/Object;
.source "WalletControllerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final quickAccessWalletClientProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/policy/WalletControllerImpl_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WalletControllerImpl_Factory;->quickAccessWalletClientProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/WalletControllerImpl_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WalletControllerImpl_Factory;->quickAccessWalletClientProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const-class v0, Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/projection/MediaProjectionManager;

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WalletControllerImpl_Factory;->quickAccessWalletClientProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    new-instance v0, Lcom/android/systemui/statusbar/policy/WalletControllerImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/WalletControllerImpl;-><init>(Landroid/service/quickaccesswallet/QuickAccessWalletClient;)V

    return-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WalletControllerImpl_Factory;->quickAccessWalletClientProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    const v0, 0x7f0b0533

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
