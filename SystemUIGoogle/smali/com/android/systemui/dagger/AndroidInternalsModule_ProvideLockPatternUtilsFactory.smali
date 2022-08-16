.class public final Lcom/android/systemui/dagger/AndroidInternalsModule_ProvideLockPatternUtilsFactory;
.super Ljava/lang/Object;
.source "AndroidInternalsModule_ProvideLockPatternUtilsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final contextProvider:Ljavax/inject/Provider;

.field public final module:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/AndroidInternalsModule;Ljavax/inject/Provider;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/dagger/AndroidInternalsModule_ProvideLockPatternUtilsFactory;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/AndroidInternalsModule_ProvideLockPatternUtilsFactory;->module:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/dagger/AndroidInternalsModule_ProvideLockPatternUtilsFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayStateController_Factory;Ljavax/inject/Provider;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/dagger/AndroidInternalsModule_ProvideLockPatternUtilsFactory;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/AndroidInternalsModule_ProvideLockPatternUtilsFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/dagger/AndroidInternalsModule_ProvideLockPatternUtilsFactory;->module:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/systemui/dagger/AndroidInternalsModule_ProvideLockPatternUtilsFactory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/dagger/AndroidInternalsModule_ProvideLockPatternUtilsFactory;->module:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/dagger/AndroidInternalsModule;

    iget-object p0, p0, Lcom/android/systemui/dagger/AndroidInternalsModule_ProvideLockPatternUtilsFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object v0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/dagger/AndroidInternalsModule_ProvideLockPatternUtilsFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object p0, p0, Lcom/android/systemui/dagger/AndroidInternalsModule_ProvideLockPatternUtilsFactory;->module:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/FooterActionsView;

    const v1, 0x7f0e01f1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
