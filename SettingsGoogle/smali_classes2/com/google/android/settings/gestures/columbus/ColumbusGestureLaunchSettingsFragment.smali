.class public Lcom/google/android/settings/gestures/columbus/ColumbusGestureLaunchSettingsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColumbusGestureLaunchSettingsFragment.java"

# interfaces
.implements Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper$GestureListener;


# instance fields
.field private mColumbusGestureHelper:Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$Xn2seLEUph8kGDOZbqu-xBfYUck(Lcom/google/android/settings/gestures/columbus/ColumbusGestureLaunchSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureLaunchSettingsFragment;->lambda$onTrigger$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onTrigger$0()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureLaunchSettingsFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f0405d8

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ColumbusLaunchSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x74f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f150047

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;

    invoke-direct {v0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureLaunchSettingsFragment;->mColumbusGestureHelper:Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureLaunchSettingsFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureLaunchSettingsFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureLaunchSettingsFragment;->mColumbusGestureHelper:Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;->setListener(Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper$GestureListener;)V

    iget-object p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureLaunchSettingsFragment;->mColumbusGestureHelper:Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;->unbindFromColumbusServiceProxy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureLaunchSettingsFragment;->mColumbusGestureHelper:Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;

    invoke-virtual {v0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;->bindToColumbusServiceProxy()V

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureLaunchSettingsFragment;->mColumbusGestureHelper:Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;

    invoke-virtual {v0, p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper;->setListener(Lcom/google/android/settings/gestures/columbus/ColumbusGestureHelper$GestureListener;)V

    return-void
.end method

.method public onTrigger()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureLaunchSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/settings/gestures/columbus/ColumbusGestureLaunchSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/settings/gestures/columbus/ColumbusGestureLaunchSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/gestures/columbus/ColumbusGestureLaunchSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
