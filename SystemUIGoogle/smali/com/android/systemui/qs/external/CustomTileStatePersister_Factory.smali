.class public final Lcom/android/systemui/qs/external/CustomTileStatePersister_Factory;
.super Ljava/lang/Object;
.source "CustomTileStatePersister_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final contextProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/external/CustomTileStatePersister_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTileStatePersister_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/external/CustomTileStatePersister_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTileStatePersister_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/ShellInitImpl;

    iget-object p0, p0, Lcom/android/wm/shell/ShellInitImpl;->mImpl:Lcom/android/wm/shell/ShellInitImpl$InitImpl;

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTileStatePersister_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTileStatePersister_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    new-instance v0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinderLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    return-object v0

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTileStatePersister_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTileStatePersister_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;-><init>(Landroid/content/Context;)V

    return-object v0

    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTileStatePersister_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/qs/external/CustomTileStatePersister;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/CustomTileStatePersister;-><init>(Landroid/content/Context;)V

    return-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTileStatePersister_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v0, Lcom/google/android/systemui/assist/uihints/ConfigurationHandler;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/ConfigurationHandler;-><init>(Landroid/content/Context;)V

    return-object v0

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
