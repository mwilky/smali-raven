.class public Lcom/google/android/systemui/assist/uihints/AssistUIView;
.super Landroid/widget/FrameLayout;
.source "AssistUIView.java"


# instance fields
.field private mTouchOutside:Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/AssistUIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/assist/uihints/AssistUIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/systemui/assist/uihints/AssistUIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/AssistUIView;->mTouchOutside:Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;->onTouchOutside()V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method setTouchOutside(Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/AssistUIView;->mTouchOutside:Lcom/google/android/systemui/assist/uihints/TouchOutsideHandler;

    return-void
.end method
