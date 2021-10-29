.class Lcom/google/android/systemui/assist/uihints/GoBackHandler;
.super Ljava/lang/Object;
.source "GoBackHandler.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$GoBackListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private injectBackKeyEvent(I)V
    .locals 14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p0

    new-instance v13, Landroid/view/KeyEvent;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x48

    const/16 v12, 0x101

    move-object v0, v13

    move-wide v1, v3

    move v5, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 p1, 0x0

    invoke-virtual {p0, v13, p1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method


# virtual methods
.method public onGoBack()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/uihints/GoBackHandler;->injectBackKeyEvent(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/uihints/GoBackHandler;->injectBackKeyEvent(I)V

    return-void
.end method
