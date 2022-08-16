.class public abstract Lcom/android/systemui/biometrics/AuthCredentialView;
.super Landroid/widget/LinearLayout;
.source "AuthCredentialView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/AuthCredentialView$ErrorTimer;,
        Lcom/android/systemui/biometrics/AuthCredentialView$Callback;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public mCallback:Lcom/android/systemui/biometrics/AuthCredentialView$Callback;

.field public final mClearErrorRunnable:Lcom/android/systemui/biometrics/AuthCredentialView$1;

.field public mContainerView:Lcom/android/systemui/biometrics/AuthContainerView;

.field public mCredentialType:I

.field public mDescriptionView:Landroid/widget/TextView;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mEffectiveUserId:I

.field public mErrorTimer:Lcom/android/systemui/biometrics/AuthCredentialView$2;

.field public mErrorView:Landroid/widget/TextView;

.field public final mHandler:Landroid/os/Handler;

.field public mIconView:Landroid/widget/ImageView;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mOperationId:J

.field public mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

.field public mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field public mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field public mShouldAnimateContents:Z

.field public mShouldAnimatePanel:Z

.field public mSubtitleView:Landroid/widget/TextView;

.field public mTitleView:Landroid/widget/TextView;

.field public mUserId:I

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static $r8$lambda$06Ge7WVOmdRy4oAG0qAVkE-qopc(Lcom/android/systemui/biometrics/AuthCredentialView;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const p1, 0x7f1302fc

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized user type:"

    invoke-static {v0, p1}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const p1, 0x7f1302fb

    goto :goto_0

    :cond_2
    const p1, 0x7f1302f9

    :goto_0
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static $r8$lambda$4bP0GkhsIVjMeXEqBuxkvphZVwQ(Lcom/android/systemui/biometrics/AuthCredentialView;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthCredentialView;->getUserTypeForWipe()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string v2, "UNDEFINED"

    goto :goto_0

    :cond_0
    const-string v2, "SystemUi.BIOMETRIC_DIALOG_WORK_LOCK_FAILED_ATTEMPTS"

    :goto_0
    new-instance v3, Lcom/android/systemui/biometrics/AuthCredentialView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/biometrics/AuthCredentialView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/AuthCredentialView;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1302fa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/biometrics/AuthCredentialView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthCredentialView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/AuthCredentialView;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$6$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/wmshell/WMShell$6$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static $r8$lambda$CnNAEf5m7Okdt4yq8_mRRO23tb4(Lcom/android/systemui/biometrics/AuthCredentialView;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const p1, 0x7f13013e

    goto :goto_0

    :cond_0
    const p1, 0x7f130141

    goto :goto_0

    :cond_1
    const p1, 0x7f130144

    :goto_0
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static $r8$lambda$nI-igrPbFzSq7-enBYMNo4EYwFc(Lcom/android/systemui/biometrics/AuthCredentialView;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f13013c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthCredentialView;->getUserTypeForWipe()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mCredentialType:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v3, :cond_6

    if-eq v1, v4, :cond_3

    const/4 v5, 0x3

    if-ne v1, v5, :cond_2

    if-eq v2, v3, :cond_1

    if-eq v2, v4, :cond_0

    const v1, 0x7f13013f

    goto :goto_0

    :cond_0
    const v1, 0x7f130142

    goto :goto_0

    :cond_1
    const v1, 0x7f130145

    :goto_0
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized user type:"

    invoke-static {v0, v1}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    if-eq v2, v3, :cond_5

    if-eq v2, v4, :cond_4

    const-string v3, "SystemUi.BIOMETRIC_DIALOG_WORK_PASSWORD_LAST_ATTEMPT"

    goto :goto_1

    :cond_4
    const-string v3, "SystemUi.BIOMETRIC_DIALOG_WORK_PATTERN_LAST_ATTEMPT"

    goto :goto_1

    :cond_5
    const-string v3, "SystemUi.BIOMETRIC_DIALOG_WORK_PIN_LAST_ATTEMPT"

    :goto_1
    new-instance v5, Lcom/android/systemui/biometrics/AuthCredentialView$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/biometrics/AuthCredentialView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/AuthCredentialView;I)V

    invoke-virtual {v1, v3, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    if-eq v2, v3, :cond_8

    if-eq v2, v4, :cond_7

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f13013d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f130140

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f130143

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$6$$ExternalSyntheticLambda0;

    invoke-direct {v1, v4, v0}, Lcom/android/systemui/wmshell/WMShell$6$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/systemui/biometrics/AuthCredentialView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/AuthCredentialView$1;-><init>(Lcom/android/systemui/biometrics/AuthCredentialView;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mClearErrorRunnable:Lcom/android/systemui/biometrics/AuthCredentialView$1;

    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mHandler:Landroid/os/Handler;

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mUserManager:Landroid/os/UserManager;

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method


# virtual methods
.method public final getUserTypeForWipe()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget p0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mEffectiveUserId:I

    invoke-virtual {v1, p0}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v4, 0x8

    if-eqz v2, :cond_2

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mDescriptionView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mEffectiveUserId:I

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    :goto_5
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0803ce

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0803cf

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_6
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mShouldAnimateContents:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    new-instance v0, Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method

.method public onCredentialVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mClearErrorRunnable:Lcom/android/systemui/biometrics/AuthCredentialView$1;

    invoke-virtual {p2}, Lcom/android/systemui/biometrics/AuthCredentialView$1;->run()V

    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mEffectiveUserId:I

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperPasswordHandle()J

    move-result-wide p1

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-wide v4, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mOperationId:J

    iget v6, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mEffectiveUserId:I

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/LockPatternUtils;->verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mCallback:Lcom/android/systemui/biometrics/AuthCredentialView$Callback;

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object v0

    check-cast v1, Lcom/android/systemui/biometrics/AuthContainerView$CredentialCallback;

    invoke-virtual {v1, v0}, Lcom/android/systemui/biometrics/AuthContainerView$CredentialCallback;->onCredentialMatched([B)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->removeGatekeeperPasswordHandle(J)V

    goto/16 :goto_3

    :cond_0
    if-lez p2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mClearErrorRunnable:Lcom/android/systemui/biometrics/AuthCredentialView$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mEffectiveUserId:I

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide p1

    new-instance v6, Lcom/android/systemui/biometrics/AuthCredentialView$2;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v3, p1, v0

    iget-object v5, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mErrorView:Landroid/widget/TextView;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/biometrics/AuthCredentialView$2;-><init>(Lcom/android/systemui/biometrics/AuthCredentialView;Landroid/content/Context;JLandroid/widget/TextView;)V

    iput-object v6, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mErrorTimer:Lcom/android/systemui/biometrics/AuthCredentialView$2;

    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_3

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p2, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mEffectiveUserId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getMaximumFailedPasswordsForWipe(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-wide/16 v3, 0xbb8

    if-lez v0, :cond_7

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mErrorView:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f130135

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, p2

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mClearErrorRunnable:Lcom/android/systemui/biometrics/AuthCredentialView$1;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mClearErrorRunnable:Lcom/android/systemui/biometrics/AuthCredentialView$1;

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mErrorView:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    sub-int/2addr v0, p1

    if-ne v0, p2, :cond_5

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, v2, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    if-gtz v0, :cond_6

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda13;

    invoke-direct {v0, v2, p0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda13;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    :goto_0
    move v1, p2

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mEffectiveUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    if-nez v1, :cond_b

    iget p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mCredentialType:I

    if-eq p1, p2, :cond_9

    if-eq p1, v2, :cond_8

    const p1, 0x7f13014c

    goto :goto_2

    :cond_8
    const p1, 0x7f13014d

    goto :goto_2

    :cond_9
    const p1, 0x7f13014e

    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mClearErrorRunnable:Lcom/android/systemui/biometrics/AuthCredentialView$1;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mClearErrorRunnable:Lcom/android/systemui/biometrics/AuthCredentialView$1;

    invoke-virtual {p2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mErrorView:Landroid/widget/TextView;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mErrorTimer:Lcom/android/systemui/biometrics/AuthCredentialView$2;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public onErrorTimeoutFinish()V
    .locals 0

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b06c4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0b064d

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mSubtitleView:Landroid/widget/TextView;

    const v0, 0x7f0b01f4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mDescriptionView:Landroid/widget/TextView;

    const v0, 0x7f0b02ff

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mIconView:Landroid/widget/ImageView;

    const v0, 0x7f0b0270

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mErrorView:Landroid/widget/TextView;

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mShouldAnimatePanel:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/systemui/biometrics/AuthPanelController;->mUseFullScreen:Z

    iget p2, p1, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerWidth:I

    iget p3, p1, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerHeight:I

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/systemui/biometrics/AuthPanelController;->updateForContentDimensions(III)V

    iput-boolean p4, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mShouldAnimatePanel:Z

    :cond_0
    return-void
.end method
