.class public final synthetic Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceControl;

    iput p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout$$ExternalSyntheticLambda0;->f$0:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->$r8$lambda$82L5QyXg6tEDJRkVahFUcZxpBzw(Landroid/view/SurfaceControl;IILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
