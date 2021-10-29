.class Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;
.super Landroid/view/accessibility/IWindowMagnificationConnection$Stub;
.source "WindowMagnificationConnectionImpl.java"


# instance fields
.field private mConnectionCallback:Landroid/view/accessibility/IWindowMagnificationConnectionCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mModeSwitchesController:Lcom/android/systemui/accessibility/ModeSwitchesController;

.field private final mWindowMagnification:Lcom/android/systemui/accessibility/WindowMagnification;


# direct methods
.method public static synthetic $r8$lambda$Bj8F8LRgtyHLOKWg_cvDZYLkCuA(Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->lambda$removeMagnificationButton$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OC0g841N5ZhjHbyDFzBKBuF0IOo(Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;IFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->lambda$enableWindowMagnification$0(IFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rzf78V9HDxPy9zmfsb_45kWo_MI(Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->lambda$setScale$1(IF)V

    return-void
.end method

.method public static synthetic $r8$lambda$XpOSryAGilW2pyj3FTKsILOXGj0(Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->lambda$moveWindowMagnifier$3(IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$oJLFfr1VLUoMb3QOWX7IRxp5Vms(Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->lambda$showMagnificationButton$4(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$ysVXK0NW7CCgoUQ2N8_EsDwhy8Q(Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;ILandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->lambda$disableWindowMagnification$2(ILandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/accessibility/WindowMagnification;Landroid/os/Handler;Lcom/android/systemui/accessibility/ModeSwitchesController;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mWindowMagnification:Lcom/android/systemui/accessibility/WindowMagnification;

    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mModeSwitchesController:Lcom/android/systemui/accessibility/ModeSwitchesController;

    return-void
.end method

.method private synthetic lambda$disableWindowMagnification$2(ILandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mWindowMagnification:Lcom/android/systemui/accessibility/WindowMagnification;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnification;->disableWindowMagnification(ILandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    return-void
.end method

.method private synthetic lambda$enableWindowMagnification$0(IFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mWindowMagnification:Lcom/android/systemui/accessibility/WindowMagnification;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/accessibility/WindowMagnification;->enableWindowMagnification(IFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    return-void
.end method

.method private synthetic lambda$moveWindowMagnifier$3(IFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mWindowMagnification:Lcom/android/systemui/accessibility/WindowMagnification;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/accessibility/WindowMagnification;->moveWindowMagnifier(IFF)V

    return-void
.end method

.method private synthetic lambda$removeMagnificationButton$5(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mModeSwitchesController:Lcom/android/systemui/accessibility/ModeSwitchesController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/ModeSwitchesController;->removeButton(I)V

    return-void
.end method

.method private synthetic lambda$setScale$1(IF)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mWindowMagnification:Lcom/android/systemui/accessibility/WindowMagnification;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnification;->setScale(IF)V

    return-void
.end method

.method private synthetic lambda$showMagnificationButton$4(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mModeSwitchesController:Lcom/android/systemui/accessibility/ModeSwitchesController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/accessibility/ModeSwitchesController;->showButton(II)V

    return-void
.end method


# virtual methods
.method public disableWindowMagnification(ILandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;ILandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public enableWindowMagnification(IFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;IFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public moveWindowMagnifier(IFF)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;IFF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method onAccessibilityActionPerformed(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mConnectionCallback:Landroid/view/accessibility/IWindowMagnificationConnectionCallback;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/view/accessibility/IWindowMagnificationConnectionCallback;->onAccessibilityActionPerformed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WindowMagnificationConnectionImpl"

    const-string v0, "Failed to inform an accessibility action is already performed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method onPerformScaleAction(IF)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mConnectionCallback:Landroid/view/accessibility/IWindowMagnificationConnectionCallback;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/view/accessibility/IWindowMagnificationConnectionCallback;->onPerformScaleAction(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WindowMagnificationConnectionImpl"

    const-string p2, "Failed to inform performing scale action"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method onSourceBoundsChanged(ILandroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mConnectionCallback:Landroid/view/accessibility/IWindowMagnificationConnectionCallback;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/view/accessibility/IWindowMagnificationConnectionCallback;->onSourceBoundsChanged(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WindowMagnificationConnectionImpl"

    const-string p2, "Failed to inform source bounds changed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method onWindowMagnifierBoundsChanged(ILandroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mConnectionCallback:Landroid/view/accessibility/IWindowMagnificationConnectionCallback;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/view/accessibility/IWindowMagnificationConnectionCallback;->onWindowMagnifierBoundsChanged(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WindowMagnificationConnectionImpl"

    const-string p2, "Failed to inform bounds changed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public removeMagnificationButton(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mConnectionCallback:Landroid/view/accessibility/IWindowMagnificationConnectionCallback;

    return-void
.end method

.method public setScale(IF)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;IF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showMagnificationButton(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
