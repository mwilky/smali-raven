.class public final Lcom/android/systemui/util/settings/GlobalSettingsImpl_Factory;
.super Ljava/lang/Object;
.source "GlobalSettingsImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final contentResolverProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/util/settings/GlobalSettingsImpl_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/util/settings/GlobalSettingsImpl_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/systemui/util/settings/GlobalSettingsImpl_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/util/settings/GlobalSettingsImpl_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;

    new-instance v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object v0

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/util/settings/GlobalSettingsImpl_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v0, 0x7f0b04a3

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/util/settings/GlobalSettingsImpl_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;

    const v0, 0x7f0701bb

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/util/settings/GlobalSettingsImpl_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/systemui/util/settings/GlobalSettingsImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/settings/GlobalSettingsImpl;-><init>(Landroid/content/ContentResolver;)V

    return-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/settings/GlobalSettingsImpl_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/smartspace/SmartspaceTargetFilter;

    new-instance v0, Lcom/google/android/systemui/smartspace/filters/DreamTargetFilter;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/filters/DreamTargetFilter;-><init>(Lcom/android/systemui/smartspace/SmartspaceTargetFilter;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
