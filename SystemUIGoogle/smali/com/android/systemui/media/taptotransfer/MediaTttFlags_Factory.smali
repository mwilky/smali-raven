.class public final Lcom/android/systemui/media/taptotransfer/MediaTttFlags_Factory;
.super Ljava/lang/Object;
.source "MediaTttFlags_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final featureFlagsProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/media/taptotransfer/MediaTttFlags_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/MediaTttFlags_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/systemui/media/taptotransfer/MediaTttFlags_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/MediaTttFlags_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;-><init>(Landroid/content/Context;)V

    return-object v0

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/MediaTttFlags_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    new-instance v0, Lcom/android/systemui/statusbar/core/StatusBarInitializer;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/core/StatusBarInitializer;-><init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController;)V

    return-object v0

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/MediaTttFlags_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogBufferFactory;

    const/4 v0, 0x1

    const/16 v1, 0x64

    const-string v2, "DozeLog"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/log/LogBufferFactory;->create(ILjava/lang/String;Z)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/MediaTttFlags_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/MediaTttFlags_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/flags/FeatureFlags;

    new-instance v0, Lcom/android/systemui/media/taptotransfer/MediaTttFlags;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/taptotransfer/MediaTttFlags;-><init>(Lcom/android/systemui/flags/FeatureFlags;)V

    return-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/MediaTttFlags_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;

    new-instance v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
