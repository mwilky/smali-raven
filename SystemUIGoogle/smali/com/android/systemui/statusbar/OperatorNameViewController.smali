.class public Lcom/android/systemui/statusbar/OperatorNameViewController;
.super Lcom/android/systemui/util/ViewController;
.source "OperatorNameViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/OperatorNameViewController$SubInfo;,
        Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/statusbar/OperatorNameView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

.field private final mDarkReceiver:Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

.field private final mDemoModeCommandReceiver:Lcom/android/systemui/demomode/DemoModeCommandReceiver;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field private final mSignalCallback:Lcom/android/systemui/statusbar/connectivity/SignalCallback;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public static synthetic $r8$lambda$V4WbxSXz9Y3GqcOYIBPJKNPl1gY(Lcom/android/systemui/statusbar/OperatorNameViewController;Landroid/graphics/Rect;FI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/OperatorNameViewController;->lambda$new$0(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method public static synthetic $r8$lambda$ee4BCSdslh99vne6QGFWpFoR3s4(Lcom/android/systemui/statusbar/OperatorNameViewController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/OperatorNameViewController;->lambda$new$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/statusbar/OperatorNameView;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/tuner/TunerService;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p1, Lcom/android/systemui/statusbar/OperatorNameViewController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/OperatorNameViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/OperatorNameViewController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mDarkReceiver:Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    new-instance p1, Lcom/android/systemui/statusbar/OperatorNameViewController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/OperatorNameViewController$1;-><init>(Lcom/android/systemui/statusbar/OperatorNameViewController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mSignalCallback:Lcom/android/systemui/statusbar/connectivity/SignalCallback;

    new-instance p1, Lcom/android/systemui/statusbar/OperatorNameViewController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/OperatorNameViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/OperatorNameViewController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

    new-instance p1, Lcom/android/systemui/statusbar/OperatorNameViewController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/OperatorNameViewController$2;-><init>(Lcom/android/systemui/statusbar/OperatorNameViewController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance p1, Lcom/android/systemui/statusbar/OperatorNameViewController$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/OperatorNameViewController$3;-><init>(Lcom/android/systemui/statusbar/OperatorNameViewController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mDemoModeCommandReceiver:Lcom/android/systemui/demomode/DemoModeCommandReceiver;

    iput-object p2, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    iput-object p3, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iput-object p5, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object p6, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/OperatorNameView;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/tuner/TunerService;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/OperatorNameViewController$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/statusbar/OperatorNameViewController;-><init>(Lcom/android/systemui/statusbar/OperatorNameView;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/tuner/TunerService;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/OperatorNameViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/OperatorNameViewController;->update()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/OperatorNameViewController;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/OperatorNameViewController;->getSubInfos()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/OperatorNameViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/OperatorNameViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/OperatorNameViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/OperatorNameViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method private getSubInfos()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/OperatorNameViewController$SubInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFilteredSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    new-instance v4, Lcom/android/systemui/statusbar/OperatorNameViewController$SubInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct {v4, v2, v5, v3, v6}, Lcom/android/systemui/statusbar/OperatorNameViewController$SubInfo;-><init>(Ljava/lang/CharSequence;ILandroid/telephony/ServiceState;Lcom/android/systemui/statusbar/OperatorNameViewController$1;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$new$0(Landroid/graphics/Rect;FI)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object p2, p0

    check-cast p2, Lcom/android/systemui/statusbar/OperatorNameView;

    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/OperatorNameViewController;->update()V

    return-void
.end method

.method private update()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/OperatorNameView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string v2, "show_operator_name"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/OperatorNameViewController;->getSubInfos()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, v3, v1, p0}, Lcom/android/systemui/statusbar/OperatorNameView;->update(ZZLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method protected onViewAttached()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mDarkReceiver:Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mSignalCallback:Lcom/android/systemui/statusbar/connectivity/SignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

    const-string v2, "show_operator_name"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mDarkReceiver:Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mSignalCallback:Lcom/android/systemui/statusbar/connectivity/SignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
