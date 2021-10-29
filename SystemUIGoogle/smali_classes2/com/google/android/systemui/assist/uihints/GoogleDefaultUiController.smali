.class public Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;
.super Lcom/android/systemui/assist/ui/DefaultUiController;
.source "GoogleDefaultUiController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/assist/GoogleAssistLogger;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/ui/DefaultUiController;-><init>(Landroid/content/Context;Lcom/android/systemui/assist/AssistLogger;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;->setGoogleAssistant(Z)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->invocation_lights:I

    iget-object v1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;

    iput-object p1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationLightsView:Lcom/android/systemui/assist/ui/InvocationLightsView;

    iget-object p0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setGoogleAssistant(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationLightsView:Lcom/android/systemui/assist/ui/InvocationLightsView;

    check-cast p0, Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;->setGoogleAssistant(Z)V

    return-void
.end method
