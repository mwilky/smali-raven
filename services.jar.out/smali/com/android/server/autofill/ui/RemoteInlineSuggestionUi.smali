.class final Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;
.super Ljava/lang/Object;
.source "RemoteInlineSuggestionUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;
    }
.end annotation


# static fields
.field private static final RELEASE_REMOTE_VIEW_HOST_DELAY_MS:J = 0xc8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActualHeight:I

.field private mActualWidth:I

.field private mDelayedReleaseViewRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mHeight:I

.field private mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

.field private mInlineSuggestionUi:Landroid/service/autofill/IInlineSuggestionUi;

.field private final mInlineSuggestionUiCallback:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

.field private mRefCount:I

.field private final mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

.field private mWaitingForUiCreation:Z

.field private final mWidth:I


# direct methods
.method public static synthetic $r8$lambda$MMq47I5aZPTzvuGELQ_pARNunQ0(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleRequestSurfacePackage()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;IILandroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRefCount:I

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWaitingForUiCreation:Z

    iput-object p4, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    iput p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWidth:I

    iput p3, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHeight:I

    new-instance v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUiCallback:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;Landroid/service/autofill/IInlineSuggestionUi;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleInlineSuggestionUiReady(Landroid/service/autofill/IInlineSuggestionUi;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleOnLongClick()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleOnClick()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)I
    .locals 1

    iget v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mActualWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)I
    .locals 1

    iget v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mActualHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)Lcom/android/internal/view/inline/IInlineContentCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleUpdateRefCount(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;Landroid/content/IntentSender;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleOnStartIntentSender(Landroid/content/IntentSender;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;Landroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleOnTransferTouchFocusToImeWindow(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleOnError()V

    return-void
.end method

.method private cancelPendingReleaseViewRequest()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mDelayedReleaseViewRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mDelayedReleaseViewRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private handleInlineSuggestionUiReady(Landroid/service/autofill/IInlineSuggestionUi;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUi:Landroid/service/autofill/IInlineSuggestionUi;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRefCount:I

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWaitingForUiCreation:Z

    iput p3, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mActualWidth:I

    iput p4, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mActualHeight:I

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

    if-eqz v0, :cond_1

    :try_start_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->TAG:Ljava/lang/String;

    const-string v1, "Sending new UI content to IME"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleUpdateRefCount(I)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

    iget v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mActualWidth:I

    iget v2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mActualHeight:I

    invoke-interface {v0, p2, v1, v2}, Lcom/android/internal/view/inline/IInlineContentCallback;->onContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException calling onContent"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    :cond_2
    return-void
.end method

.method private handleOnClick()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->onClick()V

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/inline/IInlineContentCallback;->onClick()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException calling onClick"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private handleOnError()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->onError()V

    return-void
.end method

.method private handleOnLongClick()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/inline/IInlineContentCallback;->onLongClick()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException calling onLongClick"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private handleOnStartIntentSender(Landroid/content/IntentSender;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    invoke-virtual {v0, p1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->onStartIntentSender(Landroid/content/IntentSender;)V

    return-void
.end method

.method private handleOnTransferTouchFocusToImeWindow(Landroid/os/IBinder;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->onTransferTouchFocusToImeWindow(Landroid/os/IBinder;I)V

    return-void
.end method

.method private handleRequestSurfacePackage()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->cancelPendingReleaseViewRequest()V

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUi:Landroid/service/autofill/IInlineSuggestionUi;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWaitingForUiCreation:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->TAG:Ljava/lang/String;

    const-string v1, "Inline suggestion ui is not ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    iget v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWidth:I

    iget v2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHeight:I

    iget-object v3, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUiCallback:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->renderSuggestion(IILandroid/service/autofill/IInlineSuggestionUiCallback;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWaitingForUiCreation:Z

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    invoke-interface {v0, v1}, Landroid/service/autofill/IInlineSuggestionUi;->getSurfacePackage(Landroid/service/autofill/ISurfacePackageResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException calling getSurfacePackage."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private handleUpdateRefCount(I)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->cancelPendingReleaseViewRequest()V

    iget v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRefCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRefCount:I

    if-gtz v0, :cond_0

    new-instance v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mDelayedReleaseViewRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$handleUpdateRefCount$2$RemoteInlineSuggestionUi()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUi:Landroid/service/autofill/IInlineSuggestionUi;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "releasing the host"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUi:Landroid/service/autofill/IInlineSuggestionUi;

    invoke-interface {v0}, Landroid/service/autofill/IInlineSuggestionUi;->releaseSurfaceControlViewHost()V

    iput-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUi:Landroid/service/autofill/IInlineSuggestionUi;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException calling releaseSurfaceControlViewHost"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mDelayedReleaseViewRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic lambda$setInlineContentCallback$0$RemoteInlineSuggestionUi(Lcom/android/internal/view/inline/IInlineContentCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

    return-void
.end method

.method public synthetic lambda$surfacePackageReleased$1$RemoteInlineSuggestionUi()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleUpdateRefCount(I)V

    return-void
.end method

.method match(II)Z
    .locals 1

    iget v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHeight:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method requestSurfacePackage()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setInlineContentCallback(Lcom/android/internal/view/inline/IInlineContentCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;Lcom/android/internal/view/inline/IInlineContentCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method surfacePackageReleased()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
