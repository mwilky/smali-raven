.class public Lcom/android/systemui/navigationbar/NavigationBarOverlayController;
.super Ljava/lang/Object;
.source "NavigationBarOverlayController.java"


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCurrentView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public isNavigationBarOverlayEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public registerListeners()V
    .locals 0

    return-void
.end method

.method public setButtonState(ZZ)V
    .locals 0

    return-void
.end method

.method public setCanShow(Z)V
    .locals 0

    return-void
.end method

.method public unregisterListeners()V
    .locals 0

    return-void
.end method
