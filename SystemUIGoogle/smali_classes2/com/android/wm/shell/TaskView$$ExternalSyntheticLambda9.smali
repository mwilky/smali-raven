.class public final synthetic Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/TaskView;

.field public final synthetic f$1:Landroid/os/Binder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/TaskView;Landroid/os/Binder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda9;->f$0:Lcom/android/wm/shell/TaskView;

    iput-object p2, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda9;->f$1:Landroid/os/Binder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda9;->f$0:Lcom/android/wm/shell/TaskView;

    iget-object p0, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda9;->f$1:Landroid/os/Binder;

    invoke-static {v0, p0}, Lcom/android/wm/shell/TaskView;->$r8$lambda$gUVcjQEtjaAWohBYwfk3QLmw4aQ(Lcom/android/wm/shell/TaskView;Landroid/os/Binder;)V

    return-void
.end method
