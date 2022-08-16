.class public final Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source "NonGesturalNavigation.java"


# instance fields
.field public mCurrentModeIsGestural:Z

.field public final mModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field public final mModeListener:Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation$1;-><init>(Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->mModeListener:Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation$1;

    const-class p1, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationModeController;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->mModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    return-void
.end method


# virtual methods
.method public final isBlocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->mCurrentModeIsGestural:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final onActivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->mModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->mModeListener:Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v0

    invoke-static {v0}, Landroidx/preference/R$string;->isGesturalMode(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->mCurrentModeIsGestural:Z

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->mModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;->mModeListener:Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation$1;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
