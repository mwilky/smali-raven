.class Lcom/google/android/systemui/assist/uihints/OverlayUiHost;
.super Ljava/lang/Object;
.source "OverlayUiHost.java"


# instance fields
.field private mAttached:Z

.field private mFocusable:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mRoot:Lcom/google/android/systemui/assist/uihints/AssistUIView;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mAttached:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mFocusable:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->assist_ui:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/AssistUIView;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mRoot:Lcom/google/android/systemui/assist/uihints/AssistUIView;

    invoke-virtual {v0, p2}, Lcom/google/android/systemui/assist/uihints/AssistUIView;->setTouchOutside(Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;)V

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public getParent()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mRoot:Lcom/google/android/systemui/assist/uihints/AssistUIView;

    return-object p0
.end method

.method setAssistState(ZZ)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mAttached:Z

    if-nez v1, :cond_0

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x7e8

    const v8, 0x40328

    const/4 v9, -0x3

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-boolean p2, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mFocusable:Z

    const/16 p2, 0x50

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 p2, 0x40

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string p2, "Assist"

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mRoot:Lcom/google/android/systemui/assist/uihints/AssistUIView;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mAttached:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mAttached:Z

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mRoot:Lcom/google/android/systemui/assist/uihints/AssistUIView;

    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mAttached:Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mFocusable:Z

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mRoot:Lcom/google/android/systemui/assist/uihints/AssistUIView;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean p2, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mFocusable:Z

    :cond_2
    :goto_0
    return-void
.end method
