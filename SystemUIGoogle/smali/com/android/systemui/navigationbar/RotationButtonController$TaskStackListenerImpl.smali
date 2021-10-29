.class Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "RotationButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/RotationButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskStackListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/RotationButtonController;


# direct methods
.method public static synthetic $r8$lambda$iLZA4KaXOd2fwTwYq6-dIR2Y21k(Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;ILandroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;->lambda$onActivityRequestedOrientationChanged$0(ILandroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;->this$0:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/navigationbar/RotationButtonController;Lcom/android/systemui/navigationbar/RotationButtonController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    return-void
.end method

.method private synthetic lambda$onActivityRequestedOrientationChanged$0(ILandroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;->this$0:Lcom/android/systemui/navigationbar/RotationButtonController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityRequestedOrientationChanged(II)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl$$ExternalSyntheticLambda1;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;I)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTaskMovedToFront(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;->this$0:Lcom/android/systemui/navigationbar/RotationButtonController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;->this$0:Lcom/android/systemui/navigationbar/RotationButtonController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void
.end method

.method public onTaskStackChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;->this$0:Lcom/android/systemui/navigationbar/RotationButtonController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void
.end method
