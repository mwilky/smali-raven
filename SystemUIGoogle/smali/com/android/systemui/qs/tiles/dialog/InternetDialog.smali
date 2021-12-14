.class public Lcom/android/systemui/qs/tiles/dialog/InternetDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "InternetDialog.java"

# interfaces
.implements Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/dialog/InternetDialog$InternetDialogEvent;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field protected mAdapter:Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private mBackgroundOn:Landroid/graphics/drawable/Drawable;

.field private mCanConfigMobileData:Z

.field protected mCanConfigWifi:Z

.field private mConnectedWifListLayout:Landroid/widget/LinearLayout;

.field protected mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mConnectedWifiIcon:Landroid/widget/ImageView;

.field private mConnectedWifiSummaryText:Landroid/widget/TextView;

.field private mConnectedWifiTitleText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDefaultDataSubId:I

.field protected mDialogView:Landroid/view/View;

.field private mDivider:Landroid/view/View;

.field private mDoneLayout:Landroid/widget/FrameLayout;

.field private mEthernetLayout:Landroid/widget/LinearLayout;

.field private final mHandler:Landroid/os/Handler;

.field protected final mHideProgressBarRunnable:Ljava/lang/Runnable;

.field protected mHideSearchingRunnable:Ljava/lang/Runnable;

.field private mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

.field private mInternetDialogFactory:Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;

.field private mInternetDialogLayout:Landroid/widget/LinearLayout;

.field private mInternetDialogSubTitle:Landroid/widget/TextView;

.field private mInternetDialogTitle:Landroid/widget/TextView;

.field private final mInternetListLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field protected mIsProgressBarVisible:Z

.field protected mIsSearchingHidden:Z

.field private final mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mListMaxHeight:I

.field private mMobileDataToggle:Landroid/widget/Switch;

.field private mMobileNetworkLayout:Landroid/widget/LinearLayout;

.field private mMobileSummaryText:Landroid/widget/TextView;

.field private mMobileTitleText:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSeeAllLayout:Landroid/widget/LinearLayout;

.field private mSignalIcon:Landroid/widget/ImageView;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTurnWifiOnLayout:Landroid/widget/LinearLayout;

.field private mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mWiFiToggle:Landroid/widget/Switch;

.field protected mWifiEntriesCount:I

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mWifiScanNotifyLayout:Landroid/widget/LinearLayout;

.field private mWifiScanNotifyText:Landroid/widget/TextView;

.field private mWifiSettingsIcon:Landroid/widget/ImageView;

