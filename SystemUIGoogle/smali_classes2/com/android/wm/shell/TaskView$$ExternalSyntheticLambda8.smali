.class public final synthetic Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/TaskView;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/TaskView;ILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda8;->f$0:Lcom/android/wm/shell/TaskView;

    iput p2, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda8;->f$1:I

    iput-object p3, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda8;->f$2:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda8;->f$0:Lcom/android/wm/shell/TaskView;

    iget v1, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda8;->f$1:I

    iget-object p0, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda8;->f$2:Landroid/content/ComponentName;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/TaskView;->$r8$lambda$DR69fHp-JcyhT-nGaWm4B3rOUKw(Lcom/android/wm/shell/TaskView;ILandroid/content/ComponentName;)V

    return-void
.end method
