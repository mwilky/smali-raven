.class public Lcom/android/systemui/wallet/ui/WalletScreenController;
.super Ljava/lang/Object;
.source "WalletScreenController.java"

# interfaces
.implements Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnSelectionListener;
.implements Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;
    }
.end annotation


# static fields
.field private static final SELECTION_DELAY_MILLIS:J


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

.field private mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mHandler:Landroid/os/Handler;

.field mIsDismissed:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field mSelectedCardId:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mSelectionRunnable:Ljava/lang/Runnable;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

.field private final mWalletView:Lcom/android/systemui/wallet/ui/WalletView;


# direct methods
.method public static synthetic $r8$lambda$DH6Ark7q-2Wjk7U4SLXNh-6AnZI(Lcom/android/systemui/wallet/ui/WalletScreenController;Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallet/ui/WalletScreenController;->lambda$onWalletCardRetrievalError$1(Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DhlqlnZc7LuiW0KLYhx6ktEuLtU(Lcom/android/systemui/wallet/ui/WalletScreenController;Ljava/util/List;Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallet/ui/WalletScreenController;->lambda$onWalletCardsRetrieved$0(Ljava/util/List;Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LxA-NHjXoduRq5lpBmdlACxLnxU(Lcom/android/systemui/wallet/ui/WalletScreenController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallet/ui/WalletScreenController;->selectCard()V

    return-void
.end method

.method public static synthetic $r8$lambda$uL5jir0jviWtnpfx15BvJkLT_Us(Lcom/android/systemui/wallet/ui/WalletScreenController;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallet/ui/WalletScreenController;->lambda$showEmptyStateView$2(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/wallet/ui/WalletScreenController;->SELECTION_DELAY_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallet/ui/WalletView;Landroid/service/quickaccesswallet/QuickAccessWalletClient;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallet/ui/WalletScreenController;)V

    iput-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mSelectionRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    iput-object p4, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p5, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mHandler:Landroid/os/Handler;

    iput-object p8, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p9, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p10, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p11, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p7}, Lcom/android/systemui/settings/UserContextProvider;->getUserContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "WalletScreenCtrl"

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mPrefs:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletView:Lcom/android/systemui/wallet/ui/WalletView;

    invoke-direct {p0}, Lcom/android/systemui/wallet/ui/WalletScreenController;->getExpectedMinHeight()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    const/4 p4, -0x2

    invoke-direct {p1, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Lcom/android/systemui/wallet/ui/WalletView;->getCardCarousel()Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->setSelectionListener(Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnSelectionListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/wallet/ui/WalletScreenController;)Lcom/android/systemui/wallet/ui/WalletView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletView:Lcom/android/systemui/wallet/ui/WalletView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/wallet/ui/WalletScreenController;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private getExpectedMinHeight()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "wallet_view_height"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->min_wallet_empty_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private synthetic lambda$onWalletCardRetrievalError$1(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mIsDismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletView:Lcom/android/systemui/wallet/ui/WalletView;

    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsError;->getMessage()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallet/ui/WalletView;->showErrorMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onWalletCardsRetrieved$0(Ljava/util/List;Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mIsDismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/wallet/ui/WalletScreenController;->showEmptyStateView()V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getSelectedIndex()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_2

    const-string p1, "WalletScreenCtrl"

    const-string p2, "Invalid selected card index, showing empty state."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/wallet/ui/WalletScreenController;->showEmptyStateView()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsEnrolled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletView:Lcom/android/systemui/wallet/ui/WalletView;

    iget-object v3, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/android/systemui/wallet/ui/WalletView;->showCardCarousel(Ljava/util/List;IZZ)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p2, Lcom/android/systemui/wallet/ui/WalletUiEvent;->QAW_IMPRESSION:Lcom/android/systemui/wallet/ui/WalletUiEvent;

    invoke-interface {p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-direct {p0}, Lcom/android/systemui/wallet/ui/WalletScreenController;->removeMinHeightAndRecordHeightOnLayout()V

    return-void
.end method

.method private synthetic lambda$showEmptyStateView$2(Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private removeMinHeightAndRecordHeightOnLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletView:Lcom/android/systemui/wallet/ui/WalletView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletView:Lcom/android/systemui/wallet/ui/WalletView;

    new-instance v1, Lcom/android/systemui/wallet/ui/WalletScreenController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallet/ui/WalletScreenController$1;-><init>(Lcom/android/systemui/wallet/ui/WalletScreenController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private selectCard()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mSelectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mSelectedCardId:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mIsDismissed:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    new-instance v2, Landroid/service/quickaccesswallet/SelectWalletCardRequest;

    invoke-direct {v2, v0}, Landroid/service/quickaccesswallet/SelectWalletCardRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->selectWalletCard(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mSelectionRunnable:Ljava/lang/Runnable;

    sget-wide v1, Lcom/android/systemui/wallet/ui/WalletScreenController;->SELECTION_DELAY_MILLIS:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private showEmptyStateView()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->getServiceLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v2}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->getShortcutLongLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v3}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->createWalletIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletView:Lcom/android/systemui/wallet/ui/WalletView;

    new-instance v5, Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v3}, Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallet/ui/WalletScreenController;Landroid/content/Intent;)V

    invoke-virtual {v4, v0, v1, v2, v5}, Lcom/android/systemui/wallet/ui/WalletView;->showEmptyStateView(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "WalletScreenCtrl"

    const-string v1, "QuickAccessWalletService manifest entry mis-configured"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletView:Lcom/android/systemui/wallet/ui/WalletView;

    invoke-virtual {v0}, Lcom/android/systemui/wallet/ui/WalletView;->hide()V

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "wallet_view_height"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    return-void
.end method


# virtual methods
.method public onCardClicked(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    invoke-static {v0}, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->access$000(Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;)Landroid/service/quickaccesswallet/WalletCard;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->access$000(Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;)Landroid/service/quickaccesswallet/WalletCard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quickaccesswallet/WalletCard;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/wallet/ui/WalletUiEvent;->QAW_UNLOCK_FROM_CARD_CLICK:Lcom/android/systemui/wallet/ui/WalletUiEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/wallet/ui/WalletUiEvent;->QAW_CLICK_CARD:Lcom/android/systemui/wallet/ui/WalletUiEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p1}, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCardSelected(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mIsDismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mSelectedCardId:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;->getCardId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/wallet/ui/WalletUiEvent;->QAW_CHANGE_CARD:Lcom/android/systemui/wallet/ui/WalletUiEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_1
    invoke-interface {p1}, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;->getCardId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mSelectedCardId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/wallet/ui/WalletScreenController;->selectCard()V

    return-void
.end method

.method onDismissed()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mIsDismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mIsDismissed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mSelectedCardId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mSelectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v1}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->notifyWalletDismissed()V

    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletView:Lcom/android/systemui/wallet/ui/WalletView;

    invoke-virtual {v1}, Lcom/android/systemui/wallet/ui/WalletView;->animateDismissal()V

    iput-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onKeyguardFadingAwayChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/wallet/ui/WalletScreenController;->queryWalletCards()V

    return-void
.end method

.method public onUnlockedChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/wallet/ui/WalletScreenController;->queryWalletCards()V

    return-void
.end method

.method public onWalletCardRetrievalError(Landroid/service/quickaccesswallet/GetWalletCardsError;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallet/ui/WalletScreenController;Landroid/service/quickaccesswallet/GetWalletCardsError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWalletCardsRetrieved(Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mIsDismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WalletScreenCtrl"

    const-string v1, "Successfully retrieved wallet cards."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/service/quickaccesswallet/GetWalletCardsResponse;->getWalletCards()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/quickaccesswallet/WalletCard;

    new-instance v3, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    iget-object v4, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;-><init>(Landroid/content/Context;Landroid/service/quickaccesswallet/WalletCard;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wallet/ui/WalletScreenController;Ljava/util/List;Landroid/service/quickaccesswallet/GetWalletCardsResponse;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public queryWalletCards()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mIsDismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    invoke-virtual {v0}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->getCardWidthPx()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    invoke-virtual {v1}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->getCardHeightPx()I

    move-result v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletView:Lcom/android/systemui/wallet/ui/WalletView;

    invoke-virtual {v2}, Lcom/android/systemui/wallet/ui/WalletView;->show()V

    iget-object v2, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletView:Lcom/android/systemui/wallet/ui/WalletView;

    invoke-virtual {v2}, Lcom/android/systemui/wallet/ui/WalletView;->hideErrorMessage()V

    iget-object v2, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->wallet_screen_header_icon_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    const/16 v4, 0xa

    invoke-direct {v3, v0, v1, v2, v4}, Landroid/service/quickaccesswallet/GetWalletCardsRequest;-><init>(IIII)V

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    iget-object v1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v3, p0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->getWalletCards(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V

    :cond_2
    :goto_0
    return-void
.end method
