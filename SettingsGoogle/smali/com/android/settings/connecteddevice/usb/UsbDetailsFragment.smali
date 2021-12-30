.class public Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "UsbDetailsFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/connecteddevice/usb/UsbDetailsController;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

.field private mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

.field mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$oxNnGd79vUZc09K8KJc0U69OCsQ(Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;ZJII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->lambda$new$0(ZJII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment$1;

    const v1, 0x7f1500fd

    invoke-direct {v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbBackend;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->createControllerList(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbBackend;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static createControllerList(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbBackend;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/connecteddevice/usb/UsbBackend;",
            "Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/connecteddevice/usb/UsbDetailsController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsHeaderController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private synthetic lambda$new$0(ZJII)V
    .locals 7

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->mControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->refresh(ZJII)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-direct {v0, p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-static {p1, v0, p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->createControllerList(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbBackend;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->mControllers:Ljava/util/List;

    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->mUsbReceiver:Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->mControllers:Ljava/util/List;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x50b

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1500fd

    return p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/settings/Utils;->setActionBarShadowAnimation(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle;Landroid/view/View;)V

    return-void
.end method
