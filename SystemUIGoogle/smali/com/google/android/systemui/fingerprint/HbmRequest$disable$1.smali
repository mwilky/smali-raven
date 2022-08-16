.class public final Lcom/google/android/systemui/fingerprint/HbmRequest$disable$1;
.super Ljava/lang/Object;
.source "UdfpsHbmController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $onHbmDisabled:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/google/android/systemui/fingerprint/HbmRequest;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/fingerprint/HbmRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/fingerprint/HbmRequest$disable$1;->this$0:Lcom/google/android/systemui/fingerprint/HbmRequest;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/systemui/fingerprint/HbmRequest$disable$1;->$onHbmDisabled:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/HbmRequest$disable$1;->this$0:Lcom/google/android/systemui/fingerprint/HbmRequest;

    iget-object v0, v0, Lcom/google/android/systemui/fingerprint/HbmRequest;->lhbmProvider:Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "UdfpsLhbmProvider"

    const-string v2, "disableLhbm"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;->getDisplayHal()Lcom/google/hardware/pixel/display/IDisplay;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "disableLhbm | displayHal is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {v0, v2}, Lcom/google/hardware/pixel/display/IDisplay;->setLhbmState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "disableLhbm | RemoteException"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string v0, "UdfpsHbmController.e2e.disableHbm"

    invoke-static {v0, v2}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/HbmRequest$disable$1;->this$0:Lcom/google/android/systemui/fingerprint/HbmRequest;

    iget-object v1, v0, Lcom/google/android/systemui/fingerprint/HbmRequest;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/systemui/fingerprint/HbmRequest$disable$1$1;

    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/HbmRequest$disable$1;->$onHbmDisabled:Ljava/lang/Runnable;

    invoke-direct {v2, v0, p0}, Lcom/google/android/systemui/fingerprint/HbmRequest$disable$1$1;-><init>(Lcom/google/android/systemui/fingerprint/HbmRequest;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
