.class public final synthetic Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/IBinder;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/os/IBinder;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda1;->f$2:Landroid/os/IBinder;

    iput p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda1;->f$3:I

    iput p5, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda1;->f$4:I

    iput-boolean p6, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda1;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda1;->f$2:Landroid/os/IBinder;

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda1;->f$3:I

    iget v4, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda1;->f$4:I

    iget-boolean v5, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda1;->f$5:Z

    invoke-static/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->$r8$lambda$aaKMp1V76gx6z3RD8wFE9Qs5sPk(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/os/IBinder;IIZ)V

    return-void
.end method
