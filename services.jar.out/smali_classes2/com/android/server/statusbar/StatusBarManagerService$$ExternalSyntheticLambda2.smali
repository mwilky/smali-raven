.class public final synthetic Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda2;->f$0:Z

    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda2;->f$0:Z

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerService;->$r8$lambda$OwBHc8REiqmJuTXfrcUSjpBgn3s(ZLjava/lang/String;)V

    return-void
.end method
