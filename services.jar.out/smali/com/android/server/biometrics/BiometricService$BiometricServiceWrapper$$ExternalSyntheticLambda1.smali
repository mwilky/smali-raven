.class public final synthetic Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$$ExternalSyntheticLambda1;->f$1:J

    iput p4, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$$ExternalSyntheticLambda1;->f$1:J

    iget p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->$r8$lambda$grRwYtYgUJcI8f_4rh_e-gLfMN8(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;JI)V

    return-void
.end method
