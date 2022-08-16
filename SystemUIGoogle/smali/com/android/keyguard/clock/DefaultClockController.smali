.class public final Lcom/android/keyguard/clock/DefaultClockController;
.super Ljava/lang/Object;
.source "DefaultClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field public final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field public final mLayoutInflater:Landroid/view/LayoutInflater;

.field public final mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

.field public final mResources:Landroid/content/res/Resources;

.field public mTextDate:Landroid/widget/TextView;

.field public mTextTime:Landroid/widget/TextView;

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-direct {v0}, Lcom/android/keyguard/clock/ViewPreviewer;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    iput-object p1, p0, Lcom/android/keyguard/clock/DefaultClockController;->mResources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/keyguard/clock/DefaultClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/keyguard/clock/DefaultClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    return-void
.end method


# virtual methods
.method public final getBigClockView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0e0083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mView:Landroid/view/View;

    const v1, 0x7f0b06c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mView:Landroid/view/View;

    const v1, 0x7f0b01e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextDate:Landroid/widget/TextView;

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "default"

    return-object p0
.end method

.method public final getPreferredY(I)I
    .locals 0

    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public final getPreview(II)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/clock/DefaultClockController;->getBigClockView()Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/clock/DefaultClockController;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/keyguard/clock/DefaultClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/android/keyguard/clock/ViewPreviewer$1;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/android/keyguard/clock/ViewPreviewer$1;-><init>(Lcom/android/keyguard/clock/ViewPreviewer;IILandroid/view/View;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->run()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/clock/ViewPreviewer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "ViewPreviewer"

    const-string p2, "Error completing task"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v1
.end method

.method public final getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f080419

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f130203

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextTime:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextDate:Landroid/widget/TextView;

    return-void
.end method

.method public final onTimeTick()V
    .locals 0

    return-void
.end method

.method public final onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    return-void
.end method

.method public final setColorPalette(Z[I)V
    .locals 0

    return-void
.end method

.method public final setDarkAmount(F)V
    .locals 0

    return-void
.end method

.method public final setStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    return-void
.end method

.method public final setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/android/keyguard/clock/DefaultClockController;->mTextDate:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
