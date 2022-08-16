.class public Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;
.super Landroid/widget/PopupWindow;
.source "AccessibilityQuickSettingsTooltipWindow.java"


# instance fields
.field private final mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mCloseDelayTimeMillis:J

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow$1;-><init>(Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getWindowWidthWith(Landroid/widget/TextView;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->getAvailableWindowWidth()I

    move-result p0

    const/high16 v0, -0x80000000

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method private scheduleAutoCloseAction()V
    .locals 4

    iget-wide v0, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mCloseDelayTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mHandler:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;)V

    iget-wide v2, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mCloseDelayTimeMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method getAvailableWindowWidth()I
    .locals 1

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b0075

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    return p0
.end method

.method public setup(Ljava/lang/CharSequence;I)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->setup(Ljava/lang/CharSequence;IJ)V

    return-void
.end method

.method public setup(Ljava/lang/CharSequence;IJ)V
    .locals 1

    iput-wide p3, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mCloseDelayTimeMillis:J

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    iget-object p4, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mContext:Landroid/content/Context;

    const v0, 0x106000d

    invoke-virtual {p4, v0}, Landroid/content/Context;->getColor(I)I

    move-result p4

    invoke-direct {p3, p4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mContext:Landroid/content/Context;

    const-class p4, Landroid/view/LayoutInflater;

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    const p4, 0x7f060038

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p3, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0d04b6

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0d04b5

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p2}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->getWindowWidthWith(Landroid/widget/TextView;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->scheduleAutoCloseAction()V

    return-void
.end method

.method public showAtTopCenter(Landroid/view/View;)V
    .locals 2

    const/16 v0, 0x31

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
