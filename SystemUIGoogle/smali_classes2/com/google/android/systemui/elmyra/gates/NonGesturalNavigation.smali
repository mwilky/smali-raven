.class public Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source "NonGesturalNavigation.java"


# instance fields
.field private mCurrentModeIsGestural:Z

.field private final mModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field private final mModeListener:Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation$1;-><init>(Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->mModeListener:Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;

    const-class p1, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationModeController;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->mModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->mCurrentModeIsGestural:Z

    return p1
.end method


# virtual methods
.method protected isBlocked()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->isNavigationGestural()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isNavigationGestural()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->mCurrentModeIsGestural:Z

    return p0
.end method

.method protected onActivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->mModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->mModeListener:Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->mCurrentModeIsGestural:Z

    return-void
.end method

.method protected onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->mModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->mModeListener:Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->removeListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)V

    return-void
.end method
