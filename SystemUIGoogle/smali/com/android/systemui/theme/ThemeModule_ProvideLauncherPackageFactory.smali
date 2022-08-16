.class public final Lcom/android/systemui/theme/ThemeModule_ProvideLauncherPackageFactory;
.super Ljava/lang/Object;
.source "ThemeModule_ProvideLauncherPackageFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final resourcesProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/theme/ThemeModule_ProvideLauncherPackageFactory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/theme/ThemeModule_ProvideLauncherPackageFactory;->resourcesProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/systemui/theme/ThemeModule_ProvideLauncherPackageFactory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeModule_ProvideLauncherPackageFactory;->resourcesProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;-><init>(Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;)V

    return-object v0

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeModule_ProvideLauncherPackageFactory;->resourcesProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;

    const v0, 0x7f1303e5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/theme/ThemeModule_ProvideLauncherPackageFactory;->resourcesProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v0, Lcom/google/android/systemui/power/EnhancedEstimatesGoogleImpl;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/power/EnhancedEstimatesGoogleImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
