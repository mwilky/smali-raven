.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda46;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda46;->f$0:Landroid/view/SurfaceControl$Transaction;

    iput p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda46;->f$1:I

    iput p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda46;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda46;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda46;->f$0:Landroid/view/SurfaceControl$Transaction;

    iget v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda46;->f$1:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda46;->f$2:I

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda46;->f$3:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/wm/DisplayContent;->$r8$lambda$Rpi-f9v5NK07kXvdh1DOwETeqV0(Landroid/view/SurfaceControl$Transaction;IIZLcom/android/server/wm/WindowState;)V

    return-void
.end method