.field private mWifiToggleTitleText:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$-H9fomdiymzUnYQedruaitQj8K8(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$onRefreshCarrierInfo$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$-bZKWnEh8of_jGx0NJFJtSOP2aY(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$onSignalStrengthsChanged$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$2eRlBl7EQkvlqTfBoVROpSbc4fg(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$showTurnOffMobileDialog$14(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3tfntNRe9Ja5DEWEk9zlRr59W7Q(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$onDataConnectionStateChanged$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$4Oa0Q_5LjICI3KE2kwA-_KKB7KY(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$onCapabilitiesChanged$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$63z9klbkTM-Spic6Q98PJ8oOni8(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$onSimStateChanged$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$EKJgpuZG9ictHM_gCrVbveR1_iY(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$RI3tl3s44BGuHIBZHmCvXuv5yTI(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$updateWifiScanNotify$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SUWcEDxM9QVD82QFoypXKsaGnJs(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$onUserMobileDataStateChanged$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$VWHTXHOhPbrdt1wEsU6MVWlbx4s(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$setOnClickListener$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vk0Zy88gvNesrXT1I2kbWYlzqWU(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$onSubscriptionsChanged$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$X-JoCVs8vL5GgZJ2zOMqky8R4vM(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$setOnClickListener$7(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$aEXteCk8Hb9o91qBoT0D-OzLf2s(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$setMobileDataLayout$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$aZr1ClSzTwrXPDkqWy6PlA9znDs(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$setMobileDataLayout$9(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$axkiz1h-wgFDACftw3OBC50Y9WI(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$setOnClickListener$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bl_S99Un1wD-zllgbu9RrvGBCiY(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$setOnClickListener$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eSMpWCNGzbEr-rgn-DCL_Bh9iRo(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$gA2VAYLrMm-jjWjhnIu4QBK6uSU(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$onServiceStateChanged$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$l9U-_ej6YzFULyLkqNGrn60Ndf8(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$setOnClickListener$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m2M_xpoEz45TJm4DjUk0hb3pyow(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$showTurnOffMobileDialog$13(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$p6c8qg2S7dLwlfK49XOh1hQ3tSM(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$onDisplayInfoChanged$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$rnFW0AGl4qBnx1Q9mF6mQqhh8UM(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$onLost$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$sM2l_1yTqOPkg09oWnVfRaz56ig(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$setOnClickListener$4(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$tmuYbrJoVlZieyHoWFJqyhkzUbA(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$showTurnOffMobileDialog$12(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$x2POtTgp6xYTspyD4Fastp-8emg(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$onAccessPointsChanged$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$yV74yZfoRU70HGjqVSG2ekqTOLw(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "InternetDialog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;ZZZLcom/android/internal/logging/UiEventLogger;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .locals 2

    sget v0, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog_Internet:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDefaultDataSubId:I

    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda24;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHideSearchingRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetListLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    sget-boolean v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InternetDialog"

    const-string v1, "Init InternetDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    iput-object p8, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    iput-object p9, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogFactory:Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p3}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getDefaultDataSubscriptionId()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDefaultDataSubId:I

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean p4, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mCanConfigMobileData:Z

    iput-boolean p5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mCanConfigWifi:Z

    new-instance p2, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$1;

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$1;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->internet_dialog_list_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mListMaxHeight:I

    iput-object p7, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-direct {p1, p2}, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAdapter:Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;

    if-nez p6, :cond_1

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x7f6

    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    :cond_1
    return-void
.end method

.method private getSignalStrengthDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getSignalStrengthDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->setProgressBarVisible(Z)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mIsSearchingHidden:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->getSubtitleText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mListMaxHeight:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mListMaxHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAccessPointsChanged$25()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAdapter:Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    return-void
.end method

.method private synthetic lambda$onCapabilitiesChanged$17()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    return-void
.end method

.method private synthetic lambda$onDataConnectionStateChanged$22()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    return-void
.end method

.method private synthetic lambda$onDisplayInfoChanged$24()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    return-void
.end method

.method private synthetic lambda$onLost$18()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    return-void
.end method

.method private synthetic lambda$onRefreshCarrierInfo$15()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    return-void
.end method

.method private synthetic lambda$onServiceStateChanged$21()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    return-void
.end method

.method private synthetic lambda$onSignalStrengthsChanged$23()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    return-void
.end method

.method private synthetic lambda$onSimStateChanged$16()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    return-void
.end method

.method private synthetic lambda$onSubscriptionsChanged$19()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    return-void
.end method

.method private synthetic lambda$onUserMobileDataStateChanged$20()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    return-void
.end method

.method private synthetic lambda$setMobileDataLayout$10()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->getSignalStrengthDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda25;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$setMobileDataLayout$9(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSignalIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$setOnClickListener$3(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isMobileDataEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isDeviceLocked()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->activeNetworkIsCellular()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->connectCarrierNetwork()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setOnClickListener$4(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->shouldShowMobileDialog()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->showTurnOffMobileDialog()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->shouldShowMobileDialog()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDefaultDataSubId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, p2, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->setMobileDataEnabled(Landroid/content/Context;IZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$setOnClickListener$5(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->onClickConnectedWifi()V

    return-void
.end method

.method private synthetic lambda$setOnClickListener$6(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->onClickSeeMoreButton()V

    return-void
.end method

.method private synthetic lambda$setOnClickListener$7(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method

.method private synthetic lambda$setOnClickListener$8(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showTurnOffMobileDialog$12(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileDataToggle:Landroid/widget/Switch;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$showTurnOffMobileDialog$13(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDefaultDataSubId:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->setMobileDataEnabled(Landroid/content/Context;IZZ)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileDataToggle:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    const-string p1, "QsHasTurnedOffMobileData"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$showTurnOffMobileDialog$14(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileDataToggle:Landroid/widget/Switch;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$updateWifiScanNotify$11(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->launchWifiScanningSetting()V

    return-void
.end method

.method private setMobileDataLayout(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isAirplaneModeEnabled()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->hasCarrier()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileDataToggle:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {v2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->getMobileNetworkTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->getMobileNetworkSummary()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileSummaryText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->getMobileNetworkSummary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda19;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileTitleText:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    sget v1, Lcom/android/systemui/R$style;->TextAppearance_InternetDialog_Active:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/android/systemui/R$style;->TextAppearance_InternetDialog:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileSummaryText:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    sget v1, Lcom/android/systemui/R$style;->TextAppearance_InternetDialog_Secondary_Active:I

    goto :goto_2

    :cond_3
    sget v1, Lcom/android/systemui/R$style;->TextAppearance_InternetDialog_Secondary:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mBackgroundOn:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileDataToggle:Landroid/widget/Switch;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mCanConfigMobileData:Z

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x4

    :goto_4
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    goto :goto_6

    :cond_6
    :goto_5
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_6
    return-void
.end method

.method private setOnClickListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileDataToggle:Landroid/widget/Switch;

    new-instance v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifListLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSeeAllLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWiFiToggle:Landroid/widget/Switch;

    new-instance v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDoneLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setProgressBarVisible(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAdapter:Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mHolderView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mIsProgressBarVisible:Z

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mIsProgressBarVisible:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDivider:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mIsProgressBarVisible:Z

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->getSubtitleText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private shouldShowMobileDialog()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    const-string v1, "QsHasTurnedOffMobileData"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isMobileDataEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method private showTurnOffMobileDialog()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->getMobileNetworkTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isVoiceStateInService()Z

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->mobile_data_disable_message_default_carrier:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/systemui/R$string;->mobile_data_disable_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->mobile_data_disable_message:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104011e

    new-instance v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateConnectedWifi(ZZ)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifListLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiTitleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiSummaryText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p2}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiIcon:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getInternetWifiDrawable(Lcom/android/wifitrackerlib/WifiEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiSettingsIcon:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$color;->connected_network_primary_color:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifListLayout:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private updateEthernet()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mEthernetLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->hasEthernet()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private updateWifiScanNotify(ZZZ)V
    .locals 2

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiScanNotifyText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$LinkInfo;

    new-instance p3, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    const-string v0, "link"

    invoke-direct {p1, v0, p3}, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiScanNotifyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->wifi_scan_notify_message:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$LinkInfo;

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiScanNotifyText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiScanNotifyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiScanNotifyLayout:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private updateWifiToggle(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWiFiToggle:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiToggleTitleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$style;->TextAppearance_InternetDialog_Active:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$style;->TextAppearance_InternetDialog:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mTurnWifiOnLayout:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mBackgroundOn:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InternetDialog"

    const-string v1, "dismissDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogFactory:Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->destroyDialog()V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method getDialogTitleText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getDialogTitleText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method getMobileNetworkSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getMobileNetworkSummary()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getMobileNetworkTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getMobileNetworkTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method getSubtitleText()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mIsProgressBarVisible:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mIsSearchingHidden:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getSubtitleText(Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method hideWifiViews()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->setProgressBarVisible(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mTurnWifiOnLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSeeAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onAccessPointsChanged(Ljava/util/List;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    :goto_0
    iput p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiEntriesCount:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAdapter:Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->setWifiEntries(Ljava/util/List;I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda23;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda23;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method onClickConnectedWifi()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->launchWifiNetworkDetailsSetting(Ljava/lang/String;)V

    return-void
.end method

.method onClickSeeMoreButton()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->launchNetworkSetting()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    sget-boolean p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "InternetDialog"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$InternetDialogEvent;->INTERNET_DIALOG_SHOW:Lcom/android/systemui/qs/tiles/dialog/InternetDialog$InternetDialogEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->internet_connectivity_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v2, 0x50

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    not-int v3, v3

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsIgnoringVisibility(Z)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->internet_dialog_list_max_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v2, -0x2

    invoke-virtual {p1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    sget v0, Lcom/android/systemui/R$style;->Animation_InternetDialog:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->internet_connectivity_dialog:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogLayout:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->internet_dialog_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogTitle:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->internet_dialog_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogSubTitle:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDivider:Landroid/view/View;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->wifi_searching_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->ethernet_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mEthernetLayout:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->mobile_network_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->turn_on_wifi_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mTurnWifiOnLayout:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->wifi_toggle_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiToggleTitleText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->wifi_scan_notify_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiScanNotifyLayout:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->wifi_scan_notify_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiScanNotifyText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->wifi_connected_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifListLayout:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->wifi_connected_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiIcon:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->wifi_connected_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiTitleText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->wifi_connected_summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiSummaryText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->wifi_settings_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiSettingsIcon:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->wifi_list_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->see_all_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSeeAllLayout:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->done_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDoneLayout:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->signal_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSignalIcon:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->mobile_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileTitleText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->mobile_summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileSummaryText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->mobile_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileDataToggle:Landroid/widget/Switch;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDialogView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->wifi_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWiFiToggle:Landroid/widget/Switch;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->settingslib_switch_bar_bg_on:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mBackgroundOn:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetListLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->getDialogTitleText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogTitle:Landroid/widget/TextView;

    const v0, 0x800013

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->setOnClickListener()V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mTurnWifiOnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAdapter:Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda21;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda22;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda20;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSimStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onStart()V

    sget-boolean v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InternetDialog"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mCanConfigWifi:Z

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->onStart(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;Z)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mCanConfigWifi:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->hideWifiViews()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onStop()V

    sget-boolean v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InternetDialog"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHideSearchingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mMobileDataToggle:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSeeAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWiFiToggle:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDoneLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->onStop()V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogFactory:Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;->destroyDialog()V

    return-void
.end method

.method public onSubscriptionsChanged(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDefaultDataSubId:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda18;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserMobileDataStateChanged(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda17;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected showProgressBar()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isDeviceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->setProgressBarVisible(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const-wide/16 v1, 0x7d0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiEntriesCount:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mIsSearchingHidden:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHideSearchingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->setProgressBarVisible(Z)V

    return-void
.end method

.method updateDialog(Z)V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InternetDialog"

    const-string/jumbo v1, "updateDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isAirplaneModeEnabled()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->getSubtitleText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateEthernet()V

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->activeNetworkIsCellular()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isCarrierNetworkActive()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->setMobileDataLayout(Z)V

    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mCanConfigWifi:Z

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->showProgressBar()V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isDeviceLocked()Z

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isWifiScanEnabled()Z

    move-result v3

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateWifiToggle(ZZ)V

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateConnectedWifi(ZZ)V

    invoke-direct {p0, v2, v3, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateWifiScanNotify(ZZZ)V

    if-nez p1, :cond_7

    if-eqz v2, :cond_7

    iget p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiEntriesCount:I

    if-gtz p1, :cond_6

    goto :goto_3

    :cond_6
    move v1, v0

    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mSeeAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
