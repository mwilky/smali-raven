.class public final synthetic Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/slice/SliceViewManager$SliceCallback;
.implements Lcom/android/keyguard/KeyguardAbsKeyInputView$KeyDownListener;
.implements Lcom/android/systemui/accessibility/MagnificationModeSwitch$SwitchListener;
.implements Lcom/android/systemui/dreams/complication/dagger/DaggerViewModelProviderFactory$ViewModelCreator;
.implements Lcom/android/settingslib/users/ActivityStarter;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Landroidx/lifecycle/ViewModel;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/dreams/complication/ComplicationViewModel;

    return-object p0
.end method

.method public onKeyDown(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onUserInput()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public onSliceUpdated(Landroidx/slice/Slice;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSwitch(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/accessibility/ModeSwitchesController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/accessibility/ModeSwitchesController;->onSwitch(II)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/user/CreateUserActivity;

    iget-object v0, p0, Lcom/android/systemui/user/CreateUserActivity;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settingslib/users/EditUserInfoController;->mWaitingForActivityResult:Z

    const/16 v0, 0x3ec

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
