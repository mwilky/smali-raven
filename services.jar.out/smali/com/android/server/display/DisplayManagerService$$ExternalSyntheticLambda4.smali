.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/display/DisplayManagerService;

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;->f$1:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;->f$1:Landroid/view/SurfaceControl$Transaction;

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/DisplayManagerService;->lambda$performTraversalLocked$4$DisplayManagerService(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method
