.class public final Lcom/google/android/systemui/elmyra/gates/TelephonyActivity_Factory;
.super Ljava/lang/Object;
.source "TelephonyActivity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final contextProvider:Ljavax/inject/Provider;

.field public final telephonyListenerManagerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity_Factory;->telephonyListenerManagerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity_Factory;->telephonyListenerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarFrame;

    const v1, 0x7f0e0174

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0b0483

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ActivityStarterDelegate;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity_Factory;->telephonyListenerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity_Factory;->telephonyListenerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/telephony/TelephonyListenerManager;

    new-instance v1, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;

    invoke-direct {v1, v0, p0}, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;-><init>(Landroid/content/Context;Lcom/android/systemui/telephony/TelephonyListenerManager;)V

    return-object v1

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity_Factory;->telephonyListenerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dump/DumpManager;

    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;-><init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/dump/DumpManager;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
