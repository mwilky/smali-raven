.class public final Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBubblesFactory;
.super Ljava/lang/Object;
.source "WMShellBaseModule_ProvideBubblesFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final bubbleControllerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBubblesFactory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBubblesFactory;->bubbleControllerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBubblesFactory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBubblesFactory;->bubbleControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;

    new-instance v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object v0

    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBubblesFactory;->bubbleControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;-><init>(Landroid/content/Context;)V

    return-object v0

    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBubblesFactory;->bubbleControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    :pswitch_3
    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBubblesFactory;->bubbleControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;->getNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBubblesFactory;->bubbleControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/dreams/IDreamManager;

    new-instance v0, Lcom/android/systemui/animation/DialogLaunchAnimator;

    invoke-direct {v0, p0}, Lcom/android/systemui/animation/DialogLaunchAnimator;-><init>(Landroid/service/dreams/IDreamManager;)V

    return-object v0

    :pswitch_5
    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBubblesFactory;->bubbleControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetPinnedReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetPinnedReceiver;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    return-object v0

    :pswitch_6
    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBubblesFactory;->bubbleControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/logging/UiEventLogger;

    new-instance v0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverUiEventLogger;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverUiEventLogger;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    return-object v0

    :pswitch_7
    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBubblesFactory;->bubbleControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_8
    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBubblesFactory;->bubbleControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda13;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda13;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBubblesFactory;->bubbleControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
