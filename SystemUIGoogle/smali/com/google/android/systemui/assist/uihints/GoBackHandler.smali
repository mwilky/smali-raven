.class public final Lcom/google/android/systemui/assist/uihints/GoBackHandler;
.super Ljava/lang/Object;
.source "GoBackHandler.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$GoBackListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static injectBackKeyEvent(I)V
    .locals 15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v13

    new-instance v14, Landroid/view/KeyEvent;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x48

    const/16 v12, 0x101

    move-object v0, v14

    move-wide v1, v3

    move v5, p0

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 p0, 0x0

    invoke-virtual {v13, v14, p0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method


# virtual methods
.method public final onGoBack()V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/GoBackHandler;->injectBackKeyEvent(I)V

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/GoBackHandler;->injectBackKeyEvent(I)V

    return-void
.end method
