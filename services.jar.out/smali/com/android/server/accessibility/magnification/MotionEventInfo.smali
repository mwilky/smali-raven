.class final Lcom/android/server/accessibility/magnification/MotionEventInfo;
.super Ljava/lang/Object;
.source "MotionEventInfo.java"


# instance fields
.field public mEvent:Landroid/view/MotionEvent;

.field public mPolicyFlags:I

.field public mRawEvent:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    iput p3, p0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mPolicyFlags:I

    return-void
.end method

.method static obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/magnification/MotionEventInfo;
    .locals 3

    new-instance v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;

    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/server/accessibility/magnification/MotionEventInfo;-><init>(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-object v0
.end method

.method private static recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method recycle()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MotionEventInfo;->recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MotionEventInfo;->recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
