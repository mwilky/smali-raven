.class public final synthetic Lcom/android/keyguard/KeyguardUpdateMonitor$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$2;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor$2;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$2;

    iput p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$2;

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1, p0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object p0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(I)V

    return-void
.end method
