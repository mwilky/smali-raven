.class public final synthetic Lcom/android/systemui/biometrics/AuthCredentialView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/AuthCredentialView;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthCredentialView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/biometrics/AuthCredentialView;

    iput p2, p0, Lcom/android/systemui/biometrics/AuthCredentialView$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget p0, p0, Lcom/android/systemui/biometrics/AuthCredentialView$$ExternalSyntheticLambda2;->f$1:I

    invoke-static {v0, p0}, Lcom/android/systemui/biometrics/AuthCredentialView;->$r8$lambda$CnNAEf5m7Okdt4yq8_mRRO23tb4(Lcom/android/systemui/biometrics/AuthCredentialView;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
