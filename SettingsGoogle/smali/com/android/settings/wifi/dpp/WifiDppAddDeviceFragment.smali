.class public Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;
.super Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;
.source "WifiDppAddDeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;,
        Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;
    }
.end annotation


# instance fields
.field private mChooseDifferentNetwork:Landroid/widget/Button;

.field private mClickChooseDifferentNetworkListener:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

.field private mLatestStatusCode:I

.field private mWifiApPictureView:Landroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$2SpKntsah4ARQmxNjMS70TnY14I(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->lambda$onViewCreated$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8KvLvJ7QYxVXQZvBIRMV2jMr5fo(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->lambda$showErrorUi$2(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CrJQb00soC7QKhpWHeq2F49mq5Q(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->lambda$showSuccessUi$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VYJltJwtPa9nrjq4qwusEnrm5fg(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->lambda$showSuccessUi$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z3UHc2STrvjc95dg3zpI3dmQ5d0(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->lambda$onCreate$3(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_XAvDVuaeOAx60IypnsE0cTckHs(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->lambda$onViewCreated$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xKBz-r6t5LRsHfAk9ptWmlfjixY(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->lambda$onViewCreated$4(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->showSuccessUi(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;ILjava/lang/String;Landroid/util/SparseArray;[I)Landroid/content/Intent;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->getResultIntent(ILjava/lang/String;Landroid/util/SparseArray;[I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;ILandroid/content/Intent;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->showErrorUi(ILandroid/content/Intent;Z)V

    return-void
.end method

.method private getResultIntent(ILjava/lang/String;Landroid/util/SparseArray;[I)Landroid/content/Intent;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "[I>;[I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.provider.extra.EASY_CONNECT_ERROR_CODE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "android.provider.extra.EASY_CONNECT_ATTEMPTED_SSID"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    :try_start_0
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move v4, p2

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    aget v5, v3, v4

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :catch_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.provider.extra.EASY_CONNECT_CHANNEL_LIST"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p4, :cond_3

    array-length p1, p4

    if-eqz p1, :cond_3

    const-string p1, "android.provider.extra.EASY_CONNECT_BAND_LIST"

    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    :cond_3
    return-object p0
.end method

.method private getSsid()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isValidConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getSsid()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid Wi-Fi network for configuring"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private hasRetryButton(I)Z
    .locals 0

    const/4 p0, -0x3

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isEasyConnectHandshaking()Z
    .locals 1

    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p0

    const-class v0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->isWifiDppHandshaking()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onCreate$3(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->isWifiDppHandshaking()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    new-instance p1, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;

    invoke-direct {p1, p0, v1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$1;)V

    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->onConfiguratorSuccess(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$1;)V

    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getTriedSsid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getTriedChannels()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getBandArray()[I

    move-result-object p1

    invoke-virtual {v0, p2, p0, v1, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->onFailure(ILjava/lang/String;Landroid/util/SparseArray;[I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onViewCreated$4(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mClickChooseDifferentNetworkListener:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

    invoke-interface {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;->onClickChooseDifferentNetwork()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$5(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$6(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->startWifiDppConfiguratorInitiator()V

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->updateSummary()V

    return-void
.end method

.method private synthetic lambda$showErrorUi$2(Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$showSuccessUi$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method private synthetic lambda$showSuccessUi$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showErrorUi(ILandroid/content/Intent;Z)V
    .locals 6

    const v0, 0x7f041627

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected Wi-Fi DPP error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const v0, 0x7f041631

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2
    const v0, 0x7f04162c

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget p2, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    if-eq p1, p2, :cond_1

    iput p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->stopEasyConnectSession()V

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->startWifiDppConfiguratorInitiator()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Tried restarting EasyConnectSession but stillreceiving EASY_CONNECT_EVENT_FAILURE_BUSY"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    const v0, 0x7f04162e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const v0, 0x7f04162b

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    const v0, 0x7f04162d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->getSsid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Wi-Fi DPP configurator used a non-PSK/non-SAEnetwork to handshake"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_9
    const v0, 0x7f041628

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    const v0, 0x7f041629

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    const v0, 0x7f04162a

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    const v2, 0x7f041625

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderTitle(I[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mWifiApPictureView:Landroid/widget/ImageView;

    const v2, 0x7f020459

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mChooseDifferentNetwork:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->hasRetryButton(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f041036

    invoke-virtual {v3, v4, v5}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040831

    invoke-virtual {v0, v3, v4}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v3, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    :goto_1
    new-instance v3, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p2}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v3}, Lcom/google/android/setupcompat/template/FooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const v0, 0x7f041639

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p2, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    if-nez p3, :cond_5

    iput p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method private showSuccessUi(Z)V
    .locals 4

    const v0, 0x7f0201b2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderIconImageResource(I)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const v2, 0x7f04163b

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderTitle(I[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mWifiApPictureView:Landroid/widget/ImageView;

    const v3, 0x7f02045a

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mChooseDifferentNetwork:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04161a

    invoke-virtual {v1, v2, v3}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    new-instance v2, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040831

    invoke-virtual {v1, v2, v3}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    new-instance v2, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v1, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    :cond_0
    return-void
.end method

.method private startWifiDppConfiguratorInitiator()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getWifiDppQrCode()Lcom/android/settings/wifi/dpp/WifiQrCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getNetworkId()I

    move-result v1

    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p0

    const-class v2, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p0, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->startEasyConnectAsConfiguratorInitiator(Ljava/lang/String;I)V

    return-void
.end method

.method private updateSummary()V
    .locals 5

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const v0, 0x7f041639

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f04161d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->getSsid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x63b

    return p0
.end method

.method protected isFooterAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mClickChooseDifferentNetworkListener:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "key_latest_status_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getStatusCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p0, 0x7f0602af

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mClickChooseDifferentNetworkListener:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    const-string v1, "key_latest_status_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0201b4

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderIconImageResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getWifiDppQrCode()Lcom/android/settings/wifi/dpp/WifiQrCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getInformation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v0, 0x7f041626

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderTitle(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderTitle(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->updateSummary()V

    const v0, 0x7f0d0632

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mWifiApPictureView:Landroid/widget/ImageView;

    const v0, 0x7f0d0150

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mChooseDifferentNetwork:Landroid/widget/Button;

    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04054c

    invoke-virtual {p1, v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f041638

    invoke-virtual {p1, v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_4

    iget p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->showSuccessUi(Z)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v2, 0x4

    :cond_2
    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->showErrorUi(ILandroid/content/Intent;Z)V

    :cond_4
    :goto_1
    return-void
.end method
