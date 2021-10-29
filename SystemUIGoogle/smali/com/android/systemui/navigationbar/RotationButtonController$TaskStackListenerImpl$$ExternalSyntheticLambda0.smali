.class public final synthetic Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;

    iput p2, p0, Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;

    iget p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;->$r8$lambda$iLZA4KaXOd2fwTwYq6-dIR2Y21k(Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;ILandroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
