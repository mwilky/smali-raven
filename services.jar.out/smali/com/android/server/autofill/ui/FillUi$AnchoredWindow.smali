.class public final Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;
.super Ljava/lang/Object;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/FillUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AnchoredWindow"
.end annotation


# instance fields
.field public final mContentView:Landroid/view/View;

.field public final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field public mShowParams:Landroid/view/WindowManager$LayoutParams;

.field public mShowing:Z

.field public final mWm:Landroid/view/WindowManager;

.field public final synthetic this$0:Lcom/android/server/autofill/ui/FillUi;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContentView(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShowParams(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShowing(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowing:Z

    return p0
.end method

.method public constructor <init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mWm:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->hide(Z)V

    return-void
.end method

.method public hide(Z)V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "FillUi"

    const-string v2, "Exception hiding window "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-static {p1}, Lcom/android/server/autofill/ui/FillUi;->-$$Nest$fgetmCallback(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$Callback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDestroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    throw p1
.end method

.method public show(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowParams:Landroid/view/WindowManager$LayoutParams;

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v1, "FillUi"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show(): showing="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", params="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/autofill/Helper;->paramsToString(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    const-string v0, "android"

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v0, "Autofill UI"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x104018b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;

    invoke-interface {v0, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->hideOverlays()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowing:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;

    invoke-interface {v0, v2, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception showing window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-static {p0}, Lcom/android/server/autofill/ui/FillUi;->-$$Nest$fgetmCallback(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDestroy()V

    goto :goto_0

    :catch_1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filed with with token "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " gone."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-static {p0}, Lcom/android/server/autofill/ui/FillUi;->-$$Nest$fgetmCallback(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDestroy()V

    :goto_0
    return-void
.end method
