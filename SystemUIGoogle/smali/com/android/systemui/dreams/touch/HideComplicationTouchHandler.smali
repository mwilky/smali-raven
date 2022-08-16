.class public final Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;
.super Ljava/lang/Object;
.source "HideComplicationTouchHandler.java"

# interfaces
.implements Lcom/android/systemui/dreams/touch/DreamTouchHandler;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public final mRestoreComplications:Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler$1;

.field public final mRestoreTimeout:I

.field public final mTouchInsetManager:Lcom/android/systemui/touch/TouchInsetManager;

.field public final mVisibilityController:Lcom/android/systemui/dreams/complication/Complication$VisibilityController;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "HideComplicationHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/dreams/complication/Complication$VisibilityController;ILcom/android/systemui/touch/TouchInsetManager;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler$1;-><init>(Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;)V

    iput-object v0, p0, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;->mRestoreComplications:Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler$1;

    iput-object p1, p0, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;->mVisibilityController:Lcom/android/systemui/dreams/complication/Complication$VisibilityController;

    iput p2, p0, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;->mRestoreTimeout:I

    iput-object p5, p0, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;->mTouchInsetManager:Lcom/android/systemui/touch/TouchInsetManager;

    iput-object p4, p0, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final onSessionStart(Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;)V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;->DEBUG:Z

    const-string v1, "HideComplicationHandler"

    if-eqz v0, :cond_0

    const-string/jumbo v2, "onSessionStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;->getActiveSessionCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    if-eqz v0, :cond_1

    const-string p0, "multiple active touch sessions, not fading"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {p1}, Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;->pop()Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    return-void

    :cond_2
    new-instance v0, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/touch/HideComplicationTouchHandler;Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/dreams/touch/DreamTouchHandler$TouchSession;->registerInputListener(Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)Z

    return-void
.end method
