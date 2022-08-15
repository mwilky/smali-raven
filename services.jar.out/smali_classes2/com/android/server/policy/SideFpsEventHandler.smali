.class public Lcom/android/server/policy/SideFpsEventHandler;
.super Ljava/lang/Object;
.source "SideFpsEventHandler.java"


# instance fields
.field public mBiometricState:I

.field public final mContext:Landroid/content/Context;

.field public mDialog:Landroid/app/Dialog;

.field public final mDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public final mDialogSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/app/AlertDialog$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$2Lnq9a-h1xAxq4ZqS7DpFoqcDhM(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/policy/SideFpsEventHandler;->lambda$showConfirmDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$56NCRJQhLUkeE78ICfOk1tkxbRc(Lcom/android/server/policy/SideFpsEventHandler;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/SideFpsEventHandler;->lambda$onSinglePressDetected$2(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$gcueeNW0Nc_qEAdLIVdfOp1b4ss(Landroid/os/PowerManager;JLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/policy/SideFpsEventHandler;->lambda$showConfirmDialog$3(Landroid/os/PowerManager;JLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pgsGnyzJyhQ5wxh4oXVOBGo_WhU(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 0

    invoke-static {p0}, Lcom/android/server/policy/SideFpsEventHandler;->lambda$new$1(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w8Y_QVkMEmmYt4yn48du9UsG14M(Lcom/android/server/policy/SideFpsEventHandler;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/SideFpsEventHandler;->lambda$new$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDialog(Lcom/android/server/policy/SideFpsEventHandler;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/policy/SideFpsEventHandler;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSideFpsEventHandlerReady(Lcom/android/server/policy/SideFpsEventHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBiometricState(Lcom/android/server/policy/SideFpsEventHandler;I)V
    .locals 0

    iput p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mBiometricState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDialog(Lcom/android/server/policy/SideFpsEventHandler;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;)V
    .locals 1

    new-instance v0, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/SideFpsEventHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;Ljava/util/function/Supplier;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/os/PowerManager;",
            "Ljava/util/function/Supplier<",
            "Landroid/app/AlertDialog$Builder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/SideFpsEventHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/SideFpsEventHandler;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/policy/SideFpsEventHandler;->mPowerManager:Landroid/os/PowerManager;

    iput-object p4, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialogSupplier:Ljava/util/function/Supplier;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/server/policy/SideFpsEventHandler;->mBiometricState:I

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/android/server/policy/SideFpsEventHandler;->mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Lcom/android/server/policy/SideFpsEventHandler$1;

    invoke-direct {p2, p0}, Lcom/android/server/policy/SideFpsEventHandler$1;-><init>(Lcom/android/server/policy/SideFpsEventHandler;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.SCREEN_OFF"

    invoke-direct {p0, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Landroid/app/Dialog;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$1(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private synthetic lambda$onSinglePressDetected$2(J)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialogSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/policy/SideFpsEventHandler;->mPowerManager:Landroid/os/PowerManager;

    iget v5, p0, Lcom/android/server/policy/SideFpsEventHandler;->mBiometricState:I

    iget-object v6, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-wide v3, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/policy/SideFpsEventHandler;->showConfirmDialog(Landroid/app/AlertDialog$Builder;Landroid/os/PowerManager;JILandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic lambda$showConfirmDialog$3(Landroid/os/PowerManager;JLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p3, 0x4

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void
.end method

.method public static synthetic lambda$showConfirmDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static showConfirmDialog(Landroid/app/AlertDialog$Builder;Landroid/os/PowerManager;JILandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    const p4, 0x1040407

    goto :goto_1

    :cond_1
    const p4, 0x1040403

    :goto_1
    if-eqz v1, :cond_2

    const v2, 0x1040404

    goto :goto_2

    :cond_2
    const v2, 0x1040400

    :goto_2
    if-eqz v1, :cond_3

    const v3, 0x1040406

    goto :goto_3

    :cond_3
    const v3, 0x1040402

    :goto_3
    if-eqz v1, :cond_4

    const v1, 0x1040405

    goto :goto_4

    :cond_4
    const v1, 0x1040401

    :goto_4
    invoke-virtual {p0, p4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p4, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda1;

    invoke-direct {p4, p1, p2, p3}, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda1;-><init>(Landroid/os/PowerManager;J)V

    invoke-virtual {p0, v3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7e1

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0
.end method


# virtual methods
.method public onFingerprintSensorReady()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v1, Lcom/android/server/policy/SideFpsEventHandler$2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/policy/SideFpsEventHandler$2;-><init>(Lcom/android/server/policy/SideFpsEventHandler;Landroid/hardware/fingerprint/FingerprintManager;)V

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    return-void
.end method

.method public onSinglePressDetected(J)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mBiometricState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/SideFpsEventHandler;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2
.end method
