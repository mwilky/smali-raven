.class public final synthetic Lcom/android/server/biometrics/BiometricService$Injector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$Injector$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$Injector$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p0}, Lcom/android/server/biometrics/BiometricService$Injector;->$r8$lambda$BYjCZkREJX4ouairW7uSfjVEgXQ(Ljava/util/concurrent/atomic/AtomicLong;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
