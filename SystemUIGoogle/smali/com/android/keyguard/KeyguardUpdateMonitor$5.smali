.class public final Lcom/android/keyguard/KeyguardUpdateMonitor$5;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final synthetic val$isStrongBiometric:Z

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(ILcom/android/keyguard/KeyguardUpdateMonitor;Z)V
    .locals 0

    iput-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-boolean p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->val$isStrongBiometric:Z

    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->val$isStrongBiometric:Z

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->val$userId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulBiometricUnlock(ZI)V

    return-void
.end method
