.class public final synthetic Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/apppairs/AppPair;

.field public final synthetic f$1:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/apppairs/AppPair;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/apppairs/AppPair;

    iput-object p2, p0, Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda4;->f$1:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/apppairs/AppPair;

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPair$$ExternalSyntheticLambda4;->f$1:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/apppairs/AppPair;->$r8$lambda$glo-reNxsivFR9skj97RqcZeuOo(Lcom/android/wm/shell/apppairs/AppPair;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
