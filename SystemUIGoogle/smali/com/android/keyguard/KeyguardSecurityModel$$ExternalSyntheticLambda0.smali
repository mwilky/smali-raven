.class public final synthetic Lcom/android/keyguard/KeyguardSecurityModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecurityModel;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityModel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecurityModel;

    iput p2, p0, Lcom/android/keyguard/KeyguardSecurityModel$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecurityModel;

    iget p0, p0, Lcom/android/keyguard/KeyguardSecurityModel$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
