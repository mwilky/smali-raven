.class public final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIFactory;
.super Ljava/lang/Object;
.source "WMShellBaseModule_ProvideCompatUIFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final compatUIControllerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIFactory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIFactory;->compatUIControllerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIFactory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIFactory;->compatUIControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/MessageRouterImpl;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    return-object v0

    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIFactory;->compatUIControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;->getNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIFactory;->compatUIControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/logging/UiEventLogger;

    new-instance v0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    return-object v0

    :pswitch_3
    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIFactory;->compatUIControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogBufferFactory;

    const/4 v0, 0x1

    const/16 v1, 0x14

    const-string v2, "MediaCarouselCtlrLog"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/log/LogBufferFactory;->create(ILjava/lang/String;Z)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIFactory;->compatUIControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIFactory;->compatUIControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/compatui/CompatUIController;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mImpl:Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIFactory;->compatUIControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
