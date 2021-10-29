.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;->f$0:Landroid/os/IBinder;

    iput-boolean p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;->f$0:Landroid/os/IBinder;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayContent;->lambda$updateImeControlTarget$24(Landroid/os/IBinder;Z)V

    return-void
.end method
