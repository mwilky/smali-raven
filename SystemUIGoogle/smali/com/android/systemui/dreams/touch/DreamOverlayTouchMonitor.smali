.class public final Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;
.super Ljava/lang/Object;
.source "DreamOverlayTouchMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$Evaluator;,
        Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$TouchSessionImpl;
    }
.end annotation


# instance fields
.field public final mActiveTouchSessions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$TouchSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentInputSession:Lcom/android/systemui/dreams/touch/InputSession;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandlers:Ljava/util/Set;

.field public mInputEventListener:Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$2;

.field public mInputSessionFactory:Lcom/android/systemui/dreams/touch/dagger/InputSessionComponent$Factory;

.field public final mLifecycle:Landroidx/lifecycle/Lifecycle;

.field public final mLifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

.field public mOnGestureListener:Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroidx/lifecycle/Lifecycle;Lcom/android/systemui/dreams/touch/dagger/InputSessionComponent$Factory;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/lifecycle/Lifecycle;",
            "Lcom/android/systemui/dreams/touch/dagger/InputSessionComponent$Factory;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/dreams/touch/DreamTouchHandler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$1;-><init>(Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;->mLifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;->mActiveTouchSessions:Ljava/util/HashSet;

    new-instance v0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$2;-><init>(Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;->mInputEventListener:Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$2;

    new-instance v0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3;-><init>(Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;->mOnGestureListener:Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3;

    iput-object p4, p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;->mHandlers:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;->mInputSessionFactory:Lcom/android/systemui/dreams/touch/dagger/InputSessionComponent$Factory;

    iput-object p1, p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    return-void
.end method
