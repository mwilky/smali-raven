.class public final synthetic Lcom/android/systemui/biometrics/UdfpsView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/UdfpsView;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/UdfpsView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/biometrics/UdfpsView;

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsView$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/biometrics/UdfpsView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/systemui/biometrics/UdfpsView;->$r8$lambda$E79-ZFAUCc0wRcWUYo7gxLMKPpo(Lcom/android/systemui/biometrics/UdfpsView;Ljava/lang/Runnable;)V

    return-void
.end method
