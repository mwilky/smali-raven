.class public final synthetic Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iput p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;->f$1:I

    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->$r8$lambda$kKbGZepMRKoI-uscA_XyzYIKj3g(Lcom/android/systemui/volume/VolumeDialogImpl;IILandroid/animation/ValueAnimator;)V

    return-void
.end method
