.class public final synthetic Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService$1;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$1;JI[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/BiometricService$1;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$1:J

    iput p4, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$2:I

    iput-object p5, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$3:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/BiometricService$1;

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$1:J

    iget v3, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$2:I

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$3:[B

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/biometrics/BiometricService$1;->$r8$lambda$fc8VQMVCpVrkAJuebx5FETEaAJM(Lcom/android/server/biometrics/BiometricService$1;JI[B)V

    return-void
.end method
