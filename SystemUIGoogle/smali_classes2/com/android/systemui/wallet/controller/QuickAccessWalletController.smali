.class public Lcom/android/systemui/wallet/controller/QuickAccessWalletController;
.super Ljava/lang/Object;
.source "QuickAccessWalletController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;
    }
.end annotation


# static fields
.field private static final RECREATION_TIME_WINDOW:J


# instance fields
.field private final mClock:Lcom/android/systemui/util/time/SystemClock;

.field private final mContext:Landroid/content/Context;

.field private mDefaultPaymentAppChangeEvents:I

.field private mDefaultPaymentAppObserver:Landroid/database/ContentObserver;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mQawClientCreatedTimeMillis:J

.field private mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

.field private final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field private mWalletEnabled:Z

.field private mWalletPreferenceChangeEvents:I

.field private mWalletPreferenceObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->RECREATION_TIME_WINDOW:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/service/quickaccesswallet/QuickAccessWalletClient;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mWalletPreferenceChangeEvents:I

    iput v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultPaymentAppChangeEvents:I

    iput-boolean v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mWalletEnabled:Z

    iput-object p1, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p4, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    iput-object p5, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p5}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQawClientCreatedTimeMillis:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallet/controller/QuickAccessWalletController;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method private setupDefaultPaymentAppObserver(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultPaymentAppObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$1;-><init>(Lcom/android/systemui/wallet/controller/QuickAccessWalletController;Landroid/os/Handler;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V

    iput-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultPaymentAppObserver:Landroid/database/ContentObserver;

    iget-object p1, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v0, "nfc_payment_default_component"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultPaymentAppObserver:Landroid/database/ContentObserver;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    iget p1, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultPaymentAppChangeEvents:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultPaymentAppChangeEvents:I

    return-void
.end method

.method private setupWalletPreferenceObserver()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mWalletPreferenceObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2;-><init>(Lcom/android/systemui/wallet/controller/QuickAccessWalletController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mWalletPreferenceObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v1, "lockscreen_show_wallet"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mWalletPreferenceObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    iget v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mWalletPreferenceChangeEvents:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mWalletPreferenceChangeEvents:I

    return-void
.end method


# virtual methods
.method public getWalletClient()Landroid/service/quickaccesswallet/QuickAccessWalletClient;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    return-object p0
.end method

.method public isWalletEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mWalletEnabled:Z

    return p0
.end method

.method public queryWalletCards(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQawClientCreatedTimeMillis:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->RECREATION_TIME_WINDOW:J

    cmp-long v0, v0, v2

    const-string v1, "QAWController"

    if-lez v0, :cond_0

    const-string v0, "Re-creating the QAW client to avoid stale."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->reCreateWalletClient()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->isWalletFeatureAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "QuickAccessWallet feature is not available."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->wallet_tile_card_view_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->wallet_tile_card_view_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->wallet_icon_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, Landroid/service/quickaccesswallet/GetWalletCardsRequest;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v2, v4}, Landroid/service/quickaccesswallet/GetWalletCardsRequest;-><init>(IIII)V

    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    iget-object p0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0, v3, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->getWalletCards(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V

    return-void
.end method

.method public reCreateWalletClient()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->create(Landroid/content/Context;)Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQawClientCreatedTimeMillis:J

    return-void
.end method

.method public varargs setupWalletChangeObservers(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;[Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;)V
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    sget-object v3, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;->WALLET_PREFERENCE_CHANGE:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->setupWalletPreferenceObserver()V

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;->DEFAULT_PAYMENT_APP_CHANGE:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    if-ne v2, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->setupDefaultPaymentAppObserver(Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs unregisterWalletChangeObservers([Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    sget-object v3, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;->WALLET_PREFERENCE_CHANGE:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mWalletPreferenceObserver:Landroid/database/ContentObserver;

    if-eqz v3, :cond_0

    iget v2, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mWalletPreferenceChangeEvents:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mWalletPreferenceChangeEvents:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-interface {v2, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;->DEFAULT_PAYMENT_APP_CHANGE:Lcom/android/systemui/wallet/controller/QuickAccessWalletController$WalletChangeEvent;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultPaymentAppObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultPaymentAppChangeEvents:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mDefaultPaymentAppChangeEvents:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-interface {v3, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateWalletPreference()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->isWalletServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->isWalletFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    invoke-interface {v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->isWalletFeatureAvailableWhenDeviceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->mWalletEnabled:Z

    return-void
.end method
