.class public Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source "NavigationBarVisibility.java"


# instance fields
.field private final mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mCommandQueueCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

.field private final mDisplayId:I

.field private final mExceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/actions/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final mGateListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

.field private mIsKeyguardShowing:Z

.field private mIsNavigationGestural:Z

.field private mIsNavigationHidden:Z

.field private final mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

.field private final mNavigationModeGate:Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/actions/Action;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$1;-><init>(Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mCommandQueueCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    new-instance v1, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$2;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$2;-><init>(Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;)V

    iput-object v1, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mGateListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mExceptions:Ljava/util/List;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsNavigationHidden:Z

    const-class p2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p2

    iput p2, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mDisplayId:I

    const-class p2, Lcom/android/systemui/assist/AssistManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/systemui/assist/AssistManagerGoogle;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    new-instance p2, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-virtual {p2, v1}, Lcom/google/android/systemui/elmyra/gates/Gate;->setListener(Lcom/google/android/systemui/elmyra/gates/Gate$Listener;)V

    new-instance p2, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mNavigationModeGate:Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;

    invoke-virtual {p2, v1}, Lcom/google/android/systemui/elmyra/gates/Gate;->setListener(Lcom/google/android/systemui/elmyra/gates/Gate$Listener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;)I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mDisplayId:I

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsNavigationHidden:Z

    return p0
.end method

.method static synthetic access$102(Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsNavigationHidden:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;)Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->updateKeyguardState()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;)Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mNavigationModeGate:Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->updateNavigationModeState()V

    return-void
.end method

.method private isActiveAssistantNga()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mAssistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->isActiveAssistantNga()Z

    move-result p0

    return p0
.end method

.method private updateKeyguardState()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->isKeyguardShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsKeyguardShowing:Z

    return-void
.end method

.method private updateNavigationModeState()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mNavigationModeGate:Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->isNavigationGestural()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsNavigationGestural:Z

    return-void
.end method


# virtual methods
.method protected isBlocked()Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsKeyguardShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsNavigationGestural:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->isActiveAssistantNga()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mExceptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mExceptions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/elmyra/actions/Action;

    invoke-virtual {v2}, Lcom/google/android/systemui/elmyra/actions/Action;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsNavigationHidden:Z

    return p0
.end method

.method protected onActivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->activate()V

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->updateKeyguardState()V

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mNavigationModeGate:Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->activate()V

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->updateNavigationModeState()V

    return-void
.end method

.method protected onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mNavigationModeGate:Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->deactivate()V

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->updateNavigationModeState()V

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mKeyguardGate:Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/gates/Gate;->deactivate()V

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->updateKeyguardState()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [mIsNavigationHidden -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsNavigationHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; mExceptions -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mExceptions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; mIsNavigationGestural -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsNavigationGestural:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; isActiveAssistantNga() -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->isActiveAssistantNga()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
