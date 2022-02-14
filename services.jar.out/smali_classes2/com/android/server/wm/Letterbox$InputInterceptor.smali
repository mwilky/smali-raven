.class final Lcom/android/server/wm/Letterbox$InputInterceptor;
.super Ljava/lang/Object;
.source "Letterbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Letterbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputInterceptor"
.end annotation


# instance fields
.field private final mClientChannel:Landroid/view/InputChannel;

.field private final mInputEventReceiver:Landroid/view/InputEventReceiver;

.field private final mToken:Landroid/os/IBinder;

.field private final mWindowHandle:Landroid/view/InputWindowHandle;

.field private final mWmService:Lcom/android/server/wm/WindowManagerService;

.field final synthetic this$0:Lcom/android/server/wm/Letterbox;


# direct methods
.method constructor <init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;Lcom/android/server/wm/WindowState;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_0

    iget-object v2, p3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    goto :goto_0

    :cond_0
    move-object v2, p3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    new-instance v3, Lcom/android/server/wm/Letterbox$TapEventReceiver;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, p1, v2, v0}, Lcom/android/server/wm/Letterbox$TapEventReceiver;-><init>(Lcom/android/server/wm/Letterbox;Landroid/view/InputChannel;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v2}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/IBinder;

    new-instance v0, Landroid/view/InputWindowHandle;

    const/4 v2, 0x0

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput-object v1, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    iput-object p1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    const p1, 0x20800028

    iput p1, v0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    const/16 p1, 0x7e6

    iput p1, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    sget p1, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v2, p1

    iput-wide v2, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/view/InputWindowHandle;->visible:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iput p1, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    iput p1, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/Letterbox$InputInterceptor;)Landroid/view/InputWindowHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    return-object v0
.end method


# virtual methods
.method dispose()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    return-void
.end method

.method updateTouchableRegion(Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->translate(II)V

    return-void
.end method
