.class public Lcom/android/settings/network/ProviderModelSliceHelper;
.super Ljava/lang/Object;
.source "ProviderModelSliceHelper.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mSliceable:Lcom/android/settings/slices/CustomSliceable;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$Wp-guLeytWoRQDdeVznJGdRJXhI(Lcom/android/settings/network/ProviderModelSliceHelper;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/ProviderModelSliceHelper;->lambda$getMobileDrawable$1(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Semaphore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q5e50VXLIIqPRaSwhn2zeeH1Ce0(Lcom/android/settings/wifi/slice/WifiSliceItem;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->lambda$getConnectedWifiItem$0(Lcom/android/settings/wifi/slice/WifiSliceItem;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/slices/CustomSliceable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mSliceable:Lcom/android/settings/slices/CustomSliceable;

    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    const v0, 0x7f040b06

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/network/ProviderModelSliceHelper$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/settings/network/ProviderModelSliceHelper$$ExternalSyntheticLambda1;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private getMobileSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->isMobileDataEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    const p1, 0x7f040d09

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->isDataStateInService()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    const p1, 0x7f040d07

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->isDataSimActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    const v0, 0x7f040f2f

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x7f040d03

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private static synthetic lambda$getConnectedWifiItem$0(Lcom/android/settings/wifi/slice/WifiSliceItem;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSliceItem;->getConnectedState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getMobileDrawable$1(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->getDrawableWithSignalStrength()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ProviderModelSlice"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private shouldInflateSignalStrength(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settingslib/net/SignalStrengthUtil;->shouldInflateSignalStrength(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected createCarrierRow(Ljava/lang/String;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->getMobileTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/settings/network/ProviderModelSliceHelper;->getMobileSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f020362

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/network/ProviderModelSliceHelper;->getMobileDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {v1}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mSliceable:Lcom/android/settings/slices/CustomSliceable;

    iget-object v3, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/android/settings/slices/CustomSliceable;->getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Landroidx/slice/builders/SliceAction;->create(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->isMobileDataEnabled()Z

    move-result p0

    const-string v5, "mobile_toggle"

    invoke-static {v2, v5, p0}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    new-instance v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    invoke-virtual {v2, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    invoke-static {p1, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    return-object p0
.end method

.method protected createListBuilder(Landroid/net/Uri;)Landroidx/slice/builders/ListBuilder;
    .locals 4

    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object v1, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, p1, v2, v3}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->getKeywords()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/Set;)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    return-object p0
.end method

.method protected getConnectedWifiItem(Ljava/util/List;)Lcom/android/settings/wifi/slice/WifiSliceItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/slice/WifiSliceItem;",
            ">;)",
            "Lcom/android/settings/wifi/slice/WifiSliceItem;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settings/network/ProviderModelSliceHelper$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/settings/network/ProviderModelSliceHelper$$ExternalSyntheticLambda2;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/slice/WifiSliceItem;

    :cond_1
    return-object p0
.end method

.method public getDrawableWithSignalStrength()Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    :goto_0
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/ProviderModelSliceHelper;->shouldInflateSignalStrength(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x6

    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v2, v1, v1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getSignalStrengthIcon(Landroid/content/Context;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method getMobileDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const-string p0, "mTelephonyManager == null"

    invoke-static {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->log(Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->isDataStateInService()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->isVoiceStateInService()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Lcom/android/settings/network/ProviderModelSliceHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/settings/network/ProviderModelSliceHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/ProviderModelSliceHelper;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Semaphore;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    const v1, 0x1010429

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->isDataSimActive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_3
    return-object p1
.end method

.method protected getMobileTitle()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f040d0d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected getSubscriptionManager()Landroid/telephony/SubscriptionManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method public hasCarrier()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/network/ProviderModelSliceHelper;->isAirplaneModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object p0

    array-length p0, p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isAirplaneModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isDataSimActive()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->activeNetworkIsCellular(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isDataStateInService()Z
    .locals 2

    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->isRegistered()Z

    move-result p0

    :goto_1
    return p0
.end method

.method public isMobileDataEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p0

    return p0
.end method

.method public isVoiceStateInService()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateTelephony()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/ProviderModelSliceHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_1
    :goto_0
    return-void
.end method
