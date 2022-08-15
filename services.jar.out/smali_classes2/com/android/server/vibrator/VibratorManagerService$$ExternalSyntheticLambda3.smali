.class public final synthetic Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/vibrator/VibratorManagerService;

.field public final synthetic f$1:Lcom/android/server/vibrator/Vibration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/vibrator/VibratorManagerService;

    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/vibrator/Vibration;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/vibrator/Vibration;

    check-cast p1, Landroid/os/VibrationEffect;

    invoke-static {v0, p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->$r8$lambda$wJdO-Sibb0a5uXlg9zKLWGjMyFU(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration;Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method
