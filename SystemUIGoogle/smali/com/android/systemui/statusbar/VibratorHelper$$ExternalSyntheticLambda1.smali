.class public final synthetic Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/os/VibrationEffect;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Landroid/os/VibrationAttributes;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/VibratorHelper;ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/VibratorHelper;

    iput p2, p0, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;->f$3:Landroid/os/VibrationEffect;

    iput-object p5, p0, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;->f$5:Landroid/os/VibrationAttributes;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/VibratorHelper;

    iget v2, p0, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;->f$1:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;->f$3:Landroid/os/VibrationEffect;

    iget-object v5, p0, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;->f$5:Landroid/os/VibrationAttributes;

    iget-object v1, v0, Lcom/android/systemui/statusbar/VibratorHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    return-void
.end method
