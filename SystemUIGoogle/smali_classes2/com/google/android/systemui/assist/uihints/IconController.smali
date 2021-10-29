.class public Lcom/google/android/systemui/assist/uihints/IconController;
.super Ljava/lang/Object;
.source "IconController.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$KeyboardInfoListener;
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ZerostateInfoListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/google/android/systemui/assist/uihints/input/TouchActionRegion;


# instance fields
.field private mHasAccurateLuma:Z

.field private final mKeyboardIcon:Lcom/google/android/systemui/assist/uihints/KeyboardIconView;

.field private mKeyboardIconRequested:Z

.field private mOnKeyboardIconTap:Landroid/app/PendingIntent;

.field private mOnZerostateIconTap:Landroid/app/PendingIntent;

.field private final mParent:Landroid/view/ViewGroup;

.field private final mZeroStateIcon:Lcom/google/android/systemui/assist/uihints/ZeroStateIconView;

.field private mZerostateIconRequested:Z


# direct methods
.method public static synthetic $r8$lambda$QREIPGMxPvGuPM9x2v5ywsVuUtc(Lcom/google/android/systemui/assist/uihints/IconController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/IconController;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TKGHQaseivsWmxHVquOfAFZ3C-4(Lcom/google/android/systemui/assist/uihints/IconController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/IconController;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mParent:Landroid/view/ViewGroup;

    sget p1, Lcom/android/systemui/R$id;->keyboard:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/assist/uihints/KeyboardIconView;

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mKeyboardIcon:Lcom/google/android/systemui/assist/uihints/KeyboardIconView;

    new-instance v0, Lcom/google/android/systemui/assist/uihints/IconController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/IconController$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/assist/uihints/IconController;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/android/systemui/R$id;->zerostate:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/assist/uihints/ZeroStateIconView;

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mZeroStateIcon:Lcom/google/android/systemui/assist/uihints/ZeroStateIconView;

    new-instance p2, Lcom/google/android/systemui/assist/uihints/IconController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/assist/uihints/IconController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/IconController;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-interface {p3, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mOnKeyboardIconTap:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "IconController"

    const-string v0, "Pending intent cancelled"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mOnZerostateIconTap:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "IconController"

    const-string v0, "Pending intent cancelled"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private maybeUpdateIconVisibility(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p2, :cond_1

    iget-boolean p0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mHasAccurateLuma:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eq v0, v1, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private maybeUpdateKeyboardVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mKeyboardIcon:Lcom/google/android/systemui/assist/uihints/KeyboardIconView;

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mKeyboardIconRequested:Z

    invoke-direct {p0, v0, v1}, Lcom/google/android/systemui/assist/uihints/IconController;->maybeUpdateIconVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method private maybeUpdateZerostateVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mZeroStateIcon:Lcom/google/android/systemui/assist/uihints/ZeroStateIconView;

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mZerostateIconRequested:Z

    invoke-direct {p0, v0, v1}, Lcom/google/android/systemui/assist/uihints/IconController;->maybeUpdateIconVisibility(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public getTouchActionRegion()Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mKeyboardIcon:Lcom/google/android/systemui/assist/uihints/KeyboardIconView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mKeyboardIcon:Lcom/google/android/systemui/assist/uihints/KeyboardIconView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mZeroStateIcon:Lcom/google/android/systemui/assist/uihints/ZeroStateIconView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mZeroStateIcon:Lcom/google/android/systemui/assist/uihints/ZeroStateIconView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method isRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mKeyboardIconRequested:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mZerostateIconRequested:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mKeyboardIcon:Lcom/google/android/systemui/assist/uihints/KeyboardIconView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mZeroStateIcon:Lcom/google/android/systemui/assist/uihints/ZeroStateIconView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mKeyboardIcon:Lcom/google/android/systemui/assist/uihints/KeyboardIconView;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/KeyboardIconView;->onDensityChanged()V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mZeroStateIcon:Lcom/google/android/systemui/assist/uihints/ZeroStateIconView;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/ZeroStateIconView;->onDensityChanged()V

    return-void
.end method

.method public onHideKeyboard()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mKeyboardIconRequested:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mOnKeyboardIconTap:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/IconController;->maybeUpdateKeyboardVisibility()V

    return-void
.end method

.method public onHideZerostate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mZerostateIconRequested:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mOnZerostateIconTap:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/IconController;->maybeUpdateZerostateVisibility()V

    return-void
.end method

.method public onShowKeyboard(Landroid/app/PendingIntent;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mKeyboardIconRequested:Z

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mOnKeyboardIconTap:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/IconController;->maybeUpdateKeyboardVisibility()V

    return-void
.end method

.method public onShowZerostate(Landroid/app/PendingIntent;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mZerostateIconRequested:Z

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mOnZerostateIconTap:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/IconController;->maybeUpdateZerostateVisibility()V

    return-void
.end method

.method setHasAccurateLuma(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mHasAccurateLuma:Z

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/IconController;->maybeUpdateKeyboardVisibility()V

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/IconController;->maybeUpdateZerostateVisibility()V

    return-void
.end method

.method setHasDarkBackground(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mKeyboardIcon:Lcom/google/android/systemui/assist/uihints/KeyboardIconView;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/assist/uihints/KeyboardIconView;->setHasDarkBackground(Z)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/IconController;->mZeroStateIcon:Lcom/google/android/systemui/assist/uihints/ZeroStateIconView;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/ZeroStateIconView;->setHasDarkBackground(Z)V

    return-void
.end method
