.class public Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;
.super Ljava/lang/Object;
.source "AccessibilityFloatingMenuController.java"

# interfaces
.implements Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver$ModeChangedListener;
.implements Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver$TargetsChangedListener;


# instance fields
.field private final mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

.field private final mAccessibilityButtonTargetsObserver:Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;

.field private mBtnMode:I

.field private mBtnTargets:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mFloatingMenu:Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mIsAccessibilityManagerServiceReady:Z

.field private mIsKeyguardVisible:Z

.field final mKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$1;-><init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mAccessibilityButtonTargetsObserver:Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;

    iput-object p3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    iput-object p4, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mIsKeyguardVisible:Z

    iput-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mIsAccessibilityManagerServiceReady:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mIsAccessibilityManagerServiceReady:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mIsAccessibilityManagerServiceReady:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mIsKeyguardVisible:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mIsKeyguardVisible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnMode:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnTargets:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnTargets:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->handleFloatingMenuVisibility(ZILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->destroyFloatingMenu()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;)Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;)Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mAccessibilityButtonTargetsObserver:Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;

    return-object p0
.end method

.method private destroyFloatingMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mFloatingMenu:Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mFloatingMenu:Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;

    return-void
.end method

.method private handleFloatingMenuVisibility(ZILjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->destroyFloatingMenu()V

    return-void

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->shouldShowFloatingMenu(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->showFloatingMenu()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->destroyFloatingMenu()V

    :goto_0
    return-void
.end method

.method private registerContentObservers()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    invoke-virtual {v0, p0}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->addListener(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mAccessibilityButtonTargetsObserver:Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;

    invoke-virtual {v0, p0}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->addListener(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private shouldShowFloatingMenu(ILjava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showFloatingMenu()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mFloatingMenu:Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mFloatingMenu:Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mFloatingMenu:Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;

    invoke-interface {p0}, Lcom/android/systemui/accessibility/floatingmenu/IAccessibilityFloatingMenu;->show()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;->getCurrentAccessibilityButtonMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnMode:I

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mAccessibilityButtonTargetsObserver:Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;->getCurrentAccessibilityButtonTargets()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnTargets:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->registerContentObservers()V

    return-void
.end method

.method public onAccessibilityButtonModeChanged(I)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnMode:I

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mIsKeyguardVisible:Z

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnTargets:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->handleFloatingMenuVisibility(ZILjava/lang/String;)V

    return-void
.end method

.method public onAccessibilityButtonTargetsChanged(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnTargets:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mIsKeyguardVisible:Z

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnMode:I

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->handleFloatingMenuVisibility(ZILjava/lang/String;)V

    return-void
.end method
