.class public Lcom/android/settings/wifi/addappnetworks/AddAppNetworksActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "AddAppNetworksActivity.java"


# instance fields
.field final mBundle:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksActivity;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f060201

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksActivity;->showAddNetworksFragment()V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;

    invoke-direct {v0, p0}, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x50

    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    const/4 p1, -0x1

    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksActivity;->showAddNetworksFragment()V

    return-void
.end method

.method showAddNetworksFragment()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "panel_calling_package_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.provider.extra.WIFI_NETWORK_LIST"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "AddAppNetworksActivity"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    invoke-direct {v2}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;-><init>()V

    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x7f0d033a

    invoke-virtual {p0, v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_0
    check-cast v2, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;

    iget-object p0, p0, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p0}, Lcom/android/settings/wifi/addappnetworks/AddAppNetworksFragment;->createContent(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
