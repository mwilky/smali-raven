.class public final synthetic Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/log/BiometricContextProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    check-cast p1, Landroid/hardware/biometrics/common/OperationContext;

    check-cast p2, Ljava/util/function/Consumer;

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/log/BiometricContextProvider;->$r8$lambda$_2MYC_po3MuhMoWo9cfk_J8sJdM(Lcom/android/server/biometrics/log/BiometricContextProvider;Landroid/hardware/biometrics/common/OperationContext;Ljava/util/function/Consumer;)V

    return-void
.end method
