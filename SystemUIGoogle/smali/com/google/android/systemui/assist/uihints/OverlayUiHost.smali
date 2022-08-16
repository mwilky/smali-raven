.class public final Lcom/google/android/systemui/assist/uihints/OverlayUiHost;
.super Ljava/lang/Object;
.source "OverlayUiHost.java"


# instance fields
.field public mAttached:Z

.field public mFocusable:Z

.field public mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final mRoot:Lcom/google/android/systemui/assist/uihints/AssistUIView;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mAttached:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mFocusable:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0040

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/AssistUIView;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mRoot:Lcom/google/android/systemui/assist/uihints/AssistUIView;

    iput-object p2, v0, Lcom/google/android/systemui/assist/uihints/AssistUIView;->mTouchOutside:Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method
