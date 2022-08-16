.class public final Lcom/android/systemui/ActivityStarterDelegate_Factory;
.super Ljava/lang/Object;
.source "ActivityStarterDelegate_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final centralSurfacesOptionalLazyProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/ActivityStarterDelegate_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/ActivityStarterDelegate_Factory;->centralSurfacesOptionalLazyProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lcom/android/systemui/ActivityStarterDelegate_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate_Factory;->centralSurfacesOptionalLazyProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;

    const v0, 0x7f070216

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate_Factory;->centralSurfacesOptionalLazyProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;

    const v0, 0x7f0703d1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/systemui/ActivityStarterDelegate_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate_Factory;->centralSurfacesOptionalLazyProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/transition/Transitions;

    new-instance v0, Lcom/android/wm/shell/TaskViewTransitions;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/TaskViewTransitions;-><init>(Lcom/android/wm/shell/transition/Transitions;)V

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/ActivityStarterDelegate_Factory;->get()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate_Factory;->centralSurfacesOptionalLazyProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate_Factory;->centralSurfacesOptionalLazyProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate;

    invoke-direct {v0, p0}, Lcom/android/systemui/ActivityStarterDelegate;-><init>(Ldagger/Lazy;)V

    return-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/ActivityStarterDelegate_Factory;->get()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
