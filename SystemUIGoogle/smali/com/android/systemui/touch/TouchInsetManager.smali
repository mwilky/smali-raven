.class public final Lcom/android/systemui/touch/TouchInsetManager;
.super Ljava/lang/Object;
.source "TouchInsetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;
    }
.end annotation


# instance fields
.field public final mAttachListener:Lcom/android/systemui/touch/TouchInsetManager$1;

.field public final mDefinedRegions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation
.end field

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/dreams/DreamOverlayContainerView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/touch/TouchInsetManager;->mDefinedRegions:Ljava/util/HashMap;

    new-instance v0, Lcom/android/systemui/touch/TouchInsetManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/touch/TouchInsetManager$1;-><init>(Lcom/android/systemui/touch/TouchInsetManager;)V

    iput-object v0, p0, Lcom/android/systemui/touch/TouchInsetManager;->mAttachListener:Lcom/android/systemui/touch/TouchInsetManager$1;

    iput-object p1, p0, Lcom/android/systemui/touch/TouchInsetManager;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/touch/TouchInsetManager;->mRootView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public final updateTouchInset()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/touch/TouchInsetManager;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/touch/TouchInsetManager;->mDefinedRegions:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setTouchableRegion(Landroid/graphics/Region;)V

    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    return-void
.end method
