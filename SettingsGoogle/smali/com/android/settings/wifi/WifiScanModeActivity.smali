.class public Lcom/android/settings/wifi/WifiScanModeActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "WifiScanModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;
    }
.end annotation


# instance fields
.field private mApp:Ljava/lang/String;

.field private mDialog:Landroidx/fragment/app/DialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiScanModeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->doNegativeClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiScanModeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->doPositiveClick()V

    return-void
.end method

.method private createDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroidx/fragment/app/DialogFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroidx/fragment/app/DialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "dialog"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroidx/fragment/app/DialogFragment;

    :cond_0
    return-void
.end method

.method private doNegativeClick()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private doPositiveClick()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setScanAlwaysAvailable(Z)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string v0, "app"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    :catch_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->createDialog()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->dismissDialog()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->createDialog()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    const-string v0, "app"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
