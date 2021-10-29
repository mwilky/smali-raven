.class public final synthetic Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;ZLandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    iput-boolean p2, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$$ExternalSyntheticLambda1;->f$2:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    iget-boolean v1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$$ExternalSyntheticLambda1;->f$1:Z

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$$ExternalSyntheticLambda1;->f$2:Landroid/app/PendingIntent;

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->$r8$lambda$v_-DRSAcmRpLHks7pbD2avf-190(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;ZLandroid/app/PendingIntent;Landroid/view/View;)V

    return-void
.end method
