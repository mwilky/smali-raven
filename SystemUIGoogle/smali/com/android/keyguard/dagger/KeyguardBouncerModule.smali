.class public interface abstract Lcom/android/keyguard/dagger/KeyguardBouncerModule;
.super Ljava/lang/Object;
.source "KeyguardBouncerModule.java"


# direct methods
.method public static providesKeyguardHostView(Landroid/view/ViewGroup;)Lcom/android/keyguard/KeyguardHostView;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->keyguard_host_view:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardHostView;

    return-object p0
.end method

.method public static providesKeyguardSecurityContainer(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSecurityContainer;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->keyguard_security_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    return-object p0
.end method

.method public static providesKeyguardSecurityViewFlipper(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->view_flipper:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    return-object p0
.end method

.method public static providesRootView(Landroid/view/LayoutInflater;)Landroid/view/ViewGroup;
    .locals 2

    sget v0, Lcom/android/systemui/R$layout;->keyguard_bouncer:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method
