.class public Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothDetailsButtonsController.java"


# instance fields
.field private mActionButtons:Lcom/android/settingslib/widget/ActionButtonsPreference;

.field private mConnectButtonInitialized:Z

.field private mIsConnected:Z


# direct methods
.method public static synthetic $r8$lambda$10zmyaUkE5hFW7ZwGSWmqzTqGN8(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->lambda$init$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PsRDRvlGNEsaUs2iQiReQ8UXDic(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->lambda$refresh$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c_6hLFUTEtnhj6DYig2QR_zxUyY(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->lambda$refresh$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mIsConnected:Z

    return-void
.end method

.method private synthetic lambda$init$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->onForgetButtonPressed()V

    return-void
.end method

.method private synthetic lambda$refresh$1(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    return-void
.end method

.method private synthetic lambda$refresh$2(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect()V

    return-void
.end method

.method private onForgetButtonPressed()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settings/bluetooth/ForgetDeviceDialogFragment;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "ForgetBluetoothDevice"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "action_buttons"

    return-object p0
.end method

.method protected init(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v0, 0x7f040962

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    const v0, 0x7f020332

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mActionButtons:Lcom/android/settingslib/widget/ActionButtonsPreference;

    return-void
.end method

.method protected refresh()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mActionButtons:Lcom/android/settingslib/widget/ActionButtonsPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mIsConnected:Z

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mIsConnected:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mConnectButtonInitialized:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mActionButtons:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v1, 0x7f04043a

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v1, 0x7f020330

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mConnectButtonInitialized:Z

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mConnectButtonInitialized:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mActionButtons:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v1, 0x7f040438

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v1, 0x7f02016a

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;->mConnectButtonInitialized:Z

    :cond_3
    :goto_0
    return-void
.end method
